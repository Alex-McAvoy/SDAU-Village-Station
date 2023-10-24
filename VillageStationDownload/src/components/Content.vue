<template>
  <div class="flex-row main">
      <div class="description">
        <p class="description_content">
          乡村驿站APP立足于农户、农企、农村合作社等服务群体的实际需求，现已开发 “推资讯”、“随时问”、“学农技”、“找资金”等功能。
        </p>
        <p class="description_content">
          针对APP使用人群的特点，设计了扁平化界面和逻辑清晰的操作流程。APP内展现各乡村振兴驿站特色，推送切实需要的资讯新闻，提供与驿站周边乡村种养配套的农技知识，切实解决乡村振兴驿站的需求。
        </p>
      </div>
  </div>
</template>

<script>
import sdau from "@/assets/sdau.png"

export default {
  name: 'Content',
  data() {
    return {
      sdauUrl: sdau
    }
  },
}
</script>

<style scoped>
.flex-row {
  display: flex;
  flex-direction: row;
  justify-content: center;
}

.main {
  position: relative;
  padding-top: 5vh;

  .description {    
    background: #5A8B5B;
    border-radius: 0.5em;
    width: 40vw;
    
    .description_content {
      color: #fff;
      font-size: 0.8em;
      padding: 0.1em 0.8em 0.1em 0.8em;
      text-indent: 2em;
      text-align: justify;
    }
  }
}
</style>
