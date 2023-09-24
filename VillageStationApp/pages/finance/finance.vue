<template>
	<view class="body">
		<!-- 顶部 搜索栏 -->
		<u-row gutter="20" class="index_head">
			<u-col span="3">金融&nbsp;</u-col>
			<u-col span="7">
				<u-search :show-action="false"></u-search>
			</u-col>
			<u-col span="2">天气</u-col>
		</u-row>
		<!-- 金融产品 -->
		<view class="main_context first_main_context">
			<view class="load_product_list">
				<view class="load_product_item">
					<view> </view>
					<view class="flex_row">
						<image src="/static/images/finance/finance_product2.png" style="width:80px;height:80px"/>
					</view>
					<view style="text-align: center;">小额农贷</view>
					<view class=""></view>
				</view>
				<view class="load_product_item">
					<view> </view>
					<view class="flex_row">
						<image src="/static/images/finance/finance_product1.png" style="width:80px;height:80px"/>
					</view>
					<view style="text-align: center;">合作社金融</view>
					<view class=""></view>
				</view>
				<view class="load_product_item">
					<view> </view>
					<view class="flex_row">
						<image src="/static/images/finance/finance_product3.png" style="width:80px;height:80px"/>
					</view>
					<view style="text-align: center;">招商引资</view>
					<view class=""></view>
				</view>
			</view>
		</view>
		<!-- 金融资讯 -->
		<view class="main_context">
			<view> <!-- 主体框 -->
				<u-row gutter="16">
					<u-col span="2">
						<image src="/static/images/index/index_news.png" style="height:20px;width:20px;"/>
					</u-col>
					<u-col span="9" class="bar">金融资讯</u-col>
					<u-col span="1">
						<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;"/>
					</u-col>
				</u-row>
			</view>
			<view> <!-- 栏目标签 -->
				<u-tabs :list="list" :is-scroll="true" v-on:click="getData" lineColor="#2ed573"
					@change="change"></u-tabs>
			</view>
			<view><!-- 栏目内容 -->
				<view class="news">
					<view class="new_img">
						<image src="/static/images/finance/finance.png" alt=""
							style="width:100%;max-height: 70px;overflow: hidden"/>
					</view>
					<view class="new_title">【新时代新征程新伟业——实干笃行】安徽扩外贸引外资 提高开放型经济水平</view>
					<view class="new_origin"><span class="origin">来源</span><span>中国政府网</span>
					</view>
				</view>
			</view>
			 
		</view>
		
		<!-- 视频 -->
		<view class="main_context first_main_context">
			<!-- 顶部栏 -->
			<u-row gutter="16">
				<u-col span="2">
					<image src="/static/images/index/index_video_icon.png" style="height:20px;width:20px;"/>
				</u-col>
				<u-col span="9" class="bar">金融产品介绍</u-col>
				<u-col span="1">
					<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;"/>
				</u-col>
			</u-row>
			<view class="flex_row video_list">
				<view class="video_list_item">
					<view class="flex_col">
						<image class="video_img" src="/static/images/finance/load1.jpg" mode="scaleToFill"/>
					</view>
					<view style="font-size: 13px;">金融活水润“三夏”</view>
				</view>
				<view class="video_list_item">
					<view class="flex_col">
						<image class="video_img" src="/static/images/finance/load2.jpg" mode="scaleToFill"/>
					</view>
					<view style="font-size: 13px;">助农惠企保民生</view>
				</view>
			</view>
		</view>
		
	</view>
</template>
<script>
	export default {
		onLoad: function() {},
		data() {
			return {
				cur: 0,
				text: '000',
				textList: ['1', '2', '3'],
				list: [{
					name: '全部 ',
				}, {
					name: '金融助农',
				}, {
					name: ' 业务新闻 '
				}, {
					name: ' 相关案例 '
				}, ],
			}
		},
		methods: {
			handleSelect(key, keyPath) {
				console.log(key, keyPath);
			},
			change(index) {
				this.cur = index;
				console.log(index)
				this.text = this.textList[index];
			},
			getData() {

			}
		}
	}
</script>

<style src="../../static/css/index.css">
</style>
<style>
	.load_product_list {
		display: grid;
		grid-template-columns: 1fr 1fr 1fr;
		grid-column-gap: 10%;
		margin: 6px 10px;
	}
	.load_product_item {
		border-radius: 10px; 
		display: grid;
		grid-template-rows: 1fr 2fr 1fr 1fr;
		height: 100px;
		max-width: 110px;
	}
	.load_product_text {
		text-align: center;
		color: #fff;
	}
	.video_list_item{
		height:160px;
	}
	.video_img{
		width:100%;
		height: 180px;
	}
</style>