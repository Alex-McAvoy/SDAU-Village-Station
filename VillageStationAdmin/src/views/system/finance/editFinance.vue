<template>
  <div>
    <!-- 标题-->
    <div class="inputItem" style="display:grid;grid-template-columns: auto 3fr 1fr  ;margin:10px 50px 5px 5px ">
      <el-button style="background: #fff;border:0px;width: 100px;"><span style="color:red">* </span>标题</el-button>
      <el-input style="grid-column:2/3;margin-right: 100px;" v-model="form.title" placeholder="请输入内容"
        label="标题"></el-input>
      <el-button type="primary" style="grid-column: 3/4;border:0px;border-radius: 3px;margin-left: 30px;"
        icon="el-icon-upload2" @click="submit">修改</el-button>
    </div>
    <!-- 类别 -->
    <div class="inputItem" style="display:flex;margin:5px 50px 5px 5px; ">
      <el-button style="background: #fff;border:0px;width:100px"><span style="color:red">* </span>金融类型</el-button>
      <el-select v-model="form.category" placeholder="请选择金融类型">
        <el-option label="金融助农" value="0"></el-option>
        <el-option label="业务新闻" value="1"></el-option>
        <el-option label="相关案例" value="2"></el-option>
      </el-select>
    </div>
    <!-- 推荐标签 -->
    <div class="inputItem" style="display:flex;margin:5px 50px 5px 5px; ">
      <el-button style="background: #fff;border:0px;width:100px"><span style="color:red">* </span>标签</el-button>
      <el-select v-model="form.sort"multiple value-key="value" placeholder="请选择标签" required>
            <el-option label="水稻" value="0"></el-option>
            <el-option label="小麦" value="1"></el-option>
            <el-option label="蔬菜" value="2"></el-option>
            <el-option label="果树" value="3"></el-option>
            <el-option label="植保" value="4"></el-option>
            <el-option label="家禽" value="5"></el-option>
            <el-option label="家畜" value="6"></el-option>
            <el-option label="水产" value="7"></el-option>
            <el-option label="花木" value="8"></el-option>
            <el-option label="蚕桑" value="9"></el-option>
            <el-option label="土肥" value="10"></el-option>
            <el-option label="农机" value="11"></el-option>
      </el-select>
    </div>

    <!-- 图片 -->
    <div class="inputItem" style="display:flex;margin:5px 50px 5px 5px; ">
      <el-button style="background: #fff;border:0px;width:100px">封面图片</el-button>
      <el-upload ref="upload" :limit="1" accept=".png,.jpg" :action="uploadImg.url" :file-list="uploadImg.fileList"
        list-type="picture-card" :on-progress="handleUploadProgress" :on-success="handleImgSuccess"
        :headers="uploadImg.headers">
        <i class="el-icon-plus"></i>
      </el-upload>
    </div>


    <!-- 编辑器 -->
    <el-upload :action="uploadUrl" :before-upload="handleBeforeUpload" :on-success="handleUploadSuccess"
      :on-error="handleUploadError" name="file" :show-file-list="false" :headers="headers" style="display: none"
      ref="upload" v-if="this.type == 'url'">
    </el-upload>
    <div style="margin:15px 10px">
      <div class="editor" ref="editor" :style="styles"></div>
    </div>



  </div>
</template>
  
<script>
import Quill from "quill";
import "quill/dist/quill.core.css";
import "quill/dist/quill.snow.css";
import "quill/dist/quill.bubble.css";
import { getToken } from "@/utils/auth";
import { addFinance, updateFinance } from "@/api/finance/index";

