<template>
	<view>
		<view class="tab_nav" style="border-radius: 10px; background-color: white;  margin:8px 15px; height: 100vh;">
			<view class="title">{{ item.title }}</view>
			<u-text color="#909090" align="center" text="管理员 | 2023-10-06 16:57" bold size="13"></u-text>
			<view class="news">
				<view class="new_img">
					<image :src="item.remark" alt="" style="width:100%;height: 200px;overflow: hidden">
				</view>
				<view class="new_text"><u-parse :content="item.content"></u-parse></view>
			</view>
			<u-tabbar :fixed="true" :placeholder="true" :safeAreaInsetBottom="true">
				<u-tabbar-item :text="reading" icon="eye"></u-tabbar-item>
				<u-tabbar-item text="点赞" icon="thumb-up"></u-tabbar-item>
				<u-tabbar-item text="收藏" icon="star"></u-tabbar-item>
			</u-tabbar>
		</view>
	</view>
</template>

<script>
	import {
		getFinance
	} from "@/api/system/finance.js"
	export default {
		onLoad: function() {},
		data() {
			return {
				loading: false,
				item: '',
				reading: '',
			}
		},
		created() {
			this.getList(this.newsId);
		},
		methods: {
			getList() {
				this.loading = true;
				var id = getApp().globalData.item.newsId
				getFinance(id).then(response => {
					this.item = response.data;
					this.reading = response.data.reading.toString()
					this.loading = false;
				});
				this.loading = false;
			},
		}
	}
</script>

<style>
	.title {
		font-size: 21px;
		margin: 15px;
		text-align: center;
	}

	.new_img {
		display: flex;
		justify-content: center;
		margin: 15px;
	}

	.new_text {
		margin: 20px 15px 15px 15px;
		padding-bottom: 5px;
		letter-spacing: 0.07em;
		line-height: 1.30em;
	}
</style>