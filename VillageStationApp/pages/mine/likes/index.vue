<template>
	<view class="body" style="border-radius: 10px; background-color: white;margin:15px;">

		<view class="flex_row video_list"><!-- 收藏列表 -->
			<!-- 单个收藏 -->
			<view style="width:100%; padding-bottom: 5px; border-bottom: 1px solid #cbcbcb; margin-top: 4px;"
				v-for="item in list" @click="skip(item)">
				<!-- 标题+封面 -->
				<u-row style="height: 75px; margin-left: 10px;">
					<u-col span="8">
						<u--text :text="item.title"></u--text>
					</u-col>
					<u-col span="4" class="flex_col">
						<image :src="item.remark" style="height:70px;width:100%;max-width:150px; object-fit: cover;">
					</u-col>
				</u-row>
				<u-row style="height: 25px; margin-left: 10px;">
					<u-col span="8">
						<u--text color="#cbcbcb" :text="item.type"></u--text>
					</u-col>
					<u-col span="4" style="display:flex;flex-direction: row-reverse ;padding-left:50px; ">

					</u-col>
				</u-row>
			</view>

		</view>
	</view>
	</view>
</template>

<script>

	import {
		getLikesList
	} from "@/api/mine/likes/index.js"
	
	import {
		getNewsByIds,
		updateNewsReading
	} from "@/api/information/index.js";
	import {
		getFinanceByIds,
		updateFinanceReading
	} from "@/api/finance/index.js";
	import {
		getOnlineTrainingByIds,
		updateOnlineTrainingReading
	} from "@/api/technology/online_training/index.js";
	import {
		getOfflineTrainingByIds,
		updateOfflineTrainingReading
	} from "@/api/technology/offline_training/index.js";
	
	export default {
		data() {
			return {
				loading: false,
				list: [], // 全部数据
				ids: { // 请求id列表
					news: [],
					online_training: [],
					offline_training: [],
					finance: []
				},
				userInfo: { // 用户信息
					userId: '',
					deptId: ''
				}
			}
		},
		created() {
			this.userInfo.userId = this.$store.state.user.userId
			
			this.loading = false
			getLikesList(this.userInfo.userId).then(response => {
				this.ids = response.data
				if(this.ids != undefined) {
				
					if (this.ids.news == undefined) {
						this.ids.news = 0
					}
					
					if (this.ids.offline_training == undefined) {
						this.ids.offline_training = 0
					}
					
					if (this.ids.online_training == undefined) {
						this.ids.online_training = 0
					}
					
					if (this.ids.finance == undefined) {
						this.ids.finance = 0
					}
					Promise.all([
						getNewsByIds(this.ids.news),
						getOfflineTrainingByIds(this.ids.offline_training),
						getOnlineTrainingByIds(this.ids.online_training),
						getFinanceByIds(this.ids.finance)
					]).then(response => {
						for (var item of response[0]) {
							item.url = '/pages/information/detail'
							item.type = "推资讯"
							item.index = 0
							this.list.push(item)
						}
						for (var item of response[1]) {
							item.url = '/pages/technology/offline_training/detail'
							item.type = "学农技"
							item.index = 1
							this.list.push(item)
						}
						
						for (var item of response[2]) {
							item.url = '/pages/technology/online_training/detail'
							item.type = "学农技"
							item.index = 2
							this.list.push(item)
						}
						
						for (var item of response[3]) {
							item.url = '/pages/finance/detail'
							item.type = "找资金"
							item.index = 3
							this.list.push(item)
						}
						
						this.loading = true
					})
				}
			})
		},
		methods: {
			skip(item) {
				getApp().globalData.item = item;
				if (item.index == 0) {
					updateNewsReading(item).then(response => {})
					uni.navigateTo({
						url: item.url
					})
				}
				
				if (item.index == 1) {
					updateOfflineTrainingReading(item).then(response => {})
					uni.navigateTo({
						url: item.url
					})
				} 
				
				if (item.index == 2) {
					updateOnlineTrainingReading(item).then(response => {})
					uni.navigateTo({
						url: item.url
					})
				}
				
				if (item.index == 3) { 
					updateFinanceReading(item).then(response => {})
					uni.navigateTo({
						url: item.url
					})
				}
			},
		}
	}
</script>

<style>
	@import url("@/static/css/index.css");
	@import url("@/static/css/nav_bar.css");
</style>