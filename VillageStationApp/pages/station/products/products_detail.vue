<template>
	<view class="sub_main" style="border-radius: 10px; background-color: white;  margin:8px 15px; height: 100vh;">
		 <view class="sub_title">{{ title }}</view>
		 <view class="sub_note">管理员 | {{createTime}}</view>
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
				imgUrl:'',
				createTime: ''
			}
		},
		created() {
		    this.getList(); 
		}, 
		onLoad(options) {
			this.getList(); 
		}, 
		methods: {
			getList() { 
				this.loading = true;  
				var products_detail = getApp().globalData.item;
				this.title = products_detail.title;
				this.content = products_detail.content;
				this.imgUrl = products_detail.remark;
				this.createTime = products_detail.createTime;
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
