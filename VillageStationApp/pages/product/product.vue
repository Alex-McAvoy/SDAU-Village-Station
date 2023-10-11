<template>
	<view>
		<!-- 标题-->
		<div class="nav_bar">
			<u-row gutter="20" class="index_head">
				<u-col span="3">优品&nbsp;</u-col>
				<u-col span="7">
					<u-search :show-action="false"></u-search>
				</u-col>
			</u-row>
		</div>

		<!-- 轮播图 -->
		<view style="margin: 100px 5px 5px 10px;border-radius: 5px; overflow: hidden;">
			<u-swiper :list="sildeImg" height="180px"></u-swiper>
		</view>
		
		<!-- 优品品类 -->
		<view style=" border-radius: 10px; background-color: white;  margin:15px">
			<view class="module" style="margin-bottom:20px">
				<image src="/static/images/station/station/nl.png"
					style="margin:8px 8px 0px 8px; width: 20px; height: 20px;">
				</image>
				<u-text style="font-weight: 20px;" margin="8px 0px 0px 0px" text="优品品类" bold size="22"></u-text>
			</view>
			
			<view class="u-page" v-for="item in Array.from(productList1).slice(0, 3)">
				<view class="u-demo-block" @click="getProductDetail(item)">
					<view class="album">
						<view class="album__avatar">
							<image :src="item.remark"
								style="margin-left: 5px; width: 80px; height: 80px;border-radius: 8px; overflow: hidden;">
							</image>
						</view>
						<view class="album__content">
							<view class="station_title">{{ item.title }}</view>
							<view class="main_content"><u-parse :content="fixedSize(item.content)"></u-parse></view>
						</view>
					</view>
				</view>
			</view>
		</view>
		
		<!-- 优品品牌 -->
		<view style="border-radius: 10px; background-color: white;  margin:15px">
			<view class="module" style="margin-bottom:20px">
				<image src="/static/images/station/station/nl.png"
					style="margin:8px 8px 0px 8px; width: 20px; height: 20px;">
				</image>
				<u-text style="font-weight: 20px;" margin="8px 0px 0px 0px" text="优品品牌" bold size="22"></u-text>
			</view>
			
			<view class="u-page" v-for="item in Array.from(productList2).slice(0, 3)">
				<view class="u-demo-block" @click="getProductDetail(item)">
					<view class="album">
						<view class="album__avatar">
							<image :src="item.remark"
								style="margin-left: 15px; width: 70px; height: 80px;border-radius: 8px; overflow: hidden;">
							</image>
						</view>
						<view class="album__content">
							<view class="station_title">{{ item.title }}</view>
							<view class="main_content"><u-parse :content="fixedSize(item.content)"></u-parse></view>
						</view>
					</view>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	import {
		getProductsByColumns
	} from "@/api/station/products";
	
	export default {
		name: "Product",
		onLoad: function() {},
		data() {
			return {
				productList1: { //优品品类
					remark: '',
					title: '',
					content: ''
				},
				productList2: { //优品品牌
					remark: '',
					title: '',
					content: ''
				},
				current: 0,
				value1: 0,
				sildeImg: [
					'../../static/images/station/freeAsk/orange.jpg',
					'../../static/images/station/freeAsk/pitaya.jpg',
					'../../static/images/station/freeAsk/banana.png',
				],
			}
		},
		created() {
			this.getList();
		},
		methods: {
			getList() {
				this.loading = true;
				getProductsByColumns(1,0).then(response => {
					this.productList1 = response.data;
					this.loading = false;
				});
				getProductsByColumns(1,1).then(response => {
					this.productList2 = response.data;
					this.loading = false;
				});
			},
			getProductDetail(item) {
				getApp().globalData.item = item
				uni.navigateTo({
					url: "/pages/station/products/products_detail"
				})
			},
			fixedSize(content) {
				if (content != null) {
					if (content.length < 25) return content;
					else return content.substring(0, 25) + "...."
				}
				return content;
			},
		}
	}
</script>

<style>
	@import url("../../static/css/index.css");
	@import url("../../static/css/nav_bar.css")
</style>
<style lang="scss">
	@import url("../../static/css/text.css");

	/* 顶部样式 */
	.index_head {
		color: azure;
		height: 100px;
		padding: 0px 15px 0px 15px;
		background: linear-gradient(#00ae67, #00ae67, #00ae67, #00ae67, #2ed573, #7bed9f, #f1f2f6);
	}

	.contain {
		display: flex;
		align-items: center;
	}

	.module {
		display: inline-flex;
		flex-direction: row;
		align-items: center;
	}

	.album {
		@include flex;
		align-items: flex-start;

		&__avatar {
			background-color: #fff;
			padding: 5px;
			border-radius: 3px;
		}

		&__content {
			margin-left: 10px;
			flex: 1;
		}
	}
</style>