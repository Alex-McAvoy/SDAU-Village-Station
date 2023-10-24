<template>
  <div class="app-container">
    <el-table v-loading="loading" :data="columnsList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="ID" align="center" prop="id" />
      <el-table-column label="标题" align="center" prop="title" />
      <el-table-column label="内容" align="center" prop="content" :formatter="formatterEmployment"/>
      <el-table-column label="备注" align="center">
        <template slot-scope="scope">
            <img :src="scope.row.remark" alt="图片" width="70" height="70" />
        </template>
      </el-table-column>
      <el-table-column label="审核标志" align="center" prop="audit" :formatter="showType"/>
      <el-table-column label="新闻类型" align="center" prop="category" :formatter="showType2"/>
      <!-- <el-table-column label="排序" align="center" prop="sort" /> -->
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-more"
            @click="handleDetail(scope.row)"
            v-hasPermi="['system:news:list:unchecked']"
          >详情</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handlePass(scope.row)"
            v-hasPermi="['system:news:check']"
          >通过</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleRefuse(scope.row)"
            v-hasPermi="['system:news:remove']"
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
              <el-form-item label="新闻类型" prop="category">
                <el-input v-model="form.category" type="textarea" :disabled="formDisabled" />
              </el-form-item>
              <!-- <el-form-item label="排序" prop="sort">
                <el-input v-model="form.sort" placeholder="请输入排序" :disabled="formDisabled" />
              </el-form-item> -->
            </el-form>
            <!-- <div slot="footer" class="dialog-footer">
              <el-button type="primary" @click="submitForm" :disabled="formDisabled">确 定</el-button>
              <el-button @click="cancel" :disabled="formDisabled">取 消</el-button>
            </div> -->
          </el-dialog>
        </template>
  </div>
</template>

<script>
import { listColumnsRemark, delColumns, addColumns, checkNews } from "@/api/news/index";
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
        audit: null,
        category: null,
        sort: null
      },
      // 表单参数
      form: {
        id: '',
        title: '',
        content: '',
        audit: 0,//0表示未审核，1表示已经审核
        category: '',
        remark:'',
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
        category: null,
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
    // /** 通过按钮操作 */
    handlePass(row) {
      row.audit = 1;
      console.log(row)
      checkNews(row).then(response => {
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
      this.form.audit=0;
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            checkNews(this.form).then(response => {
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
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认拒绝编号为"' + ids + '"的数据项？').then(function() {
        return delColumns(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("拒绝成功!");
      }).catch(() => {});
    },
    formatterEmployment(str){
      console.log(str.content)
      return fixedSize(str.content);
    },
    showType(str){
      var list=['未审核','已审核'];
      return list[str.audit];
    },
    showType2(str){
      var list=['政策法规','三农资讯','科技动态','典型案例','金融助农','业务新闻','相关案例'];
      return list[str.category];
    },
  }
};
</script>
