<template>
	<view class="sub_main" style="border-radius: 10px; background-color: white;  margin:8px 15px; height: 100vh;">
		<view class="sub_title">{{ item.title }}</view>
		<view class="sub_note">管理员 | {{item.createTime}}</view>
		<view class="news">
			<view class="new_img">
				<image :src="item.remark" alt="" style="width:100%;height: 200px;overflow: hidden">
			</view>
			<view class="sub_content"><u-parse :content="item.content"></u-parse></view>
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
	import {getInfoDetail} from "@/api/station/station"
	export default {
		data() {
			return {
				loading: false,
				item: '',
				reading: ''
			}
		},
		created() {
			this.getList();
		},
		methods: {
			getList() {
				this.loading = true;
				var id = getApp().globalData.item.newsId
				getInfoDetail(id).then(response => {
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
	@import url("../../../static/css/text.css");

	.new_img {
		display: flex;
		justify-content: center;
		margin: 15px;
	}
</style>