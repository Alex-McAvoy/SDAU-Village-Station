<template>
  <div class="app-container">
    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['system:news:add']"
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
          v-hasPermi="['system:news:edit']"
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
          v-hasPermi="['system:news:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['system:news:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="columnsList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="ID" align="center" prop="id" />
      <el-table-column label="标题" align="center" prop="title" />
      <el-table-column label="内容" align="center" prop="content" :formatter="formatterEmployment"/>
        <template>
          <div v-html="parseHTML(form.content)"></div>
        </template>
      <el-table-column label="封面图" align="center">
        <template slot-scope="scope">
            <img :src="scope.row.remark" alt="图片" width="70" height="70" />
        </template>
      </el-table-column>
      <el-table-column label="审核标志" align="center" prop="audit" :formatter="showType"/>
      <el-table-column label="新闻类型" align="center" prop="category" :formatter="showType2"/>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['system:news:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system:news:remove']"
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
  </div>
</template>

<script>
import { listColumns, getColumns, delColumns, addColumns, updateColumns } from "@/api/news/index";
import {fixedSize} from '@/utils/fixedSize';

export default {
  name: "Columns",
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
        ramark:null,
        audit: null,
        category: null,
        sort: null
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
    /** 查询其它栏目
         热销农产：列表 */
    getList() {
      this.loading = true;
      listColumns(this.queryParams).then(response => {
        this.columnsList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    parseHTML(html) {
      const parser = new DOMParser();
      const doc = parser.parseFromString(html, 'text/html');
      return doc.body.innerHTML;
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
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
        audit: 0,
        category: null,
        sort: null
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
      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.$router.push('/addNews')
    },
    /** 修改按钮操作 */
    handleUpdate(row) { 
      const id = row.id || this.ids
      getColumns(id).then(response => {  
        localStorage.setItem("editNews",JSON.stringify(response.data))
        this.$router.push('/edit/editNews')
      });
    },
    
    /** 删除按钮操作 */
    handleDelete(row) {

      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认删除其它栏目编号为"' + ids + '"的数据项？').then(function() {
        return delColumns(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/news/export', {
        ...this.queryParams
      }, `information_${new Date().getTime()}.xlsx`)
    },
    formatterEmployment(str){
      return fixedSize(str.content);
    },
    showType(str){
      var list=['未审核','已审核','审核不通过'];
      return list[str.audit];
    },
    showType2(str){
      var list=['政策法规','三农资讯','科技动态','典型案例','金融助农','业务新闻','相关案例'];
      return list[str.category];
    },
  }
};
</script>
