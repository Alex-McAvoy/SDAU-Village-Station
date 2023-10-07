<template>
	<view class="sub_main" style="border-radius: 10px; background-color: white;  margin:8px 15px; height: 100vh;">
		 <view class="sub_title">{{ title }}</view>
		 <view class="sub_note">管理员 | 2023-10-06 16:57</view>
		<view class="news">
			<view class="new_img">
				<image src="/static/images/station/newspecies/newPaddy.jpg" alt=""
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
			}
		},
		created() {
		    this.getList(); 
		}, 
		methods: {
			getList() { 
				this.loading = true;
				var species_detail = getApp().globalData.item;
				this.title = species_detail.title;
				this.content = species_detail.content;
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
