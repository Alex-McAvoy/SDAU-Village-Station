<template>
	<view>
		 <view class="tab_nav" style="border-radius: 10px; background-color: white;  margin:8px 15px; height: 100vh;">
		 <view class="title" style="margin-bottom: -1px;">肥城桃</view>
		 <u-text color="#909090" align="center" text="管理员 | 2023-10-06 16:57" bold size="13"></u-text>
		<view class="news">
			<view class="new_img">
				<image src="/static/images/station/station/sg.png" alt=""
					style="width:100%;height: 200px;overflow: hidden;margin-top: 2px;">
			</view>
			<view style="margin: 15px;">肥城桃特征：果大，单果重250～300克，最大900克以上。果实圆形，果尖微突，缝合线过顶，深而明显，梗洼深广。果皮米黄色，少数果的阳面具片状红晕。果皮厚，绒毛极多。肉质细嫩，乳白色，近核处果肉微红，呈辐射状；汁多，甜酸适中，含糖量14.99%，酸0.3%，可溶性固形物14%～20%，最高达23%；香味浓郁，品质极佳，粘核；核红褐色。果实于8月下旬至9月26日成熟。</view>
			<view class="new_text"><u-parse :content="content"></u-parse></view>
			<view style="color: red;size: 45px;margin: 15px;">------------该功能需要进一步完善-------------</view>
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
			}
		},
		created() {
		    this.getList(); 
		}, 
		methods: {
			getList() { 
				this.loading = true;  
				var news_detail = getApp().globalData.item;
				this.title = news_detail.title;
				this.content = news_detail.content;
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
	}
</style>
