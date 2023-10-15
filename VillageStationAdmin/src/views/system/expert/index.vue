<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="专家姓名" prop="expertName">
        <el-input
          v-model="queryParams.expertName"
          placeholder="请输入专家姓名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="专家类型 " prop="dictValue">
        <el-input
          v-model="queryParams.dictValue"
          placeholder="请输入专家类型 "
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="用于绑定专家账号" prop="userId">
        <el-input
          v-model="queryParams.userId"
          placeholder="请输入用于绑定专家账号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['system:expert:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['system:expert:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['system:expert:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['system:expert:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="expertList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="ID" align="center" prop="askExpertsId" />
      <el-table-column label="专家姓名" align="center" prop="expertName" />
      <el-table-column label="简介" align="center" prop="introduction" :formatter="formatterEmployment"/>
      <el-table-column label="研究方向" align="center" prop="direction" :formatter="formatterEmployment1" />
      <el-table-column label="研究简介" align="center" prop="researchIntroduction" :formatter="formatterEmployment2" />
      <el-table-column label="专家类型 " align="center" prop="dictValue" :formatter="showType"/>
      <el-table-column label="备注" align="center">
        <template slot-scope="scope">
            <img :src="scope.row.remark" alt="图片" width="70" height="70" />
        </template>
      </el-table-column>
      <el-table-column label="审核标志" align="center" prop="firstColumn" :formatter="showType2"/>
      <!-- <el-table-column label="用于绑定专家账号" align="center" prop="userId" /> -->
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['system:expert:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system:expert:remove']"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>
    
    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改问专家对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="1400px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="专家姓名" prop="expertName">
          <el-input v-model="form.expertName" placeholder="请输入专家姓名" />
        </el-form-item>
        <el-form-item label="简介" prop="introduction">
          <el-input v-model="form.introduction" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="研究方向" prop="direction">
          <el-input v-model="form.direction" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="研究简介" prop="researchIntroduction">
          <el-input v-model="form.researchIntroduction" type="textarea" placeholder="请输入内容" :autosize="{ minRows: 4, maxRows: 16}"/>
        </el-form-item>
        <el-form-item label="专家类型 " prop="dictValue">
          <el-select v-model="form.secondColumn" placeholder="请选择专家类型">
            <el-option label="农学专家" value="0"></el-option>
            <el-option label="林学专家" value="1"></el-option>
            <el-option label="园艺专家" value="2"></el-option>
            <el-option label="动物专家" value="3"></el-option>
            <el-option label="信息专家" value="4"></el-option>
            <el-option label="农机专家" value="5"></el-option>
            <el-option label="植保专家" value="6"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="备注" prop="remark">
          <el-input v-model="form.remark" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="审核标志" prop="firstColumn">
          <el-input v-model="form.firstColumn" type="textarea" placeholder="请输入内容" :disabled="formDisabled"/>
        </el-form-item>
        <!-- <el-form-item label="用于绑定专家账号" prop="userId">
          <el-input v-model="form.userId" placeholder="请输入用于绑定专家账号" />
        </el-form-item> -->
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listExpert, getExpert, delExpert, addExpert, updateExpert } from "@/api/system/expert";
import {fixedSize} from '@/utils/fixedSize';

export default {
  name: "Expert",
  data() {
    return {
       formDisabled: true, // 控制表单项的禁用状态，默认为 true 禁用
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 问专家表格数据
      expertList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        expertName: null,
        introduction: null,
        direction:null,
        researchIntroduction:null,
        dictValue: null,
        userId: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询问专家列表 */
    getList() {
      this.loading = true;
      listExpert(this.queryParams).then(response => {
        console.log(response)
        this.expertList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        askExpertsId: null,
        expertName: null,
        introduction: null,
        direction:null,
        researchIntroduction:null,
        dictValue: null,
        delFlag: null,
        createBy: null,
        createTime: null,
        updateBy: null,
        updateTime: null,
        remark: null,
        firstColumn:0,
        userId: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.askExpertsId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加问专家";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const askExpertsId = row.askExpertsId || this.ids
      getExpert(askExpertsId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改问专家";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.askExpertsId != null) {
            updateExpert(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addExpert(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const askExpertsIds = row.askExpertsId || this.ids;
      this.$modal.confirm('是否确认删除问专家编号为"' + askExpertsIds + '"的数据项？').then(function() {
        return delExpert(askExpertsIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/expert/export', {
        ...this.queryParams
      }, `expert_${new Date().getTime()}.xlsx`)
    },
    formatterEmployment(str){
      return fixedSize(str.introduction);
    },
    formatterEmployment1(str){
      return fixedSize(str.direction);
    },
    formatterEmployment2(str){
      return fixedSize(str.researchIntroduction);
    },
    showType(str){
      var list=['农学专家','林学专家','园艺专家','动物专家','信息专家','农机专家','植保专家'];
      return list[str.dictValue];
    },
    showType2(str){
      var list=['未审核','已审核'];
      return list[str.firstColumn];
    },
  }
};
</script>
