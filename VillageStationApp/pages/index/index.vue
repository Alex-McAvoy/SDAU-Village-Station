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

		<!-- 新闻资讯 -->
		<view class="main_context first_main_context" style="margin-top: 100px;">
			<!-- 主体框 -->
			<view>
				<u-row gutter="16" @click="goNewsList">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/index/index_news.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text @click="goNewsList" style="font-weight: 20px;" margin="0px 0px 0px 0px" text="新闻资讯" bold
							size="22"></u-text>
					</u-col>

					<u-col span="1">
						<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;" />
					</u-col>
				</u-row>
			</view>
			<!-- 栏目标签 -->
			<view>
				<u-sticky bgColor="#fff">
					<u-tabs :list="newsBarList" :is-scroll="true" lineColor="#2ed573" @change="getNewsList"></u-tabs>
				</u-sticky>
			</view>
			<view v-for="item in newsList"><!-- 栏目内容 -->
				<view class="news" @click="goNewsDetail(item)" style="height:120px;;">
					<view class="new_img">
						<img :src="item.remark" alt=""
							style="width:100%;height: auto;overflow: hidden">
					</view>
					<view class="new_title" style="margin-top: 50px;">
						<u-text :text="item.title" bold size="17"></u-text>
						<u--text color="#909090 " :text="fixedSize(item.content)"></u--text>
					</view>
				</view>
			</view>
		</view>


		<!-- 优品 -->
		<view class="main_context">
			<!-- 主体框 -->
			<view>
				<u-row gutter="16" @click="goProductList">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/index/index_news.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="优品" bold size="22"></u-text>
					</u-col>

					<u-col span="1">
						<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;" />
					</u-col>
				</u-row>
			</view>
			<!-- 栏目标签 -->
			<view>
				<u-sticky bgColor="#fff">
					<u-tabs :list="productBarList" :is-scroll="true" lineColor="#2ed573"
						@change="getProductList"></u-tabs>
				</u-sticky>
			</view>
			<!-- 栏目内容 -->
			<view v-for="item in productList">
				<view class="news" @click="getProductDetail(item)">
					<view class="new_img">
						<img :src="item.remark" alt="" style="width:100%;height: auto;overflow: hidden">
					</view>
					<view class="new_title" style="margin-top: 50px;">
						<u-text :text="item.title" bold size="17"></u-text>
						<u--text color="#909090 " :text="fixedSize(item.content)"></u--text>
					</view>
				</view>
			</view>
		</view>

		<!-- 专家 -->
		<view class="main_context">
			<!-- 主体框 -->
			<view>
				<u-row gutter="16" @click="goExpertList">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/index/index_news.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="专家" bold size="22"></u-text>
					</u-col>

					<u-col span="1">
						<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;" />
					</u-col>
				</u-row>
			</view>
			<!-- 栏目标签 -->
			<view>
				<u-sticky bgColor="#fff">
					<u-tabs :list="expertBarList" :is-scroll="true" @click="getExpertList" lineColor="#2ed573"></u-tabs>
				</u-sticky>
			</view>
			<!-- 栏目内容 -->
			<view v-for="item in expertList">
				<view class="news" @click="goExpertDetail(item)">
					<view class="new_img">
						<img :src="item.remark" alt="" style="width:100%;height: auto;overflow: hidden">
					</view>
					<view class="new_title" style="margin-top: 50px;">
						<u-text :text="item.expertName" bold size="17"></u-text>
						<u--text color="#909090 " :text="fixedSize(item.introduction)"></u--text>
					</view>
				</view>
			</view>
		</view>

		<!-- 培训 -->
		<!-- 培训 -->
		<view class="main_context">
			<!-- 主体框 -->
			<view>
				<u-row gutter="16" @click="goTrainingList">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/index/index_news.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="培训" bold size="22"></u-text>
					</u-col>
					<u-col span="1">
						<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;" />
					</u-col>
				</u-row>
			</view>
			<!-- 栏目标签 -->
			<view>
				<u-tabs :list="trainingList" :is-scroll="true" v-on:click="" lineColor="#2ed573"
					@change="offlineTrainingTab"></u-tabs>
			</view>
			<view>
				<view class="news" v-for="item in train.slice(0,2)" @click="goOfflineTrainingDetail(item)">
					<view class="new_img">
						<img :src="item.remark" alt="" style="width:100%;height: auto;overflow: hidden">
					</view>
					<!-- <view class="new_title" style="width:100%">{{item.title}}</view> -->
					<view class="new_title" style="margin-top: 50px;">
						<u-text :text="item.title" bold size="17"></u-text>
						<u--text color="#909090 " :text="fixedSize(item.createTime)"></u--text>
					</view>
					</view>
				</view>
			</view>
		</view>
	</view>

	</view>
