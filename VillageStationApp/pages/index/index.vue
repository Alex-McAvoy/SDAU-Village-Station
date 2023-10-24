<template>
	<view class="body">
		<view>
			<u-loading-page :loading="loading"></u-loading-page>
		</view>
		<!-- 顶部 搜索栏 -->
		<view class="nav_bar">
			<u-row gutter="20" class="index_head" style="padding-left: 20px;">
				<u-col class="flex_row" span="2" style="font-size: 18px;">首页</u-col>
				<u-col span="9">
					<u-search :show-action="true" action-text="搜索" v-model="query" @custom="search" @search="search"
						:action-style="{ color: 'white' }" />
				</u-col>
				<u-col span="1"></u-col>
			</u-row>
		</view>
		<view style="margin-top: 105px;">
			<u-notice-bar  :text=" '当前所在驿站：'+ ' ' + text1 + ' ' + text2" ></u-notice-bar>
		</view>
		<!-- 新闻资讯 -->
		<view class="main_context first_main_context" style="margin-top: 5px;">
			<!-- 主体框 -->
			<view>
				<u-row gutter="16" @click="goNewsList">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/index/index_news.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text @click="goNewsList" style="font-weight: 20px;" margin="0px 0px 0px 0px" text="推资讯" bold
							size="22"></u-text>
					</u-col>
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/index/arrow.png" style="height:25px;width:25px;" />
					</u-col>
				</u-row>
			</view>
			<!-- 栏目标签 -->
			<view>
				<u-sticky bgColor="#fff">
					<u-tabs :list="newsBarList" :is-scroll="true" lineColor="#2ed573"
						@change="getNewsListButton"></u-tabs>
				</u-sticky>
			</view>
			<view>
				<view v-for="item in NewsList.slice(0,2)"><!-- 栏目内容 -->
					<view class="news" @click="goNewsDetail(item)" style="height:120px;">
						<view class="new_img">
							<img :src="item.remark" alt="" style="width:100%;height: auto;overflow: hidden">
						</view>
						<view class="new_title" style="margin-top: 50px;">
							<u-text :text="fixedTitleSize(item.title)" bold size="15"></u-text>
							<u--text color="#909090 " :text="fixedSize(item.content)"></u--text>

						</view>
					</view>
				</view>
			</view>

		</view>

		<!-- 随时问 -->
		<view class="main_context first_main_context" style="margin-top: 10px;">
			<!-- 主体框 -->
			<view>
				<u-row gutter="16" @click="goAskList">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="../../static/images/index/index_query.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="随时问" bold size="22"></u-text>
					</u-col>
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="../../static/images/index/arrow.png" style="height:25px;width:25px;" />
					</u-col>
				</u-row>
			</view>
			<view>
				<view class="news" style="height:120px;" v-for="oneFreeList in freeList.slice(0,2)" >

						<view class="new_img">
							<image src="../../static/images/icon.jpg"
								style="width:80px;height: 80px;overflow: hidden;border-radius: 50px;margin-top: 2px;">
						</view>
						<view class="new_title" style="margin-top: 20px;" @click="getoneFree(oneFreeList)">
							<u-text :text="oneFreeList.title" bold size="17"></u-text>
							<u--text color="#909090 " :text="oneFreeList.content"></u--text>
						</view>

					
				</view>
			</view>

		</view>
		<!-- 培训 -->
		<view class="main_context">
			<!-- 主体框 -->
			<view>
				<u-row gutter="16" @click="goTrainingList">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/index/index_train.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="学农技" bold size="22"></u-text>
					</u-col>
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/index/arrow.png" style="height:25px;width:25px;" />
					</u-col>
				</u-row>
			</view>
			<!-- 栏目标签 -->
			<view>
				<u-tabs :list="trainingBarList" :is-scroll="true" v-on:click="" lineColor="#2ed573"
					@change="getTrainButton"></u-tabs>
			</view>
			<view>
				<view class="news" v-for="item in trainingList.slice(0,2)" @click="goOnlineDetail(item)">
					<view class="new_img">
						<img :src="item.remark" alt="" style="width:100%;height: auto;overflow: hidden">
					</view>
					<!-- <view class="new_title" style="width:100%">{{item.title}}</view> -->
					<view class="new_title" style="margin-top: 50px;">
						<u-text :text="item.title" bold size="17"></u-text>
						<u--text color="#909090 " :text="item.createTime"></u--text>
					</view>
				</view>
			</view>
		</view>
		<!-- 金融资讯 -->
		<view class="main_context">
			<!-- 主体框 -->
			<view>
				<view>
					<u-row gutter="16" @click="goFinanceList">
						<u-col span="2" style="padding-left:10px;margin-right: 8px;">
							<image src="/static/images/index/index_query.png" style="height:25px;width:25px;" />
						</u-col>
						<u-col span="9" class="bar" style="margin-left:-25px">
							<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="找资金" bold
								size="22"></u-text>
						</u-col>
						<u-col span="2" style="padding-left:10px;margin-right: 8px;">
							<image src="/static/images/index/arrow.png" style="height:25px;width:25px;" />
						</u-col>
					</u-row>
				</view>
			</view>
			<!-- 栏目标签 -->
			<view>
				<u-tabs :list="financeBarList" :is-scroll="true" lineColor="#2ed573"
					@change="getFinanceListButton"></u-tabs>
			</view>

			<view>
				<view style="border-radius: 10px; background-color: white;margin:15px;">
					<view class="financenews" v-for="item in financeList.slice(0,2)" @click="goFinanceDetail(item)">
						<view class="new_img">
							<image :src="item.remark" alt="" style="width:100%;height: 150px;overflow: hidden">
						</view>
						<view class="new_title" :model="financeList">{{ item.title }}</view>
					</view>
				</view>
			</view>
		</view>
	</view>
