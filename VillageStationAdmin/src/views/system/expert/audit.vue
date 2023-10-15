<template>
  <div class="app-container">
    <el-table v-loading="loading" :data="expertList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="ID" align="center" prop="askExpertsId" />
      <el-table-column label="专家姓名" align="center" prop="expertName" />
      <el-table-column label="简介" align="center" prop="introduction" :formatter="formatterEmployment"/>
      <el-table-column label="研究方向" align="center" prop="direction" :formatter="formatterEmployment1"/>
      <el-table-column label="研究简介" align="center" prop="researchIntroduction" :formatter="formatterEmployment2"/>
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
            icon="el-icon-more"
            @click="handleDetail(scope.row)"
            v-hasPermi="['system:expert:list:unchecked']"
          >详情</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handlePass(scope.row)"
            v-hasPermi="['system:expert:check']"
          >通过</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleRefuse(scope.row)"
            v-hasPermi="['system:expert:remove']"
          >拒绝</el-button>
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
    <!-- 新增 -->
     <template>
          <el-dialog :title="title" :visible.sync="open" width="1400px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="专家姓名" prop="expertName">
          <el-input v-model="form.expertName" :disabled="formDisabled"/>
        </el-form-item>
        <el-form-item label="简介" prop="introduction">
          <el-input v-model="form.introduction" type="textarea" :disabled="formDisabled" :autosize="{ minRows: 4, maxRows: 10}"/>
        </el-form-item>
        <el-form-item label="研究方向" prop="direction">
          <el-input v-model="form.direction" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="研究简介" prop="researchIntroduction">
          <el-input v-model="form.researchIntroduction" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="专家类型 " prop="dictValue" :formatter="showType">
            <el-input v-model="form.secondColumn" type="textarea" :disabled="formDisabled"/>
        </el-form-item>
        <el-form-item label="备注" prop="remark">
          <el-input v-model="form.remark" type="textarea" :disabled="formDisabled"/>
        </el-form-item>
        <el-form-item label="审核标志" prop="firstColumn">
          <el-input v-model="form.firstColumn" type="textarea" :disabled="formDisabled"/>
        </el-form-item>
        <!-- <el-form-item label="用于绑定专家账号" prop="userId">
          <el-input v-model="form.userId" placeholder="请输入用于绑定专家账号" />
        </el-form-item> -->
      </el-form>
          </el-dialog>
        </template>
  </div>
</template>

<script>
import {delExpert, addExpert, updateExpert,listFirstColums,checkExpert } from "@/api/system/expert";
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
      form: {
        firstColumn:0,
      },
      // 表单校验
      rules: {
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：列表 */
    getList() {
      this.loading = true;
      listFirstColums(this.queryParams).then(response => {
        console.log(response)
        this.expertList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
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
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.newsId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    // /** 通过按钮操作 */
    handlePass(row) {
      row.firstColumn = 1;
      console.log(row)
      checkExpert(row).then(response => {
        this.$modal.msgSuccess("修改成功");
        this.open = false;
        this.getList();
      });
    },
    // 详情按钮操作
    handleDetail(row) {
      console.log(row)
       this.open = true;
       this.form = row;
    },
    /** 提交按钮 */
    submitForm() {
      this.form.remark=0;
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.newsId != null) {
            checkExpert(this.form).then(response => {
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
    /** 拒绝按钮操作 */
    handleRefuse(row) {
      const newsIds = row.newsId || this.ids;
      this.$modal.confirm('是否确认拒绝编号为"' + newsIds + '"的数据项？').then(function() {
        return delExpert(newsIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("拒绝成功!");
      }).catch(() => {});
    },
    formatterEmployment(str){
      console.log(str.introduction)
      return fixedSize(str.introduction);
    },
    formatterEmployment1(str){
      return fixedSize(str.direction);
    },
    formatterEmployment2(str){
      return fixedSize(str.researchIntroduction);
    },
     showType(str){
      console.log(str.dictValue);
      var list=['农学专家','林学专家','园艺专家','动物专家','信息专家','农机专家','植保专家'];
      return list[str.dictValue];
    },
    showType2(str){
      console.log(str.firstColumn);
      var list=['未审核','已审核'];
      return list[str.firstColumn];
    },
  }
};
</script>
