<template>
	<view class="body">

		<view>
			<u-loading-page :loading="loading"></u-loading-page>
		</view>
		<!-- 顶部 搜索栏 -->
		<view class="nav_bar">
			<u-row gutter="20" class="index_head" style="padding-left: 20px;">
				<u-col class="flex_row" span="3" style="font-size: 18px;">学农技</u-col>
				<u-col span="8">
					<u-search :show-action="true" action-text="搜索" v-model="query" @custom="search" @search="search"
						:action-style="{ color: 'white' }" />
				</u-col>
				<u-col span="1"></u-col>
			</u-row>
		</view>

		<!-- 线上培训模块 -->
		<view class="main_context first_main_context" style="margin-top: 105px;">
			<!-- 线上培训导航栏 -->
			<view @click="goOnlineList()">
				<u-row gutter="16">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/technology/index_news.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text style="font-weight: 20px;" text="线上培训" bold size="22"></u-text>
					</u-col>
					<u-col span="1">
						<image src="@/static/images/technology/arrow_right.png" style="height:20px;width:35px;" />
					</u-col>
				</u-row>
			</view>
			<!-- 线上培训视频列表 -->
			<view>
				<view v-if="onlineList.length!=0">
					<view class=""
						style="width:100%; padding-bottom: 5px; border-bottom: 1px solid #cbcbcb; margin-top: 4px;"
						v-for="item in Array.from(onlineList)" @click="goOnlineDetail(item)">
						<!-- 标题+封面 -->
						<u-row style="height: 75px; margin-left: 10px;">
							<u-col span="8">
								<u-text :text="item.title" bold size="17"></u-text>
							</u-col>
							<u-col span="4" class="flex_col">
								<image :src="item.remark"
									style="height:70px;width:100%;max-width:150px; object-fit: cover;">
							</u-col>
						</u-row>
						<!-- 时间 -->
						<u-row style="height: 25px; margin-left: 10px;">
							<u-col span="8">
								<u--text color="#cbcbcb" :text="item.createTime"></u--text>
							</u-col>
						</u-row>
					</view>
				</view>
				<view v-else>
					<view style="font-size: 14px; line-height: 1.8; margin: 20px;">
						暂无相关信息
					</view>
				</view>
			</view>
		</view>




		<!-- 线下培训 -->
		<view class="main_context first_main_context">
			<!-- 线下培训导航栏 -->
			<view @click="goOfflineList()">
				<u-row gutter="16">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/information/keji.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text style="font-weight: 20px;" text="线下培训" bold size="22"></u-text>
					</u-col>
					<u-col span="1">
						<image src="@/static/images/technology/arrow_right.png" style="height:20px;width:35px;" />
					</u-col>
				</u-row>
			</view>
			<!-- 线下培训列表 -->
			<view class="flex_row video_list">
				<view v-if="offlineList.length!=0">
					<view class=""
						style="width:100%; padding-bottom: 5px; border-bottom: 1px solid #cbcbcb; margin-top: 4px;"
						v-for="item in Array.from(offlineList)" @click="goOfflineDetail(item)">
						<!-- 标题+封面 -->
						<u-row style="height: 75px; margin-left: 10px;">
							<u-col span="8">
								<u-text :text="item.title" bold size="17"></u-text>
							</u-col>
							<u-col span="4" class="flex_col">
								<image :src="item.remark"
									style="height:70px;width:100%;max-width:150px; object-fit: cover;">
							</u-col>
						</u-row>
						<!-- 时间 -->
						<u-row style="height: 25px; margin-left: 10px;">
							<u-col span="8">
								<u--text color="#cbcbcb" :text="item.createTime"></u--text>
							</u-col>
						</u-row>
					</view>
				</view>
				<view v-else>
					<view style="font-size: 14px; line-height: 1.8; margin: 20px;">
						暂无相关信息
					</view>
				</view>
				
			</view>
		</view>
	</view>
</template>
<script>
	import {
		getOnlineTrainingListLimitSort,
		getOfflineTrainingListLimitSort,
	} from "@/api/technology/index.js";
	import {
		updateOfflineTrainingReading
	} from "@/api/technology/offline_training/index.js";
	import {
		updateOnlineTrainingReading,
	} from "@/api/technology/online_training/index.js";
	export default {
		data() {
			return {
				loading: false,
				onlineList: [],
				offlineList: [],
				train: [],
				trainingList: [],
				userInfo: { // 用户信息
					userId: '',
					deptId: ''
				},
				query: '',
				// 数据显示条数
				num: 4,
				// 驿站标签，默认为0
				deptTag: [0,1,2,3,4,5,6,7,8,9,10,11],
			}
		},
		created() {
			this.loading = true;
			if (this.$store.state.user.deptTag != "") {
				this.deptTag = this.$store.state.user.deptTag.split(',')
			}
			Promise.all([
				getOnlineTrainingListLimitSort(this.num, this.deptTag),
				getOfflineTrainingListLimitSort(this.num, this.deptTag)
			]).then(response => {
				this.onlineList = response[0].data;
				this.offlineList = response[1].data;
				this.loading = false;
			})

		},
		methods: {
			//跳转线上培训详细列表
			goOnlineList() {
				uni.navigateTo({
					url: "/pages/technology/online_training/list"
				});
			},
			//根据id跳转线上培训详细内容页
			goOnlineDetail(item) {
				getApp().globalData.item = item;
				item.content = item.content.replace(/</g, "&lt;");
				item.content = item.content.replace(/>/g, "&gt;");
				//更新阅读量
				updateOnlineTrainingReading(item).then(response => {}).finally(()=>{
					item.content = item.content.replace(/&lt;/ig,"<");
					item.content = item.content.replace(/&gt;/ig,">");
					uni.navigateTo({
						url: "/pages/technology/online_training/detail"
					})
				})
			},
			//跳转线下培训详细列表
			goOfflineList() {
				uni.navigateTo({
					url: "/pages/technology/offline_training/list"
				});
			},
			//根据id跳转线下培训详细内容页
			goOfflineDetail(item) {
				getApp().globalData.item = item;
				item.content = item.content.replace(/</g, "&lt;");
				item.content = item.content.replace(/>/g, "&gt;");
				//更新阅读量
				updateOfflineTrainingReading(item).then(response => {}).finally(()=>{
					item.content = item.content.replace(/&lt;/ig,"<");
					item.content = item.content.replace(/&gt;/ig,">");
					uni.navigateTo({
						url: "/pages/technology/offline_training/detail"
					})
				})
			},
			// 控制显示文本长度
			fixedSize(content) {
				let res = content.replace(/<\/?.+?\/?>/g, '')
				return res.substring(0, 25) + "..."
			},
			search(query) {
				getApp().globalData.query = query;
				this.query = '';
				uni.navigateTo({
					url: "/pages/index/query_result"
				})
			},
		}
	}
</script>

<style>
	@import url("../../static/css/index.css");
	@import url("../../static/css/nav_bar.css");
</style>
<style>

</style>