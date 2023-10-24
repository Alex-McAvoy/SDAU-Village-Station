<template>
  <div id="app">
    <!-- 顶部栏图标 -->
    <div class="header flex-col" style="background-color: #5A8B5B;padding-left:10px;height:8vh">
      <img src="@/assets/sdau.png" class="img" style="width:50vw;height:auto"/>
    </div>
    <!-- 顶部图片 -->
    <div class="top_img"></div>
    <!-- 图片文字 -->
    <div class="content_container">
      <p class="content_title">乡村振兴驿站APP</p>
      <p class="content_content" style="text-indent: 2em; text-align: justify;">
        为认真学习贯彻习近平新时代中国特色社会主义思想，全面贯彻落实党的二十大精神，服务全面推进乡村振兴和加快建设农业强国，推进一流农业大学建设，引领全校师生在乡村一线的火热实践中进“万家门”、行“万里路”、解“万家事”。
      </p>
    </div>

    <!-- 内容 -->
    <div class="flex-row main">
      <div>
        <img class="main_img" src="@/assets/phone.png" alt="" ref="elementA" />
      </div>
      <div class="description flex-col" style="margin-top:20px;margin-bottom: 25px;">
        <p class="description_content" style="text-indent: 1em; text-align: justify;">
          乡村振兴驿站APP是配合乡村驿站管理服务的一款的线上服务系统，APP为每个乡村振兴驿站提供了个性化信息服务空间，立足于新型经营主体、村办企业、农户等服务群体的实际需求，
          现已开发 “推资讯”、“随时问”、“学农技”、“找资金”等功能。<br>
        </p>
      </div>
    </div>
    <div class="flex-row" style="font-size:0.8em;margin-top:2vh">
      <span>Alpha 1.0 版：</span><a href="http://202.194.131.202:9000/village-station/apk/SDAU-xczxyz-alpha1.0.apk">点击下载</a>
    </div>
    <!-- 底部版权 -->
    <div>
      <Footer />
    </div>
    <!-- 隐藏层 -->
    <div class="wxtip" id="JweixinTip" v-show="show">
      <span class="wxtip-icon" ></span>
      <p class="wxtip-txt">1.点击右上角<img src="@/assets/point.png" style="height:25px"/> <br/> <br/>2.选择 <img src="@/assets/brower.png" style="height: 25px;"/> 在浏览器中打开</p>
    </div>
  </div>
</template>

<script>
import Footer from './components/Footer'
export default {
  components: {
    Footer
  },data(){
    return{
      show:false,
      elementAHeight:0
    }
  },  
  created() {
    var ua = navigator.userAgent;
    var isWeixin = !!/MicroMessenger/i.test(ua);
    if(isWeixin) this.show=true;
  },mounted() { 
    // alert(this.$refs.elementA.offsetHeight)
  },
}
</script>
<style>
#app{
  background: #fff;
  min-height: 100vh;
}
.flex-row {
  display: flex;
  flex-direction: row;
  justify-content: center;
}

.flex-col {
  display: flex;
  flex-direction: column;
  justify-content: center;
}



.bckImg {
  width: 100%;
  object-fit: cover;
  height: auto;
  z-index: 1;
}

.content_container {
  margin-top: -15vh;
  padding: auto 7em;
  height: 15vh;
  background-color: rgba(0, 0, 0, 0.9);
  color: #fff;
  z-index: 10;
  opacity: 50%;
}

.content_title {
  margin-top: 0px;
  font-size: 0.8em;
  text-align: center;
}

.content_content {
  font-size: 0.7em;
  padding-left: 2em;
  padding-right: 2em;
}

.main {
  padding-top: 5vh;
}

.main_img {

  width: 50vw;
  max-width: 400px;
  height: auto;
  max-height: 600px;
}

.description {
  color: #fff;
  font-size: 0.6em;
  background: #5A8B5B;
  width: 40vw;
  border-radius: 1em;
  max-height: 600px;
}

.description_content {
  padding: 0.5em;
}

@media screen and (max-width: 3000px) {
  .top_img {
    background-image: url("assets/bg_left.jpg"), url("assets/bg.jpg"), url("assets/bg_right.jpg");
    background-repeat: no-repeat, no-repeat, no-repeat;
    background-position: left, center, right;
    background-size: 20% 100%, 60% 100%, 20% 100%;
    height: 40vh;
  }

  .description {
    color: #fff;
    font-size: 1em;
  }
}

@media screen and (max-width: 1000px) {
  .top_img {
    background: #ffffff url("assets/bg.jpg") no-repeat right top;
    background-size: 100% 100%;
    width: 100%;
    height: 30vh;
  }

  .description {
    color: #fff;
    font-size: 0.8em;
  }
}

.wxtip {
  background: rgba(0, 0, 0, 0.8);
  text-align: center;
  position: fixed;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  z-index: 998; 
}

.wxtip-icon {
  width: 100px;
  height: 200px;
  background: url(assets/jump.png) no-repeat;
  display: block;
  position: absolute;
  right: 20px;
  top: 20px;
}

.wxtip-txt {
  margin-top: 107px;
  color: #fff;
  font-size: 25px;
  line-height: 1.5;
}
</style>
