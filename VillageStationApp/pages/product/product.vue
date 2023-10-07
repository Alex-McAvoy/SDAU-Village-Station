<template>
	<view>
		<!-- 1 标题-->
		<div class="nav_bar">
			<u-row gutter="20" class="index_head">
				<u-col span="3">推优品&nbsp;</u-col>
				<u-col span="7">
					<u-search :show-action="false"></u-search>
				</u-col>
				<u-col span="2">天气</u-col>
			</u-row>
		</div>

		<!-- 轮播图 -->
		<view style="margin: 100px 5px 5px 10px;border-radius: 5px; overflow: hidden;">
			<u-swiper :list="list" height="180px"></u-swiper>
		</view>
		<!-- 农产品展示 -->
		<view style=" border-radius: 10px; background-color: white;  margin:15px">
		<view class="module" style="margin-bottom:20px">
			<image src="/static/images/station/station/nl.png"
				style="margin:8px 8px 0px 8px; width: 20px; height: 20px;">
			</image>
			<u-text style="font-weight: 20px;" margin="8px 0px 0px 0px" text="热销农产" bold size="22"></u-text>
		</view>
		<!-- 热销农产详情 -->
			<view class="u-page" v-for="item in newsList.slice(0, 3)">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image src="/static/images/product/lh.png"
								style="margin-left: 15px; width: 70px; height: 80px;border-radius: 8px; overflow: hidden;">
							</image>
						</view>
						<view class="album__content">
							<view style="font-size:18px; margin-bottom:10px;">{{ item.title }}</view>
							<view style="font-size:15px; margin-bottom:10px;"><u-parse :content="item.content"></u-parse></view>
							
						</view>
					</view>
				</view>
			</view>
		</view>
		<!-- 优品动态 -->
		<view style="border-radius: 10px; background-color: white;  margin:15px">
		<view class="module" style="margin-bottom:20px">
			<image src="/static/images/station/station/nl.png"
				style="margin:8px 8px 0px 8px; width: 20px; height: 20px;">
			</image>
			<u-text style="font-weight: 20px;" margin="8px 0px 0px 0px" text="优品动态" bold size="22"></u-text>
		</view>
		<!-- 优品动态详情 -->
		<view class="u-page" v-for="item in newsList.slice(3, 6)">
			<view class="u-demo-block">
				<view class="album">
					<view class="album__avatar">
						<image src="/static/images/product/lh.png"
							style="margin-left: 15px; width: 70px; height: 80px;border-radius: 8px; overflow: hidden;">
						</image>
					</view>
					<view class="album__content">
						<view style="font-size:18px; margin-bottom:10px;">{{ item.title }}</view>
						<view style="font-size:15px; margin-bottom:10px;"><u-parse :content="item.content"></u-parse></view>
					</view>
				</view>
			</view>
		</view>
	</view>
	</view>
</template>

<script>
	import {
		listProducts,
		getProducts,
		getProductsByColumns
	} from "@/api/system/products";
	export default {
		name: "Product",
		onLoad: function() {},
		data() {
			return {
				newsList: [],
				current: 0,
				value1: 0,
				list: [
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
			click1(e) {
				console.log('click1', e);
			},
			change5(name) {
				if (name === 1) return uni.$u.toast('请您先登录')
				else this.value5 = name
			},
			/** 查询其它栏目*/
			getList() {
				this.loading = true;
				listProducts(this.queryParams).then(response => {
					this.newsList = response.rows;
					console.log(this.newsList);
					this.loading = false;
				});
			},
			// 多选框选中数据
			handleSelectionChange(selection) {
				this.ids = selection.map(item => item.newsId)
				this.single = selection.length !== 1
				this.multiple = !selection.length
			},
		}
	}
</script>

<style>
	@import url("../../static/css/index.css");
	@import url("../../static/css/nav_bar.css")
</style>
<style lang="scss">

	/* 顶部样式 */
	.index_head {
		color: azure;
		height: 100px;
		padding: 0px 15px 0px 15px;
		background: linear-gradient(#00ae67, #00ae67, #00ae67, #00ae67,#2ed573, #7bed9f, #f1f2f6);
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
			background-color:#fff;
			padding: 5px;
			border-radius: 3px;
		}

		&__content {
			margin-left: 10px;
			flex: 1;
		}
	}
</style>