</template>
<script>
	import {
		getCheckNewsList,
		updateNewsReading,
	} from "@/api/information/index.js"

	import {
		getOnlineTrainingList,
		getOfflineTrainingList,
		getOfflineTrainingDetail,
		getOnlineTrainingDetail,
	} from "@/api/technology/index.js";
	
	import {
		updateOfflineTrainingReading
	} from "@/api/technology/offline_training/index.js";
	
	import {
		updateOnlineTrainingReading,
	} from "@/api/technology/online_training/index.js";
	
	import {
		getCheckFinance,
		updateFinanceReading,
	} from "@/api/finance/index.js";
	
	import{
		getFreeAskListByColumn
	}from "@/api/ask/index.js";
	import{
		getStation
	}from"@/api/system/user.js"
	export default {
		data() {
			return {
				text1: '',
				text2:'',
				loading: false,
				newsBarList: [{
					name: '政策法规',
					index: 0
				}, {
					name: '三农资讯',
					index: 1
				}, {
					name: '科技动态',
					index: 2
				}, {
					name: '典型案例',
					index: 3
				}, ],
				financeBarList: [{
					name: ' 金融助农 ',
					index: 0
				}, {
					name: ' 业务新闻 ',
					index: 1
				}, {
					name: ' 相关案例 ',
					index: 2
				}, ],
				trainingBarList: [{
					name: '线上培训',
					index: 0
				}, {
					name: '线下培训',
					index: 1
				}, ],
				freeList:[],
				NewsList: [],
				financeList: [],
				trainingList: [],
				onlineTrainingList: [],
				offlineTrainingList: [],
				trainIndex: 0,
				query: ''
			}
		},
		created() {
		
			this.loading = true;
			Promise.all([
				getCheckNewsList(0),
				getOnlineTrainingList(),
				getCheckFinance(0),
				getFreeAskListByColumn(this.$store.state.user.deptId),
				getStation(this.$store.state.user.deptId)
			]).then(response => {
				this.NewsList = response[0].data;
				this.trainingList = response[1].rows;
				this.financeList = response[2].data;
				this.freeList = response[3].data;
				this.text2 = response[4].data.deptName;
				// console.log(response[4].data)
				let parentId = [];
				let temp = response[4].data.ancestors.split(',')
				
				// console.log(temp)
				for(var item of temp) {
					item = parseInt(item)
					if (item!= 0 && item!= 100 && item!=279 && item!=280 && item!=281 && item!=282 && item!=823) {
						parentId.push(item)
					}
				}
				
				Promise.all([
					getStation(parentId[0]),
					getStation(parentId[1])])
					// getStation(this.$store.state.user.deptId)
				.then(response =>{
					this.text1 = response[0].data.deptName  + " " + response[1].data.deptName 
					// console.log(this.text1)
					// console.log(response)
				})
			// 	{

				this.loading = false;
			})
		},
		methods: {
			//跳转随时问
			getoneFree(free){
				uni.navigateTo({
					url: "/pages/ask/detail?id=" + free.id
				})
			},
			//获取新闻资讯列表
			getNewsListButton(item) {
				this.loading = true;
				getCheckNewsList(item.index).then(response => {
					this.NewsList = response.data;
					this.loading = false;
				});
			},
			//跳转首页新闻
			goNewsList() {
				uni.switchTab({
					url: "/pages/information/index"
				})
			},
			//跳转新闻详情
			goNewsDetail(item) {
				getApp().globalData.item = item;
				updateNewsReading(item).then(response => {})
				uni.navigateTo({
					url: "/pages/information/detail"
				})
			},
			// 获取学农技术列表
			getTrainButton(item) {
				if (item.index == 0) {
					getOnlineTrainingList().then(response => {
						this.trainingList = response.rows;
						this.loading = false;
					})
				} else {
					getOfflineTrainingList().then(response => {
						this.trainingList = response.rows;
						this.loading = false;
					})
				}
			},
			//跳转首页学农技
			goTrainingList() {
				uni.switchTab({
					url: "/pages/technology/index"
				})
			},
			//跳转首页随时问
			goAskList(){
				uni.switchTab({
					url: "/pages/ask/index"
				})
			},
			//根据id跳转线上培训详细内容页
			goOnlineDetail(item) {
				getApp().globalData.item = item;
				//更新阅读量
				updateOnlineTrainingReading(item).then(response => {})
				uni.navigateTo({
					url: "/pages/technology/online_training/detail"
				});
			},
			//根据id跳转线下培训详细内容页
			goOfflineDetail(item) {
				getApp().globalData.item = item;
				//更新阅读量
				updateOfflineTrainingReading(item).then(response => {})
				uni.navigateTo({
					url: "/pages/technology/offline_training/detail"
				});
			},
			//获取金融分类资讯列表
			getFinanceListButton(item) {
				this.loading = true;
				getCheckFinance(item.index).then(response => {
					this.financeList = response.data;
					this.loading = false;
				});
			},
			//跳转首页金融
			goFinanceList() {
				uni.switchTab({
					url: "/pages/finance/index"
				})
			},
			//跳转金融资讯详情
			goFinanceDetail(item) {
				getApp().globalData.item = item;
				updateFinanceReading(item).then(response => {})
				uni.navigateTo({
					url: "/pages/finance/detail"
				})
			},
			//限制字数
			fixedSize(content) {
				return content.substring(0, 25) + "..."
			},
			fixedTitleSize(content) {
				return content.substring(0, 10) + "..."
			},
			search(query) {
				this.query = '';
				getApp().globalData.query = query;
				uni.navigateTo({
					url: "/pages/index/query_result"
				})
			},	

		}
	}
</script>

<style>
	@import url("@/static/css/index.css");
	@import url("@/static/css/nav_bar.css");
</style>

<style>
	.video_list {
		height: 170px;
		margin-top: 10px;
	}

	.video_img {
		max-height: 170px;
	}
</style>