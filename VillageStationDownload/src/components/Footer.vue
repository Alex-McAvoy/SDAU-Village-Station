<template>
  <div>
    <p class="record">
          <img src="../assets/bei.png">
          <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=37090202000305" target="_blank">
            鲁公网安备37090202000305号
          </a>
          <span>&nbsp;|&nbsp;</span>
          <a href="https://beian.miit.gov.cn/#/Integrated/index" target="_blank">
            鲁ICP备05002369号-1
          </a>
          <br>
          <span>&nbsp;&nbsp;版权所有&nbsp;©&nbsp;山东农业大学</span>
        </p>
  </div>
</template>

<script>
export default {
  name: 'Footer'
}
</script>

<style scoped>
.record {
  background: none;
  height: 5vh;  
  width: 100%;
  text-align: center;
  font-size:0.7em;

  img {
    padding-top: 2px;
  }

  a {
    color: #000;
    text-decoration: none;
  }
}
</style>