export default {
  name: "Editor",
  props: {
    /* 编辑器的内容 */
    value: {
      type: String,
      default: "",
    },
    /* 高度 */
    height: {
      type: Number,
      default: 600,
    },
    /* 最小高度 */
    minHeight: {
      type: Number,
      default: 450,
    },// 只读 readOnly: {type: Boolean,default: false,},
    // 上传文件大小限制(MB)
    fileSize: {
      type: Number,
      default: 1,
    },
    /* 类型（base64格式、url格式） */
    type: {
      type: String,
      default: "url",
    },
  },
  data() {
    return {
      form: {
        firstColumn: 0,
        category: 0,
        remark: '',
        title: ''
      },
      uploadUrl: process.env.VUE_APP_BASE_API + "/uploadImg/新闻/1", // 上传的图片服务器地址
      uploadVideo: {
        isUploading: false
      },
      headers: {
        Authorization: "Bearer " + getToken()
      },
      Quill: null,
      currentValue: "",
      options: {
        theme: "snow",
        bounds: document.body,
        debug: "warn",
        modules: {
          // 工具栏配置
          toolbar: [
            ["bold", "italic", "underline", "strike"],       // 加粗 斜体 下划线 删除线
            ["blockquote", "code-block"],                    // 引用  代码块
            [{ list: "ordered" }, { list: "bullet" }],       // 有序、无序列表
            [{ indent: "-1" }, { indent: "+1" }],            // 缩进
            [{ size: ["small", false, "large", "huge"] }],   // 字体大小
            [{ header: [1, 2, 3, 4, 5, 6, false] }],         // 标题
            [{ color: [] }, { background: [] }],             // 字体颜色、字体背景颜色
            [{ align: [] }],                                 // 对齐方式
            ["clean"],                                       // 清除文本格式
            ["link", "image", "video"]                       // 链接、图片、视频
          ],
        },
        placeholder: "请输入内容",
        readOnly: this.readOnly,
      }, uploadImg: {
        // 是否禁用上传
        isUploading: false,
        // 设置上传的请求头部
        headers: { Authorization: "Bearer " + getToken() },
        // 上传的地址
        url: process.env.VUE_APP_BASE_API + "/uploadImg/新闻/1",
        // 上传的文件列表
        fileList: []
      },
    };
  }, created() {
   
    this.form = JSON.parse(localStorage.getItem("editFinance"))
    if (this.form.sort != undefined && this.form.sort != "" && this.form.sort != null) {
        this.form.sort = this.form.sort.split(",")
    }
    this.uploadImg.fileList[0] = {
      name: 'test.jpeg',
      url: this.form.remark
    }
    this.currentValue = this.form.content
  },
  computed: {
    styles() {
      let style = {};
      if (this.minHeight) {
        style.minHeight = `${this.minHeight}px`;
      }
      if (this.height) {
        style.height = `600px`;
      }
      return style;
    },
  },
  watch: {
    value: {
      handler(val) {
        if (val !== this.currentValue) {
          this.currentValue = val === null ? "" : val;
          if (this.Quill) {
            this.Quill.pasteHTML(this.currentValue);
          }
        }
      },
      immediate: true,
    },
  },
  mounted() {
    this.init();
  },
  beforeDestroy() {
    this.Quill = null;
  },
  methods: {
    //图片相关
    // 文件上传中处理
    handleUploadProgress(event, file, fileList) {
      this.uploadVideo.isUploading = true;
    },
    handleImgSuccess(response, file, fileList) {//图片
      this.uploadImg.isUploading = false;
      this.form.remark = response.url;
    },
    init() {
      const editor = this.$refs.editor;
      this.Quill = new Quill(editor, this.options);
      // 如果设置了上传地址则自定义图片上传事件
      if (this.type == 'url') {
        let toolbar = this.Quill.getModule("toolbar");
        toolbar.addHandler("image", (value) => {
          this.uploadType = "image";
          if (value) {
            this.$refs.upload.$children[0].$refs.input.click();
          } else {
            this.quill.format("image", false);
          }
        });
      }
      this.Quill.pasteHTML(this.currentValue);
      this.Quill.on("text-change", (delta, oldDelta, source) => {
        const html = this.$refs.editor.children[0].innerHTML;
        const text = this.Quill.getText();
        const quill = this.Quill;
        this.currentValue = html;
        this.$emit("input", html);
        this.$emit("on-change", { html, text, quill });
      });
      this.Quill.on("text-change", (delta, oldDelta, source) => {
        this.$emit("on-text-change", delta, oldDelta, source);
      });
      this.Quill.on("selection-change", (range, oldRange, source) => {
        this.$emit("on-selection-change", range, oldRange, source);
      });
      this.Quill.on("editor-change", (eventName, ...args) => {
        this.$emit("on-editor-change", eventName, ...args);
      });
    },
    // 上传前校检格式和大小
    handleBeforeUpload(file) {
      // 校检文件大小
      if (this.fileSize) {
        const isLt = file.size / 1024 / 1024 < this.fileSize;
        if (!isLt) {
          this.$message.error(`上传文件大小不能超过 ${this.fileSize} MB!`);
          return false;
        }
      }
      return true;
    },
    handleUploadSuccess(res, file) {
      // 获取富文本组件实例
      let quill = this.Quill;
      // 如果上传成功
      if (res.code == 200) {
        // 获取光标所在位置
        let length = quill.getSelection().index;
        // 插入图片  res.url为服务器返回的图片地址
        quill.insertEmbed(length, "image", res.url);
        // 调整光标到最后
        quill.setSelection(length + 1);
      } else {
        this.$message.error("图片插入失败");
      }
    },
    handleUploadError() {
      this.$message.error("图片插入失败");
    }, submit() {
      if (this.form.title == undefined|| this.form.title == ""|| this.form.title == null) {
        this.$message.error("请输入金融标题");
        return
      } else if (this.form.category == undefined|| this.form.category == ""|| this.form.category == null) {
        this.$message.error("请选择金融类型");
        return
      } else if (this.form.sort == undefined|| this.form.sort == ""|| this.form.sort == null) {
        this.$message.error("请选择金融标签");
        return
      }
      this.form.sort = this.form.sort.join(",")
      this.form.content = this.currentValue;
      this.form.content = this.form.content.replace(/</g, "&lt;");
      this.form.content = this.form.content.replace(/>/g, "&gt;");
      this.form.audit = 0
      updateFinance(this.form).then(response => {
        this.$modal.msgSuccess("修改成功");
        this.open = false;
        this.$router.push('/information/submit/finance');
      });
    }
  },
};
</script>
  
