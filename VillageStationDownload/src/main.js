import Vue from 'vue'
import App from './App'
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import less from 'less'

Vue.config.productionTip = false

Vue.use(less)
Vue.use(ElementUI)

new Vue({
  el: '#app',
  components: { App },
  template: '<App/>'
})
