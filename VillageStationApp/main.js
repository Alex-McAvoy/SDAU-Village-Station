import Vue from 'vue'
import App from './App'
import store from './store' // store
import plugins from './plugins' // plugins
import './permission' // permission 
import uView from "uview-ui";

import { goBack } from '@/utils/common.js' //公共方法


Object.assign(Vue.prototype, {
	'$goBack':goBack,
})


Vue.use(uView);
Vue.use(plugins)

Vue.use(plugins)
Vue.config.productionTip = false
Vue.prototype.$store = store

App.mpType = 'app'

const app = new Vue({
	...App
})

app.$mount()

window.wx={}