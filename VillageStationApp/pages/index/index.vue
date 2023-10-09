<template>
	<view class="body">
		<!-- 顶部 搜索栏 -->
		<div class="nav_bar">
			<u-row gutter="20" class="index_head">
				<u-col span="3">乡村驿站&nbsp;</u-col>
				<u-col span="7">
					<u-search :show-action="false"></u-search>
				</u-col>
				<u-col span="2">天气</u-col>
			</u-row>
		</div>

		<!-- 新闻资讯 -->
		<view class="main_context first_main_context" style="margin-top: 100px;">
			<view> <!-- 主体框 -->
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
			<view> <!-- 栏目标签 -->
				<u-sticky bgColor="#fff">
					<u-tabs :list="list" :is-scroll="true" v-on:click="getData" lineColor="#2ed573"
						@change="change"></u-tabs>
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
			<view > <!-- 主体框 -->
				<u-row gutter="16" @click="goProductList">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/index/index_news.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="优品"
							bold size="22"></u-text>
					</u-col>

					<u-col span="1">
						<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;" />
					</u-col>
				</u-row>
			</view>
			<view> <!-- 栏目标签 -->
				<u-sticky bgColor="#fff">
					<u-tabs :list="list1" :is-scroll="true" v-on:click="getData" lineColor="#2ed573"
						@change="changeProducts"></u-tabs>
				</u-sticky>
			</view>
			<view v-for="item in productList"><!-- 栏目内容 -->
				<view class="news" @click="skipProductItem(item)">
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
			<view> <!-- 主体框 -->
				<u-row gutter="16" @click="goExpertList">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/index/index_news.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text @click="goExpertList" style="font-weight: 20px;" margin="0px 0px 0px 0px" text="专家"
							bold size="22"></u-text>
					</u-col>

					<u-col span="1">
						<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;" />
					</u-col>
				</u-row>
			</view>
			<view> <!-- 栏目标签 -->
				<u-sticky bgColor="#fff">
					<u-tabs :list="list2" :is-scroll="true" @click="getExpert" lineColor="#2ed573"></u-tabs>
				</u-sticky>
			</view>
			<view v-for="item in expertList1"><!-- 栏目内容 -->
				<view class="news" @click="skipExpertItem(item)">
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
			<view> <!-- 主体框 -->
				<u-row gutter="16">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/index/index_news.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="培训" bold size="22"></u-text>
					</u-col>
					<u-col span="1">
						<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;"/>
					</u-col>
				</u-row>
			</view>
			<view> <!-- 栏目标签 -->
				<u-tabs :list="list3" :is-scroll="true" v-on:click="" lineColor="#2ed573"
					@change="change"></u-tabs>
			</view>
			<view class="flex_row video_list">
				<view class="video_list_item">
					<view class="flex_col">
						<image src="/static/images/index/index_video.jpg" style="width:100%;height:120px;margin:3px" />
					</view>
					<view class="common_text_size">培训课程1</view>
				</view>
				<view class="video_list_item">
					<view class="flex_col">
						<image src="/static/images/index/index_video.jpg" style="width:100%;height:120px;margin:3px" />
					</view>
					<view class="common_text_size">培训课程2</view>
				</view>
			</view>
		</view>
		
	</view>
</template>
<script>
	//新闻
	import {
		listColumns,
		getColumns,
		Columns,
		expertList,
		listExpert,
		getExpert,
		delExpert,
		addExpert,
		updateExpert
	} from "@/api/system/user.js";
	//产品
	import {
		listProducts,
		getProductsByColumns
	} from "@/api/system/products.js";
	//专家
	import {
		expertList1,
	} from "@/api/station/expert.js";
	//培训
	export default {
		onLoad: function() {},
		data() {
			return {
				cur: 0,
				text: '000',
				textList: ['1', '2', '3'],
				textList1: ['1', '2', '3'],
				list: [{
					name: '政策法规',
				}, {
					name: '三农资讯'
				}, {
					name: '科技动态'
				}, {
					name: '典型案例'
				}],
				list1: [{
					name: '优品动态',
				}, {
					name: '热销农产'
				}],
				list2: [{
					name: '农学专家',
				}, {
					name: '林学专家'
				}, {
					name: '园艺专家'
				}, {
					name: '植保专家'
				}],
				list3: [{
					name: '线上',
				}, {
					name: '线下',
				}],
				newsList: {},
				productList: {},
				expertList1: {},
			}
		},
		created() {
			this.change({
				index: 0
			});
			this.changeProducts({
				index: 0
			});
			this.getExpert(0)
			},
		methods: {
			handleSelect(key, keyPath) {
				console.log(key, keyPath);
			},
			change(index) {
				// console.log(index.index)
				this.current = index.index;
				//请求 firstColumn=’新闻资讯‘ secondColumn=index.name
				this.loading = true;
				Columns(0, index.index).then(response => {
					this.newsList = response.rows;
					// console.log(response);
					this.loading = false;
				});
			},
			changeProducts(index) {
				// console.log(index)
				// console.log(index.index) 
				this.current = index.index;
				//请求 firstColumn=’新闻资讯‘ secondColumn=index.name
				this.loading = true;
				getProductsByColumns(0, index.index).then(response => {
					// console.log(response)
					this.productList = response.data;
					this.loading = false;
				});
			},
			// 跳转到新闻页
			goNewsList() {
				// this.$router.push('/pages/index/news/newsList');
				uni.navigateTo({
					url: "news/newsList"
				})
			},
			// 跳转到优品页
			goProductList() {
				uni.switchTab({
					url: "/pages/product/product"
				})
			},
			// 跳转到专家页
			goExpertList() {
				uni.switchTab({
					url: "/pages/expert/expert"
				})
			},
			// 跳转到新闻每一项
			skipNewsItem(item) {
				getApp().globalData.item = item;
				uni.navigateTo({
					url: "news/news_detail"
				})
			},
			// 跳转到优品每一项
			skipProductItem(item) {
				getApp().globalData.item = item;
				uni.navigateTo({
					url: "/pages/product/productdetail"
				})
			},
			// 跳转到专家每一项
			skipExpertItem(item) {
				getApp().globalData.item = item;
				uni.navigateTo({
					url: "/pages/expert/expert_detail"
				})
			},
			
			// 文本剪切
			fixedSize(content) {
				return content.substring(0, 25) + "..."
			},
			// 获取专家列表
			getExpert(item) {
				var tmp = 0
				if(item != 0) {
					tmp = item.index
				}
				// console.log(item)
				if (tmp === 3) {
					tmp = 6
				}
				expertList1(tmp).then(response => {
					console.log(response);
					this.expertList1 = response.data;
					// this.total = response.total;
					this.loading = false;
				});
			}
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