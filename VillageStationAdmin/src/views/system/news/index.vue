<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="140px">
      <el-form-item label="一级栏目编码" prop="firstColumn">
        <el-input
          v-model="queryParams.firstColumn"
          placeholder="请输入一级栏目编码"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="二级栏目编码" prop="secondColumn">
        <el-input
          v-model="queryParams.secondColumn"
          placeholder="请输入二级栏目编码"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="排序" prop="sort">
        <el-input
          v-model="queryParams.sort"
          placeholder="请输入排序"
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
          v-hasPermi="['system:columns:add']"
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
          v-hasPermi="['system:columns:edit']"
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
          v-hasPermi="['system:columns:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['system:columns:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="columnsList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="ID" align="center" prop="newsId" />
      <el-table-column label="标题" align="center" prop="title" />
      <el-table-column label="内容" align="center" prop="content" />
        <template>
          <div v-html="parseHTML(form.content)"></div>
        </template>
      <el-table-column label="备注" align="center" prop="remark" />
      <el-table-column label="一级栏目编码" align="center" prop="firstColumn" />
      <el-table-column label="二级栏目编码" align="center" prop="secondColumn" />
      <el-table-column label="排序" align="center" prop="sort" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['system:columns:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system:columns:remove']"
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

    <!-- 添加或修改其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="1400px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="标题" prop="title">
          <el-input v-model="form.title" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="内容">
          <editor v-model="form.content" :min-height="192"/>
        </el-form-item>
        <!-- <el-form-item label="删除标志" prop="delFlag">
          <el-input v-model="form.delFlag" placeholder="请输入删除标志" />
        </el-form-item> -->
        <el-form-item label="备注" prop="remark">
          <el-input v-model="form.remark" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="一级栏目编码" prop="firstColumn">
          <el-select v-model="form.firstColumn" placeholder="请选择一级栏目编码">
            <el-option label="新闻资讯" value="新闻资讯"></el-option>
            <el-option label="金融资讯" value="金融资讯"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="二级栏目编码" prop="secondColumn" width="1300px">
          <el-select v-model="form.secondColumn" placeholder="请选择二级栏目编码">
            <el-option label="政策法规" value="政策法规"></el-option>
            <el-option label="三农资讯" value="三农资讯"></el-option>
            <el-option label="科技动态" value="科技动态"></el-option>
            <el-option label="典型案例" value="典型案例"></el-option>
            <el-option label="金融助农" value="金融助农"></el-option>
            <el-option label="业务新闻" value="业务新闻"></el-option>
            <el-option label="相关案例" value="相关案例"></el-option>
          </el-select>
        </el-form-item>
        <!-- <el-form-item label="排序" prop="sort">
          <el-input v-model="form.sort" placeholder="请输入排序" />
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
import { listColumns, getColumns, delColumns, addColumns, updateColumns } from "@/api/system/news";

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
        ramark:0,
        firstColumn: null,
        secondColumn: null,
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
        newsId: null,
        title: null,
        content: null,
        delFlag: null,
        createBy: null,
        createTime: null,
        updateBy: null,
        updateTime: null,
        remark: 0,
        firstColumn: null,
        secondColumn: null,
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
      this.ids = selection.map(item => item.newsId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加其它栏目"     
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const newsId = row.newsId || this.ids
      getColumns(newsId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改其它栏目";
      });
    },
    /** 提交按钮 */
    submitForm() {
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
    /** 删除按钮操作 */
    handleDelete(row) {
      const newsIds = row.newsId || this.ids;
      this.$modal.confirm('是否确认删除其它栏目编号为"' + newsIds + '"的数据项？').then(function() {
        return delColumns(newsIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/columns/export', {
        ...this.queryParams
      }, `columns_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
