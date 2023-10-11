<template>
	<view class="body">
		<!-- 顶部 搜索栏 -->
		<div class="nav_bar">
			<u-row gutter="20" class="index_head">
				<u-col span="3">首页&nbsp;</u-col>
				<u-col span="7">
					<u-search :show-action="false"></u-search>
				</u-col>
			</u-row>
		</div>

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
				<view class="news" @click="skipNewsItem(item)">
					<view class="new_img">
						<img src="http://paper.people.com.cn/rmrb/images/2023-09/16/01/rmrb2023091601p27_b.jpg" alt=""
							style="width:100%;height: auto;overflow: hidden">
					</view>
					<view class="new_title" style="width:100%">{{item.title}}</view>
					<view class="new_origin"><span class="origin">来源</span><span>中国政府网</span>
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
					<view class="new_title" style="width:100%">{{ fixedSize(item.content) }}</view>
					<view class="new_origin"></view>
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
					<view class="new_title" style="width:100%">{{ fixedSize(item.introduction) }}</view>
					<view class="new_origin"></view>
				</view>
			</view>
		</view>

		<!-- 培训 -->
		<view class="main_context">
			<!-- 主体框 -->
			<view>
				<u-row gutter="16" @click="goOfflineTrainingList">
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
					@change="change"></u-tabs>
			</view>
			<view>
				<view class="news" v-for="item in offlineTrain.slice(0,2)" @click="goOfflineTrainingDetail(item)">
					<view class="new_img">
						<img :src="item.remark" alt="" style="width:100%;height: auto;overflow: hidden">
					</view>
					<view class="new_title" style="width:100%">{{item.title}}</view>
					<view class="new_origin"><span class="origin">来源</span><span>中国政府网</span>
					</view>
				</view>
			</view>
		</view>

	</view>
</template>
<script>
	import {
		getNewsListByColumn
	} from "@/api/system/news.js";
	import {
		getProductsByColumns
	} from "@/api/station/products";
	import {
		getExpertListByColumn
	} from "@/api/station/expert.js";
	import {
		getOfflineTrainingListByColumn,
	} from "@/api/system/offline_training.js";

	export default {
		data() {
			return {
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
				offlineTrain: [],
			}
		},
		created() {
			this.getNewsList({
				index: 0
			})
			this.getProductList({
				index: 0
			});
			this.getExpertList({
				index: 0
			})
			this.getOfflineTrainingList();
		},
		methods: {
			getNewsList(item) {
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
				uni.navigateTo({
					url: "/pages/station/products/products_detail"
				})
			},
			getExpertList(item) {
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
			getOfflineTrainingList() {
				this.loading = true;
				getOfflineTrainingListByColumn(1).then(response => {
					this.offlineTrain = response.data
					this.loading = false;
				});
			},
			goOfflineTrainingList() {
				uni.switchTab({
					url: "/pages/training/training"
				})
			},
			goOfflineTrainingDetail(item) {
				getApp().globalData.item = item;
				uni.navigateTo({
					url: "/pages/training/offline_training_detail"
				})
			},
			fixedSize(content) {
				return content.substring(0, 25) + "..."
			},

		}
	}
</script>

<style>
	@import url("../../static/css/index.css");
	@import url("../../static/css/nav_bar.css");
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