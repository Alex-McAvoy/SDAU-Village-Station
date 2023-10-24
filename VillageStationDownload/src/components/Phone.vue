<template>
  <div class="main">
    <el-image :src="url" class="img">
    </el-image>
  </div>
</template>

<script>
import phone from "@/assets/phone.png"

export default {
  name: 'Phone',
  data() {
    return {
      url: phone
    }
  },
}
</script>

<style scoped>
.main {
  display: flex;
  align-items: center;
  width: 100%;
  height: 500px;
  position: relative;

  .img {
    display: flex;
    align-items: center;
    position: absolute;
    width: 40%;
    /* max-width: 260px;  */
    /* max-width: 100%;
    max-height: 100%; */
  }
}
</style>
