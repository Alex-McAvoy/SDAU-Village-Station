<template>
  <div class="app-container">
    <el-row :gutter="10" class="mb8">
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>
    <el-table v-loading="loading" :data="columnsList" >
      <el-table-column label="ID" align="center" prop="id" />
      <el-table-column label="驿站ID" align="center" prop="sort" />
      <el-table-column label="内容" align="center" prop="content" :formatter="formatterEmployment"/>
      <!-- <el-table-column label="备注" align="center">
        <template slot-scope="scope">
            <img :src="scope.row.remark" alt="图片" width="70" height="70" />
        </template>
      </el-table-column> -->
      <el-table-column label="审核标志" align="center" prop="audit" :formatter="showType"/>
      <el-table-column label="驿站信息标签" align="center" prop="category" :formatter="showType2"/>
      <!-- <el-table-column label="排序" align="center" prop="sort" /> -->
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-more"
            @click="handleDetail(scope.row)"
            v-hasPermi="['system:station:list:unchecked']"
          >详情</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handlePass(scope.row)"
            v-hasPermi="['system:station:check']"
          >通过</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleRefuse(scope.row)"
            v-hasPermi="['system:station:check']"
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
              <!-- <el-form-item label="标题" prop="title">
                <el-input v-model="form.title" type="textarea" :disabled="formDisabled" />
              </el-form-item> -->
              <!-- <el-form-item label="驿站信息类型" prop="category">
                <div>
                {{showType2(form)}}
              </div>
              </el-form-item> -->
              <!-- <el-form-item label="封面" prop="remark">
                <div style="width: 100%;display: flex;flex-direction: row;justify-content: center;">
                  <el-image :src="form.remark" style="max-width:50vw;max-height: 50vh;"></el-image>
                </div>
              </el-form-item> -->
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
import { listColumnsRemark, updateColumns, addColumns, checkStation } from "@/api/stationIntroduction/index";
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
    // /** 通过按钮操作 */
    handlePass(row) {
      row.audit = 1;
      row.content = row.content.replace(/</g, "&lt;");
      row.content = row.content.replace(/>/g, "&gt;");
      checkStation(row).then(response => {
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
    /** 提交按钮 */
    submitForm() {
      this.form.audit=0;
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            checkStation(this.form).then(response => {
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
        row.audit = 2
        row.content = row.content.replace(/</g, "&lt;");
        row.content = row.content.replace(/>/g, "&gt;");
        return checkStation(row);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("拒绝成功!");
      }).catch(() => {});
    },
    formatterEmployment(str){
      return fixedSize(str.content);
    },
    showType(str){
      var list=['未审核','已审核'];
      return list[str.audit];
    },
    showType2(str){
      var list = ['水稻', '小麦', '蔬菜', '果树', '植保', '家禽', '家畜', '水产', '花木', '蚕桑', '土肥', '农机']
      let category_value = str.category.split(',')
      var res = ''
      for(var i of category_value){
        res += list[i] + ','
      }
      return res.substring(0, res.lastIndexOf(','));
    },
  }
};
</script>
