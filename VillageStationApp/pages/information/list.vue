<template>
	<view class="main_context first_main_context" style="margin-top: 15px;">
		<view class="news" style="height:120px;;" v-for="item in Array.from(news)" @click="goNewsDetail(item)">
			<view class="new_img">
				<image :src="item.remark" style="width:90px;height: 90px;overflow: hidden;border-radius: 15px;">
			</view>
			<view class="new_title" style="margin-top: 50px;">
				<u-text :text="item.title" bold size="17"></u-text>
				<u--text color="#909090 " :text="fixedSize(item.content)"></u--text>
			</view>
		</view>
	</view>
</template>

<script>
	import {
		getCheckNewsList,
		updateNewsReading,
	} from "@/api/information/index.js"
	export default {
		data() {
			return {
				item: '',
				news: {
					title: '',
					content: '',
					remark: '',
					createTime: '',
				}
			}
		},
		created() {
			this.loading = true;
			this.item = getApp().globalData.item
			getCheckNewsList(this.item.id).then(response => {
				this.news = response.data;
				this.loading = false;
			});
		},
		methods: {
			//限制字数
			fixedSize(content) {
				return content.substring(0, 25) + "..."
			},
			//跳转新闻详情
			goNewsDetail(item) {
				getApp().globalData.item = item;
				updateNewsReading(item).then(response => {})
				uni.navigateTo({
					url: "/pages/information/detail"
				})
			},

		}
	}
</script>

<style>
	@import url("@/static/css/index.css");
	@import url("@/static/css/nav_bar.css");
	
	.video_list {
	
		height: 170px;
		margin-top: 10px;
	}
	
	.video_img {
		max-height: 170px;
	}
</style>