</template>
<script>
	import {
		getNewsListByColumn,
		updateNewsReading
	} from "@/api/system/news.js";
	import {
		getProductsByColumns,
		updateProductsReading
	} from "@/api/station/products";
	import {
		getExpertListByColumn,
	} from "@/api/station/expert.js";
	import {
		getOfflineTrainingListByColumn,
		updateOfflineTrainingReading
	} from "@/api/system/offline_training.js";
	import {
		listOnlineTraining,
		updateOnlineTrainingReading
	} from "@/api/system/online_training.js";

	export default {
		data() {
			return {
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
				productBarList: [{
					name: '优品品类',
					index: 0
				}, {
					name: '优品品牌',
					index: 1
				}, ],
				expertBarList: [{
					name: '农学专家',
					index: 0
				}, {
					name: '林学专家',
					index: 1
				}, {
					name: '园艺专家',
					index: 2
				}, {
					name: '植保专家',
					index: 3
				}, {
					name: '动物专家',
					index: 4
				}, {
					name: '信息专家',
					index: 5
				}, {
					name: '农机专家',
					index: 6
				}, {
					name: '食科专家',
					index: 7
				}],
				trainingList: [{
					name: '线上培训',
					index: 0
				}, {
					name: '线下培训',
					index: 1
				}, ],
				newsList: [],
				productList: [],
				expertList: [],
				train: [],
				trainIndex: 0,
				query: ''
			}
		},
		created() {
			this.loading = true;
			Promise.all([
				getNewsListByColumn(1, 0),
				getProductsByColumns(1, 0),
				getExpertListByColumn(1, 0),
				listOnlineTraining()
			]).then(response => {
				this.newsList = response[0].rows;
				this.productList = response[1].data;
				this.expertList = response[2].data;
				this.train = response[3].rows;
			})
			this.loading = false;
		},
		methods: {
			GoBase(){
				uni.navigateTo({
					url: '/pages/onlinestation',
				});
			},
			getNewsList(item) {
				this.loading = true;
				getNewsListByColumn(1, item.index).then(response => {
					this.newsList = response.rows;
					this.loading = false;
				});
			},
			goNewsList() {
				uni.navigateTo({
					url: "/pages/index/news/news_list"
				})
			},
			goNewsDetail(item) {
				getApp().globalData.item = item;
				updateNewsReading(item).then(response => {})
				uni.navigateTo({
					url: "/pages/index/news/news_detail"
				})
			},
			getProductList(item) {
				this.loading = true;
				getProductsByColumns(1, item.index).then(response => {
					this.productList = response.data;
					this.loading = false;
				});
			},
			goProductList() {
				uni.switchTab({
					url: "/pages/product/product"
				})
			},
			getProductDetail(item) {
				getApp().globalData.item = item
				updateProductsReading(item).then(response => {})
				uni.navigateTo({
					url: "/pages/station/products/products_detail"
				})
			},
			getExpertList(item) {
				this.loading = true;
				getExpertListByColumn(1, item.index).then(response => {
					this.expertList = response.data;
					this.loading = false;
				});
			},
			goExpertList() {
				uni.switchTab({
					url: "/pages/expert/expert"
				})
			},
			goExpertDetail(item) {
				getApp().globalData.item = item;
				uni.navigateTo({
					url: "/pages/expert/expert_detail"
				})
			},
			offlineTrainingTab(item) {
				this.trainIndex = item.index;
				if (item.index == 1) {
					this.loading = true;
					getOfflineTrainingListByColumn(1, item.index).then(response => {
						this.train = response.data
						this.loading = false;
					});
				} else {
					this.getList();
				}
			},
			getList() {
				this.loading = true;
				listOnlineTraining().then(response => {
					this.train = response.rows;
					this.loading = false;
				});
			},
			goTrainingList() {
				uni.switchTab({
					url: "/pages/training/training"
				})
			},
			goOfflineTrainingDetail(item) {
				getApp().globalData.item = item;
				if (this.trainIndex == 1) {
					updateOfflineTrainingReading(item).then(response => {})
					uni.navigateTo({
						url: "/pages/training/offline_training_detail"
					})
				} else {
					updateOnlineTrainingReading(item).then(response => {})
					uni.navigateTo({
						url: "/pages/training/online_training_detail"
					})
				}
			},
			fixedSize(content) {
				return content.substring(0, 25) + "..."
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