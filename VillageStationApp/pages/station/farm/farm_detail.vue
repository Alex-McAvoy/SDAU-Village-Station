<template>
	<view style="border-radius: 10px; background-color: white; margin:8px 15px; height: 100vh;" :model="farms">
		<view class="sub_title">{{ farms.title }}</view>
		<view class="sub_note">管理员 | 2023-10-06 16:57</view>
		<view class="news">
			<view class="new_img">
				<image :src="farms.remark" alt=""
					style="width:100%;height: 200px;overflow: hidden">
			</view>
			<view class="sub_content"><u-parse :model="farms">{{ farms.content }}</u-parse></view>
		</view>
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