<style>
.editor,
.ql-toolbar {
  white-space: pre-wrap !important;
  line-height: normal !important;
}

.quill-img {
  display: none;
}

.ql-snow .ql-tooltip[data-mode="link"]::before {
  content: "请输入链接地址:";
}

.ql-snow .ql-tooltip.ql-editing a.ql-action::after {
  border-right: 0px;
  content: "保存";
  padding-right: 0px;
}

.ql-snow .ql-tooltip[data-mode="video"]::before {
  content: "请输入视频地址:";
}

.ql-snow .ql-picker.ql-size .ql-picker-label::before,
.ql-snow .ql-picker.ql-size .ql-picker-item::before {
  content: "14px";
}

.ql-snow .ql-picker.ql-size .ql-picker-label[data-value="small"]::before,
.ql-snow .ql-picker.ql-size .ql-picker-item[data-value="small"]::before {
  content: "10px";
}

.ql-snow .ql-picker.ql-size .ql-picker-label[data-value="large"]::before,
.ql-snow .ql-picker.ql-size .ql-picker-item[data-value="large"]::before {
  content: "18px";
}

.ql-snow .ql-picker.ql-size .ql-picker-label[data-value="huge"]::before,
.ql-snow .ql-picker.ql-size .ql-picker-item[data-value="huge"]::before {
  content: "32px";
}

.ql-snow .ql-picker.ql-header .ql-picker-label::before,
.ql-snow .ql-picker.ql-header .ql-picker-item::before {
  content: "文本";
}

.ql-snow .ql-picker.ql-header .ql-picker-label[data-value="1"]::before,
.ql-snow .ql-picker.ql-header .ql-picker-item[data-value="1"]::before {
  content: "标题1";
}

.ql-snow .ql-picker.ql-header .ql-picker-label[data-value="2"]::before,
.ql-snow .ql-picker.ql-header .ql-picker-item[data-value="2"]::before {
  content: "标题2";
}

.ql-snow .ql-picker.ql-header .ql-picker-label[data-value="3"]::before,
.ql-snow .ql-picker.ql-header .ql-picker-item[data-value="3"]::before {
  content: "标题3";
}

.ql-snow .ql-picker.ql-header .ql-picker-label[data-value="4"]::before,
.ql-snow .ql-picker.ql-header .ql-picker-item[data-value="4"]::before {
  content: "标题4";
}

.ql-snow .ql-picker.ql-header .ql-picker-label[data-value="5"]::before,
.ql-snow .ql-picker.ql-header .ql-picker-item[data-value="5"]::before {
  content: "标题5";
}

.ql-snow .ql-picker.ql-header .ql-picker-label[data-value="6"]::before,
.ql-snow .ql-picker.ql-header .ql-picker-item[data-value="6"]::before {
  content: "标题6";
}

.ql-snow .ql-picker.ql-font .ql-picker-label::before,
.ql-snow .ql-picker.ql-font .ql-picker-item::before {
  content: "标准字体";
}

.ql-snow .ql-picker.ql-font .ql-picker-label[data-value="serif"]::before,
.ql-snow .ql-picker.ql-font .ql-picker-item[data-value="serif"]::before {
  content: "衬线字体";
}

.ql-snow .ql-picker.ql-font .ql-picker-label[data-value="monospace"]::before,
.ql-snow .ql-picker.ql-font .ql-picker-item[data-value="monospace"]::before {
  content: "等宽字体";
}
</style>
  