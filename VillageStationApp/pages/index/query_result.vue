<template>
	<view class="body">
		<view>
			<u-loading-page :loading="loading"></u-loading-page>
		</view>
		<view style="border-radius: 10px; background-color: white;margin:15px;">
			<view class="news" v-for="item in newsList" @click="goResDetail(item,1)">
				<view class="new_img">
					<image :src="item.remark" alt="" style="width:100%;height: 70px;overflow: hidden">
				</view>
				<view class="new_title">{{ item.title }}</view>
				<view class="new_origin">
					<u-parse style="margin-bottom: 20px;" :content="fixedSize(item.content)"></u-parse>
				</view>
			</view>
			<view class="news" v-for="item in onlineList" @click="goResDetail(item,2)">
				<view class="new_img">
					<image :src="item.remark" alt="" style="width:100%;height: 70px;overflow: hidden">
				</view>
				<view class="new_title">{{ item.title }}</view>
				<view class="new_origin">
					<u-parse style="margin-bottom: 20px;" :content="fixedSize(item.content)"></u-parse>
				</view>
			</view>
			<view class="news" v-for="item in offlineList" @click="goResDetail(item,3)">
				<view class="new_img">
					<image :src="item.remark" alt="" style="width:100%;height: 70px;overflow: hidden">
				</view>
				<view class="new_title">{{ item.title }}</view>
				<view class="new_origin">
					<u-parse style="margin-bottom: 20px;" :content="fixedSize(item.content)"></u-parse>
				</view>
			</view>
			<view class="news" v-for="item in financeList" @click="goResDetail(item,4)">
				<view class="new_img">
					<image :src="item.remark" alt="" style="width:100%;height: 70px;overflow: hidden">
				</view>
				<view class="new_title">{{ item.title }}</view>
				<view class="new_origin">
					<u-parse style="margin-bottom: 20px;" :content="fixedSize(item.content)"></u-parse>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	import {
		queryNews,
		updateNewsReading
	} from "@/api/information/index.js";

	import {
		queryOfflineChannel,
		updateOfflineTrainingReading
	} from "@/api/technology/offline_training/index.js";
	
	import {
		queryOnlineChannel,
		updateOnlineTrainingReading
	} from "@/api/technology/online_training/index.js";
	
	import {
		queryFinance,
		updateFinanceReading
	} from "@/api/finance/index.js";
	
	export default {
		data() {
			return {
				loading: false,
				newsList: [],
				onlineList: [],
				offlineList: [],
				financeList: [],
				query: '',
			}
		},
		created() {
			this.loading = true;
			this.query = getApp().globalData.query
			Promise.all([
				queryNews(this.query),
				queryOnlineChannel(this.query),
				queryOfflineChannel(this.query),
				queryFinance(this.query)
			]).then(response => {
				this.newsList = response[0].data
				this.onlineList = response[1].data
				this.offlineList = response[2].data
				this.financeList = response[3].data
				this.loading = false;
			})
		},
		methods: {
			goResDetail(item, index) {
				getApp().globalData.item = item;
				if (index == 1) {
					updateNewsReading(item).then(response => {})
					uni.navigateTo({
						url: "/pages/index/news/news_detail"
					})
				} else if (index == 2) {
					updateOnlineTrainingReading(item).then(response => {})
					uni.navigateTo({
						url: "/pages/training/online_training_detail"
					})
				} else if (index == 3) {
					updateOfflineTrainingReading(item).then(response => {})
					uni.navigateTo({
						url: "/pages/training/offline_training_detail"
					})
				} else if (index == 4) {
					updateFinanceReading(item).then(response => {})
					uni.navigateTo({
						url: "/pages/finance/finance_detail"
					})
				}
			},
			fixedSize(content) {
				return content.substring(0, 25) + "..."
			}
		}
	}
</script>

<style src="@/static/css/index.css">
</style>
<style>
	.news {
		display: grid;
		grid-template-rows: 1fr 1fr 1fr;
		grid-template-columns: 1fr 2fr;
		grid-gap: 10px;
		height: 90px;
		font-size: 13px;
		border-top: 1px solid #ecf0f1;
		margin-bottom: 20px;
	}

	.news:nth-child(n+2) {
		margin-top: 2px;
	}

	.new_img {
		grid-row: 1/4;
		grid-column: 1/2;
		display: flex;
		flex-direction: column;
		justify-content: center;
	}

	.new_title {
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

	.new_origin {
		grid-row: 2/4;
		grid-column: 2/3;
		padding-bottom: 5px;
		margin-bottom: 20px;
	}

	.new_origin>.origin {
		color: #2ed573;
		border-radius: 3px;
		border: 1px solid #2ed573;
		margin-right: 5px;
		padding: 2px;
		font-size: 4px;
	}
</style>