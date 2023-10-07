<template>
  <div class="app-container">
    <el-table v-loading="loading" :data="columnsList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="ID" align="center" prop="newsId" />
      <el-table-column label="标题" align="center" prop="title" />
      <el-table-column label="内容" align="center" prop="content" />
      <!-- <el-table-column label="备注" align="center" prop="remark" /> -->
      <el-table-column label="一级栏目编码" align="center" prop="firstColumn" />
      <el-table-column label="二级栏目编码" align="center" prop="secondColumn" />
      <el-table-column label="排序" align="center" prop="sort" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handlePass(scope.row)"
            v-hasPermi="['system:columns:edit']"
          >通过</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleRefuse(scope.row)"
            v-hasPermi="['system:columns:remove']"
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
import { listColumnsRemark, getColumns, delColumns, addColumns, updateColumns } from "@/api/system/news";

export default {
  name: "Columns",
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
      // 其它栏目
      //  一级栏目              二级栏目 （在字典中设置）
      //    学农技：            水稻、小麦..
      //    买农资：           节肥增效、虫害防治..
      //    找渠道：           供应、求购..
      //    推优品：           我的优品、品牌展示..
      //    新品种：
      //    培训：              园艺培训、粮食种植..
      //    热销农产：表格数据
      columnsList: [],
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
        remark:0,//0表示未审核，1表示已经审核
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
      listColumnsRemark(this.queryParams).then(response => {
        this.columnsList = response.rows;
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
      row.remark = 1;
      console.log(row)
      updateColumns(row).then(response => {
        this.$modal.msgSuccess("修改成功");
        this.open = false;
        this.getList();
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.form.remark=0;
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.newsId != null) {
            updateColumns(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addColumns(this.form).then(response => {
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
      this.$modal.confirm('是否确认拒绝其它栏目  热销农产：编号为"' + newsIds + '"的数据项？').then(function() {
        return delColumns(newsIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("拒绝成功!");
      }).catch(() => {});
    },
  }
};
</script>
