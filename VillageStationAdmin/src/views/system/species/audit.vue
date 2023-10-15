<template>
  <div class="app-container">
    <el-table v-loading="loading" :data="speciesList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="ID" align="center" prop="newsId" />
      <el-table-column label="标题" align="center" prop="title" />
      <el-table-column label="内容" align="center" prop="content" :formatter="formatterEmployment"/>
      <el-table-column label="备注" align="center">
        <template slot-scope="scope">
            <img :src="scope.row.remark.split(';')" alt="图片" width="70" height="70" />
        </template>
      </el-table-column>
      <el-table-column label="审核标志" align="center" prop="firstColumn" :formatter="showType2"/>
      <!-- <el-table-column label="栏目" align="center" prop="secondColumn" :formatter="showType"/> -->
      <!-- <el-table-column label="排序" align="center" prop="sort" /> -->
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
        <el-button
            size="mini"
            type="text"
            icon="el-icon-more"
            @click="handleDetail(scope.row)"
            v-hasPermi="['system:species:list:unchecked']"
        >详情</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handlePass(scope.row)"
            v-hasPermi="['system:species:check']"
          >通过</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleRefuse(scope.row)"
            v-hasPermi="['system:species:remove']"
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
            <el-form-item label="内容" >
              <el-input  v-model="form.content" :min-height="192" :disabled="formDisabled"  type="textarea"  :autosize="{ minRows: 4, maxRows: 10}"/>
            </el-form-item>
            <!-- <el-form-item label="删除标志" prop="delFlag">
              <el-input v-model="form.delFlag" placeholder="请输入删除标志" :disabled="formDisabled" />
            </el-form-item> -->
            <el-form-item label="备注" prop="remark">
              <el-input v-model="form.remark" type="textarea" :disabled="formDisabled" />
            </el-form-item>
            <!-- <el-form-item label="二级栏目编码" prop="secondColumn">
              <el-input v-model="form.secondColumn" type="textarea" :disabled="formDisabled" />
            </el-form-item> -->
            <!-- <el-form-item label="排序" prop="sort">
              <el-input v-model="form.sort" placeholder="请输入排序" :disabled="formDisabled" />
            </el-form-item> -->
          </el-form>
        </el-dialog>
      </template>
  </div>
</template>

<script>
import { checkSpecies,listFirstColums, delSpecies, addSpecies, updateSpecies } from "@/api/system/species";
import {fixedSize} from '@/utils/fixedSize';

export default {
  name: "Species",
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
      // 新品种表格数据
      speciesList: [],
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
    /** 查询优品列表 */
    getList() {
      this.loading = true;
      listFirstColums().then(response => {
        console.log(response)
        this.speciesList = response.rows;
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
      checkSpecies(row).then(response => {
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
    /** 拒绝按钮操作 */
    handleRefuse(row) {
      const newsIds = row.newsId || this.ids;
      this.$modal.confirm('是否确认拒绝编号为"' + newsIds + '"的数据项？').then(function() {
        return delSpecies(newsIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("拒绝成功!");
      }).catch(() => {});
    },
    formatterEmployment(str){
      return fixedSize(str.content);
    },
    showType2(str){
      console.log(str.firstColumn);
      var list=['未审核','已审核'];
      return list[str.firstColumn];
    },
  }
};
</script>
