<template>
  <div class="main">
    <el-image :src="bgUrl" class="img" fit="cover"></el-image>
    <div class="container">
      <span class="content">
        123
      </span>
    </div>
  </div>
</template>

<script>
import bg from "@/assets/2.png"

export default {
  name: 'Main',
  data() {
    return {
      bgUrl: bg
    }
  },
}
</script>

<style scoped>
.main {
  width: 100%;
  height: 350px;
  position: relative;

  .img {
    display: flex;
    width: 100%;
    max-height: 350px;

    position: absolute;
    object-fit: cover;
    object-position: center;
    left: 0px;
  }

  .container {
    width: 100%;
    height: 100px;
    position: absolute;
    top: 150px;
  }

  .content {
    color: white;
    font-size: 40px;
    line-height: 100px;
  }
}
</style>
