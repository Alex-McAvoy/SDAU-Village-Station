<template>
  <div class="app-container">
    <el-row :gutter="10" class="mb8">
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>
    
    <el-table v-loading="loading" :data="trainingList" @selection-change="handleSelectionChange">
      <el-table-column label="ID" align="center" prop="id" />
      <el-table-column label="标题" align="center" prop="title" />
      <el-table-column label="内容" align="center" prop="content" :formatter="formatterEmployment"/>
      <el-table-column label="封面" align="center">
        <template slot-scope="scope">
            <img :src="scope.row.remark" alt="图片" width="70" height="70" />
        </template>
      </el-table-column>
      <el-table-column label="审核标志" align="center" prop="audit" :formatter="showType2"/>
      <!-- <el-table-column label="二级栏目编码" align="center" prop="secondColumn"/>
      <el-table-column label="排序" align="center" prop="sort" /> -->
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-more"
            @click="handleDetail(scope.row)"
            v-hasPermi="['system:training:list:unchecked']"
          >详情</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handlePass(scope.row)"
            v-hasPermi="['system:training:check']"
          >通过</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleRefuse(scope.row)"
            v-hasPermi="['system:training:check']"
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
      <template>
          <el-dialog :title="title" :visible.sync="open" width="1400px" append-to-body>
            <el-form ref="form" :model="form" :rules="rules" label-width="80px">
              <el-form-item label="标题" prop="title">
                <el-input v-model="form.title" type="textarea" :disabled="formDisabled" />
              </el-form-item>
              <el-form-item label="封面" prop="remark">
                <div style="width: 100%;display: flex;flex-direction: row;justify-content: center;">
                  <el-image :src="form.remark" style="max-width:50vw;max-height: 50vh;"></el-image>
                </div>
              </el-form-item>
              <el-form-item label="内容" >
                <div v-html="form.content">
                </div>
              </el-form-item>
            </el-form> 
          </el-dialog>
        </template>
  </div>
</template>

<script>
import { updateTraining,checkTraining,trainingFirstColums } from "@/api/offlineTraining/index";
import {fixedSize} from '@/utils/fixedSize';

export default {
  name: "Training",
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
      // 培训信息表格数据
      trainingList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        title: null,
        content: null,
        audit: null,
        secondColumn: null,
        sort: null
      },
      // 表单参数
      form: {
        audit:0,//0表示未审核，1表示已经审核
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
   /** 查询线下培训列表 */
    getList() {
      this.loading = true;
      trainingFirstColums(this.queryParams).then(response => {
        this.trainingList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
     // 表单重置
    reset() {
      this.form = {
        id: null,
        title: null,
        content: null,
        delFlag: null,
        createBy: null,
        createTime: null,
        updateBy: null,
        updateTime: null,
        remark: null,
        audit: null,
        secondColumn: null,
        sort: null
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
      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 通过按钮操作 */
    handlePass(row) {
      row.audit = 1;
      row.content = row.content.replace(/</g, "&lt;");
      row.content = row.content.replace(/>/g, "&gt;");
      checkTraining(row).then(response => {
        this.$modal.msgSuccess("修改成功");
        this.open = false;
        this.getList();
      });
    },
     // 详情按钮操作
    handleDetail(row) {
       this.open = true;
       this.form = row;
    },
    /** 拒绝按钮操作 */
    handleRefuse(row) {
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认拒绝编号为"' + ids + '"的数据项？').then(function() {
        row.audit = 2
        row.content = row.content.replace(/</g, "&lt;");
        row.content = row.content.replace(/>/g, "&gt;");
        return checkTraining(row);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("拒绝成功!");
      }).catch(() => {});
    },
    formatterEmployment(str){
      return fixedSize(str.content);
    },
    showType2(str){
      var list=['未审核','已审核', '审核不通过'];
      return list[str.audit];
    },
  }
};
</script>
