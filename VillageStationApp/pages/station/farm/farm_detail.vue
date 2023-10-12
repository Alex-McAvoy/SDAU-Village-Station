<template>
	<view style="border-radius: 10px; background-color: white; margin:8px 15px; height: 100vh;" :model="farms">
		<view class="sub_title">{{ farms.title }}</view>
		<view class="sub_note">管理员 | {{farms.createTime}}</view>
		<view class="news">
			<view class="new_img">
				<image :src="farms.remark" alt=""
					style="width:100%;height: 200px;overflow: hidden">
			</view>
			<view class="sub_content"><u-parse :model="farms">{{ farms.content }}</u-parse></view>
		</view>
		<u-tabbar :fixed="true" :placeholder="true" :safeAreaInsetBottom="true">
			<u-tabbar-item :text="reading" icon="eye"></u-tabbar-item>
			<u-tabbar-item text="点赞" icon="thumb-up"></u-tabbar-item>
			<u-tabbar-item text="收藏" icon="star"></u-tabbar-item>
			<!-- <u-tabbar-item text="分享" icon="share-square"></u-tabbar-item> -->
		</u-tabbar>
	</view>
</template>

<script>
	import {
		getFarm
	} from "@/api/station/farm";
	export default {
		onLoad: function() {},
		data() {
			return {
				loading: false,
				farms: {
					title: '',
					content: '',
					remark: ''
				},
				newsId: '',
				reading: ''
			}
		},
		created() {
			this.getList2(this.newsId);
		},
		onLoad(options) {
			this.newsId = options.id;
		},
		methods: {
			//根据问题id获取评论
			getList2(newsId) {
				this.loading = true;
				getFarm(newsId).then(response => {
					this.farms = response.data;
					this.reading = response.data.reading.toString()
					this.loading = false;
				});
			},
		}
	}
</script>

<style>
	@import url("../../../static/css/text.css");

	.new_img {
		display: flex;
		justify-content: center;
		margin: 15px;
	}
</style>