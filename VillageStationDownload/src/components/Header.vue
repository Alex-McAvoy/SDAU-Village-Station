<template>
  <div class="main">
    <el-image src="assets/sdau.png" class="img">
    </el-image>
  </div>
</template>

<script>
import sdau from "@/assets/sdau.png"

export default {
  name: 'Header',
  data() {
    return {
      sdauUrl: sdau
    }
  },
}
</script>

<style scoped>
.main {
  display: flex;
  align-items: center;
  background-color: #5A8B5B;

  width: 100%;
  height: 100%;
  position: relative;

  .img {
    display: flex;
    align-items: center;
    position: absolute;
    width: 40%;
    max-width: 260px; 
    /* max-width: 100%;
    max-height: 100%; */
  }
}
</style>
