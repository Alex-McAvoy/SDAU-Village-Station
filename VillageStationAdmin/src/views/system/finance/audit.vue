<template>
  <div class="app-container">
    <el-table v-loading="loading" :data="financeList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="ID" align="center" prop="newsId" />
      <el-table-column label="标题" align="center" prop="title" />
      <el-table-column label="内容" align="center" prop="content" :formatter="formatterEmployment"/>
      <el-table-column label="备注" align="center" prop="remark" />
      <el-table-column label="一级栏目编码" align="center" prop="firstColumn"/>
      <el-table-column label="二级栏目编码" align="center" prop="secondColumn"/>
      <!-- <el-table-column label="排序" align="center" prop="sort" /> -->
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handlePass(scope.row)"
          >通过</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleRefuse(scope.row)"
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
  </div>
</template>

<script>
import {  delFinance, updateFinance,listFirstColums } from "@/api/system/finance";
import {fixedSize} from '@/utils/fixedSize';

export default {
  name: "Finance",
  data() {
    return {
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
      // 金融表格数据
      financeList: [],
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
        firstColumn: null,
        secondColumn: null,
        sort: null
      },
      // 表单参数
      form: {
        firstColumn:0,//0表示未审核，1表示已经审核
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
    /** 查询金融列表 */
    getList() {
      this.loading = true;
      listFirstColums(this.queryParams).then(response => {
        this.financeList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
     // 表单重置
    reset() {
      this.form = {
        newsId: null,
        title: null,
        content: null,
        delFlag: null,
        createBy: null,
        createTime: null,
        updateBy: null,
        updateTime: null,
        remark: null,
        firstColumn: null,
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
      this.ids = selection.map(item => item.newsId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 通过按钮操作 */
    handlePass(row) {
      row.firstColumn = 1;
    //   console.log(row)
      updateFinance(row).then(response => {
        this.$modal.msgSuccess("修改成功");
        this.open = false;
        this.getList();
      });
    },
    /** 拒绝按钮操作 */
    handleRefuse(row) {
      const newsIds = row.newsId || this.ids;
      this.$modal.confirm('是否确认拒绝编号为"' + newsIds + '"的数据项？').then(function() {
        return delFinance(newsIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("拒绝成功!");
      }).catch(() => {});
    },
    formatterEmployment(str){
      return fixedSize(str.content);
    },
  }
};
</script>
