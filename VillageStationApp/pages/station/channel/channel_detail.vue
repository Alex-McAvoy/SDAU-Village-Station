<template>
	<view style="border-radius: 10px; background-color: white;  margin:8px 15px; height: 100vh;">
		 <view class="sub_title">{{ title }}</view>
		 <view class="sub_note">用户 | 2023-10-06 16:57</view>
		<view class="news">
			<view class="new_img">
				<image :src="imgUrl" alt=""
					style="width:100%;height: 200px;overflow: hidden">
			</view>
			<view class="sub_content"><u-parse :content="content"></u-parse></view>
		</view>
	</view>
</template>

<script>
	export default {
		onLoad: function() {},
		data() {
			return {
				loading: false,
				title: '',
				content: '',
				imgUrl:'/static/images/station/channel/cornharvester.jpg'
			}
		},
		created() {
		    this.getList(); 
		}, 
		methods: {
			getList() { 
				this.loading = true; 
				console.log(getApp().globalData.item);
				var channel_detail = getApp().globalData.item;
				this.title = channel_detail.title;
				this.content = channel_detail.content;
				this.imgUrl = channel_detail.remark;
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
