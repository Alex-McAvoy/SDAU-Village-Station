<style lang="scss">
	/* 注意要写在第一行，同时给style标签加入lang="scss"属性 */
	@import "@/node_modules/uview-ui/index.scss";
	@import '@/static/scss/index.scss';

	// tab图标
//导航栏字体

 .uni-tabbar__icon__diff {
	width: 50px !important;
	height: 60px !important;
}


</style>
<script>
	import config from './config'
	import store from '@/store'
	import {
		getToken
	} from '@/utils/auth'

	export default {
		globalData: {
			title: '',
			content: '',
			item: '',
		},
		onLaunch: function() {
			this.initApp()
		},
		methods: {
			// 初始化应用
			initApp() {
				// 初始化应用配置
				this.initConfig()
				// 检查用户登录状态
				//#ifdef H5
				this.checkLogin()
				//#endif
			},
			initConfig() {
				this.globalData.config = config
			},
			checkLogin() {
				if (!getToken()) {
					this.$tab.reLaunch('/pages/login')
				}
			}
		}
	}
</script>