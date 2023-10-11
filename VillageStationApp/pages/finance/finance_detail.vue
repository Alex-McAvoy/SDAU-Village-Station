<template>
	<view>
		 <view class="tab_nav" style="border-radius: 10px; background-color: white;  margin:8px 15px; height: 100vh;">
		 <view class="title">{{ title }}</view>
		 <u-text color="#909090" align="center" text="管理员 | 2023-10-06 16:57" bold size="13"></u-text>
		<view class="news">
			<view class="new_img">
				<image :src="remark" alt=""
					style="width:100%;height: 200px;overflow: hidden">
			</view>
			<view class="new_text"><u-parse :content="content"></u-parse></view>
		</view>
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
				remark: '',
				createTime: ''
			}
		},
		created() {
		    this.getList(); 
		}, 
		methods: {
			getList() { 
				this.loading = true;  
				var finance_detail = getApp().globalData.item;
				this.title = finance_detail.title;
				this.content = finance_detail.content;
				this.remark = finance_detail.remark;
				this.createTime = finance_detail.createTime;
			    this.loading = false;
			    },
			} 
	}
</script>

<style>
	.title {
		font-size: 21px;
		margin:15px;
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
