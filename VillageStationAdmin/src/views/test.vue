<template>
  <el-upload
    ref="upload"
    :limit="1"
    accept=".jpg, .png"
    :action="upload.url"
    :headers="upload.headers"
    :file-list="upload.fileList"
    :on-progress="handleFileUploadProgress"
    :on-success="handleFileSuccess"
    :auto-upload="false"
  >
    <el-button slot="trigger" size="small" type="primary">选取文件</el-button>
    <el-button
      style="margin-left: 10px"
      size="small"
      type="success"
      :loading="upload.isUploading"
      @click="submitUpload"
      >上传到服务器</el-button
    >
    <div slot="tip" class="el-upload__tip">
      只能上传jpg/png文件，且不超过500kb
    </div>
    <br>
    <img :src="form.filePath" alt="" style="width:150px"/>
    {{ "图片地址"+ form.filePath }}
  </el-upload>
</template>

<script>
import { getToken } from "@/utils/auth";
export default {
  data() {
    return {
      // 上传参数
      upload: {
        // 是否禁用上传
        isUploading: false,
        // 设置上传的请求头部
        headers: { Authorization: "Bearer " + getToken() },
        // 上传的地址
        url: process.env.VUE_APP_BASE_API + "/common/upload",
        // 上传的文件列表
        fileList: [],
      },form:{
        filePath:""
      }
    };
  },
  methods: {
    handleAdd() {
      this.upload.fileList = [];
    },

    handeUpdate(row) {
      this.upload.fileList = [
        { name: this.form.fileName, url: this.form.filePath },
      ];
    },
    // 文件提交处理
    submitUpload() {
      this.$refs.upload.submit();
    },
    // 文件上传中处理
    handleFileUploadProgress(event, file, fileList) {
      this.upload.isUploading = true;
    },
    // 文件上传成功处理
    handleFileSuccess(response, file, fileList) {
      this.upload.isUploading = false;
      this.form.filePath = response.url; 
    },
  },
};
</script>

<style></style>
