<template>
	<view class="body">
		<!-- 顶部 搜索栏 -->
		<div class="nav_bar">
			<u-row gutter="20" class="index_head">
				<u-col span="3">金融&nbsp;</u-col>
				<u-col span="7">
					<u-search :show-action="false"></u-search>
				</u-col>
			</u-row>
		</div>

		<!-- 金融产品 -->
		<view class="main_context first_main_context" style="margin-top: 100px;">
			<view class="load_product_list">
				<view class="load_product_item">
					<view> </view>
					<view class="flex_row">
						<image src="/static/images/finance/finance_product2.png" style="width:80px;height:80px" />
					</view>
					<view style="text-align: center;">小额农贷</view>
					<view class=""></view>
				</view>
				<view class="load_product_item">
					<view> </view>
					<view class="flex_row">
						<image src="/static/images/finance/finance_product1.png" style="width:80px;height:80px" />
					</view>
					<view style="text-align: center;">合作社金融</view>
					<view class=""></view>
				</view>
				<view class="load_product_item">
					<view> </view>
					<view class="flex_row">
						<image src="/static/images/finance/finance_product3.png" style="width:80px;height:80px" />
					</view>
					<view style="text-align: center;">招商引资</view>
					<view class=""></view>
				</view>
			</view>
		</view>
		<!-- 金融资讯 -->
		<view class="main_context">
			<!-- 主体框 -->
			<view> 
				<u-row gutter="16" @click="goFinanceList">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/index/index_news.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="金融资讯" bold size="22"></u-text>
					</u-col>
					<u-col span="1">
						<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;" />
					</u-col>
				</u-row>
			</view>
			<!-- 栏目标签 -->
			<view> 
				<u-tabs :list="financeBarList" :is-scroll="true" lineColor="#2ed573" @change="getFinanceList"></u-tabs>
			</view>

			<view style="border-radius: 10px; background-color: white;margin:15px;">
				<view class="financenews" v-for="item in financeList" @click="goFinanceDetail(item)">
					<view class="new_img">
						<image :src="item.remark" alt=""
							style="width:100%;height: 150px;overflow: hidden">
					</view>
					<view class="new_title" :model="financeList">{{ item.title }}</view>
				</view>
			</view>

		</view>

		<!-- 金融产品介绍 -->
		<view class="main_context first_main_context">
			<!-- 顶部栏 -->
			<u-row gutter="16">
				<u-col span="2" style="padding-left:10px;margin-right: 8px;">
					<image src="/static/images/index/index_video_icon.png" style="height:20px;width:25px;" />
				</u-col>
				<u-col span="9" class="bar" style="margin-left:-25px">
					<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="金融产品介绍" bold size="22"></u-text>
				</u-col>
				<u-col span="1">
					<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;" />
				</u-col>
			</u-row>
			<view class="flex_row video_list">
				<view class="video_list_item">
					<view class="flex_col">
						<image class="video_img" src="/static/images/finance/load1.jpg" mode="scaleToFill" />
					</view>
					<view style="font-size: 13px;">金融活水润“三夏”</view>
				</view>
				<view class="video_list_item">
					<view class="flex_col">
						<image class="video_img" src="/static/images/finance/load2.jpg" mode="scaleToFill" />
					</view>
					<view style="font-size: 13px;">助农惠企保民生</view>
				</view>
			</view>
		</view>

	</view>
</template>
<script>
	import {
		getFinanceListByColumn,
		updateFinanceReading
	} from "@/api/system/finance.js";

	export default {
		onLoad: function() {},
		data() {
			return {
				financeBarList: [{
					name: ' 金融助农 ',
					index: 0
				}, {
					name: ' 业务新闻 ',
					index:1
				}, {
					name: ' 相关案例 ',
					index:2
				}, ],
				financeList: []
			}
		},
		created() {
			this.getFinanceList({index:0})
		},
		methods: {
			getFinanceList(item) {
				getFinanceListByColumn(1,item.index).then(response => {
					this.financeList = response.data
					this.loading = false;
				});
			},
			goFinanceList() {
				uni.navigateTo({
					url: "/pages/finance/finance_list"
				})
			},
			goFinanceDetail(item) {
				getApp().globalData.item = item;
				updateFinanceReading(item).then(response => {
				})
				uni.navigateTo({
					url: "/pages/finance/finance_detail"
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
	.load_product_list {
		display: grid;
		grid-template-columns: 1fr 1fr 1fr;
		grid-column-gap: 10%;
		margin: 6px 10px;
	}

	.load_product_item {
		border-radius: 10px;
		display: grid;
		grid-template-rows: 1fr 2fr 1fr 1fr;
		height: 100px;
		max-width: 110px;
	}

	.load_product_text {
		text-align: center;
		color: #fff;
	}

	.video_list_item {
		height: 160px;
	}

	.video_img {
		width: 100%;
		height: 180px;
	}

	.finance_title {
		grid-row: 1/2;
		grid-column: 2/3;
		display: flex;
		flex-direction: column;
		justify-content: center;
		max-height: 70px;
		padding: 5px 0 0 0;
		font-size: 15px;
		font-weight: 200;
	}

	.finance_origin {
		grid-row: 2/4;
		grid-column: 2/3;
		padding-bottom: 5px;
		margin-bottom: 20px;
	}
</style>