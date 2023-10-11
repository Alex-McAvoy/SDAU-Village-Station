<template>
	<view class="body">
		<!-- 栏目标签 -->
		<view> 
			<u-sticky bgColor="#fff">
				<u-tabs :list="newsBarList" :is-scroll="true" lineColor="#2ed573" @change="getNewsList"
					style="margin:0px 25px"></u-tabs>
			</u-sticky>
		</view>
		
		<view style="border-radius: 10px; background-color: white;margin:15px;">
			<view class="news" v-for="item in newsList" @click="goNewsDetail(item)">
				<view class="new_img">
					<image src="/static/images/index/news_cover.png" alt=""
						style="width:100%;height: 70px;overflow: hidden">
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
		getNewsListByColumn
	} from "@/api/system/news.js";
	
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
				}],
				newsList: []
			}
		},
		created() {
			this.getNewsList({
				index: 0
			})
		},
		methods: {
			getNewsList(item) {
				getNewsListByColumn(1, item.index).then(response => {
					this.newsList = response.rows;
					this.loading = false;
				});
			},
			goNewsDetail(item) {
				getApp().globalData.item = item;
				uni.navigateTo({
					url: "/pages/index/news/news_detail"
				})
			},
			fixedSize(content) {
				return content.substring(0, 25) + "..."
			}
		}
	}
</script>

<style src="../../../static/css/index.css">
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