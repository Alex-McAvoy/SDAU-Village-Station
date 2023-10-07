<template>
	<view class="body">
		<!-- 顶部 搜索栏 -->
		<div class="nav_bar">
			<u-row gutter="20" class="index_head">
				<u-col span="3">乡村驿站&nbsp;</u-col>
				<u-col span="7">
					<u-search :show-action="false"></u-search>
				</u-col>
				<u-col span="2">天气</u-col>
			</u-row>
		</div>

		<!-- 新闻资讯 -->
		<view class="main_context first_main_context" style="margin-top: 100px;">
			<view> <!-- 主体框 -->
				<u-row gutter="16" @click="goNewsList">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/index/index_news.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text @click="goNewsList" style="font-weight: 20px;" margin="0px 0px 0px 0px" text="新闻资讯" bold size="22"></u-text>
					</u-col>
					
					<u-col span="1">
						<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;" />
					</u-col>
				</u-row>
			</view>
			<view> <!-- 栏目标签 -->
			<u-sticky bgColor="#fff">
			    <u-tabs :list="list" :is-scroll="true" v-on:click="getData" lineColor="#2ed573"
					@change="change"></u-tabs>
			</u-sticky>
			</view>
			<view v-for="item in newsList"><!-- 栏目内容 -->
				<view class="news" >
					<view class="new_img">
						<img src="http://paper.people.com.cn/rmrb/images/2023-09/16/01/rmrb2023091601p27_b.jpg" alt=""
							style="width:100%;height: auto;overflow: hidden">
					</view>
					<view class="new_title" style="width:100%">{{item.title}}</view>
					<view class="new_origin"><span class="origin">来源</span><span>中国政府网</span>
					</view>
				</view>
			</view>
			
		</view>
		<!-- 热销农产 -->
		<view class="main_context first_main_context" @click="goProductList">
			<!-- 顶部栏 -->
			<u-row gutter="16">
				<u-col span="2" style="padding-left:10px;margin-right: 8px;">
					<image src="/static/images/index/index_product.png" style="height:25px;width:25px;" />
				</u-col>
				<u-col span="9" class="bar" style="margin-left:-25px">
					<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="热销农产" bold size="22"></u-text>
				</u-col>
				<u-col span="1">
					<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;" />
				</u-col>
			</u-row>
			<!-- 产品列表 -->
			<view class="flex_row product_list">
				<view class="product_list_item">
					<view class="flex_col">
						<image src="/static/images/index/index_goods.jpg" style="width:100%;height:120px;margin:3px" />
					</view>
					<view class="common_text_size">土豆6号</view>
					<view class="price common_text_size">
						￥1800/吨
					</view>
				</view>
				<view class="product_list_item">
					<view class="flex_col">
						<image src="/static/images/index/index_goods.jpg" style="width:100%;height:120px;margin:3px" />
					</view>
					<view class="common_text_size">土豆6号</view>
					<view class="price common_text_size">
						￥1800/吨
					</view>
				</view>
			</view>
		</view>
		<!-- 精彩视频 -->
		<view class="main_context first_main_context"@click="goVedioList">
			<!-- 顶部栏 -->
			<u-row gutter="16">
				<u-col span="2" style="padding-left:10px;margin-right: 8px;">
					<image src="/static/images/index/index_video_icon.png" style="height:20px;width:25px;" />
				</u-col>
				<u-col span="9" class="bar" style="margin-left:-25px">
					<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="精彩视频" bold size="22"></u-text>
				</u-col>
				<u-col span="1">
					<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;" />
				</u-col>
			</u-row>
			<view class="flex_row video_list">
				<view class="video_list_item">
					<view class="flex_col">
						<image src="/static/images/index/index_video.jpg" style="width:100%;height:120px;margin:3px" />
					</view>
					<view style="font-size: 13px;">扎费特旗农业技术</view>
				</view>
				<view class="video_list_item">
					<view class="flex_col">
						<image src="/static/images/index/index_video.jpg" style="width:100%;height:120px;margin:3px" />
					</view>
					<view style="font-size: 13px;">扎费特旗农业技术</view>
				</view>
			</view>
		</view>
		<!-- 热点问答 -->
		<view class="main_context first_main_context" @click="goToDetailPage2()">
			<!-- 顶部栏 -->
			<u-row gutter="16">
				<u-col span="2" style="padding-left:10px;margin-right: 8px;">
					<image src="/static/images/index/index_query.png" style="height:25px;width:28px;" />
				</u-col>
				<u-col span="9" class="bar" style="margin-left:-25px">
					<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="热点问答" bold size="22"></u-text>
				</u-col>
				<u-col span="1">
					<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;" />
				</u-col>

			</u-row>
			<view class="query">
				<view class="flex_col">
					<image src="/static/images/index/index_query2.png" style="height:20px;width:20px;" />
				</view>
				<view class="query_text flex_col">苹果从哪来</view>
				<view class="flex_col">
					<image src="/static/images/index/index_query1.png" style="height:20px;width:20px;" />
				</view>
				<view class="answer_text flex_col">山农自主研发高质量新品种优质苹果</view>
			</view>
		</view>
		<!-- 惠民贷款 -->
		<view class="main_context first_main_context">
			<u-row gutter="16">
				<u-col span="2" style="padding-left:10px;margin-right: 8px;">
					<image src="/static/images/index/index_load.png" style="height:23px;width:25px;" />
				</u-col>
				<u-col span="9" class="bar" style="margin-left:-25px">
					<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="惠民贷款" bold size="22"></u-text>
				</u-col>
			</u-row>
			<view>
				<image src="/static/images/index/farmers_load.png" style="width:100%;height:120px;margin:3px" />
			</view>
		</view>
		<br>
	</view>
</template>
<script>
	import {
		listColumns,
		getColumns,
		Columns
	} from "@/api/system/user.js";
	export default {
		onLoad: function() {},
		data() {
			return {
				cur: 0,
				text: '000',
				textList: ['1', '2', '3'],
				list: [{
					name: '政策法规',
				}, {
					name: '三农资讯'
				}, {
					name: '科技动态'
				}, {
					name: '典型案例'
				}],
				newsList:{}
			}
		},  created() {
			this.change({
				index: 0
			});
		},
		methods: {
			handleSelect(key, keyPath) {
				console.log(key, keyPath);
			},
			change(index) {
				console.log(index.index) 
				this.current = index;
				//请求 firstColumn=’新闻资讯‘ secondColumn=index.name
				this.loading = true;
				Columns(0, index.index).then(response => {
					this.newsList = response.rows;
					console.log(response);
					this.loading = false;
				});
			},
			getData() {
			},
			goNewsList() {
			    // this.$router.push('/pages/index/news/newsList');
				uni.navigateTo({
					url: "news/newsList"
				})
			},
			goToDetailPage2() {
				uni.navigateTo({
					url: "/pages/station/freeAsk/freeAsk"
				})
				// this.$router.push(`/pages/station/askExperts/shr`);
			},
			goProductList() {
			    // this.$router.push('/pages/index/news/newsList');
				uni.navigateTo({
					url: "product/product_detail"
				})
			},
			goVedioList() {
			    // this.$router.push('/pages/index/news/newsList');
				uni.navigateTo({
					url: "product/product_detail"
				})
			},
		}
	}
</script>

<style >
		@import url("../../static/css/index.css");
		@import url("../../static/css/nav_bar.css");
</style>
<style>

</style>