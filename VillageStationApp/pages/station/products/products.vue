<template>
	<view>
		<!-- 动态农业资讯 -->
		<!-- url实现页面跳转 -->
		<view>
			<u-notice-bar :text="text1" mode="closable" speed="100" url="/pages/componentsB/tag/tag" bgColor='#00ae67 '
				color="yellow"></u-notice-bar>
		</view>
		<!-- 轮番滚动 -->
		<view>
			<u-swiper :list="list3" indicator indicatorMode="line" circular></u-swiper>
		</view>

		<!-- 导航栏 -->
		<view class="tab_nav">
			<view class="navTitle" v-for="(item,index) in navList" :key="index">
				<view :class="{'active':isActive === index}" @click="checked(index)">
					{{item.title}}
				</view>
			</view>
		</view>
		<!-- 详情展示 -->
		<view v-for="item in productsList" @click="skip(item)">
			<view style=" margin: 15px; border-radius: 5px;  background-color: white;">
			<view>
				<view style=" margin: 15px;">
					<view>
						<view>
							<view>
								<view class="main_title">
									{{ item.title }}
								</view>
								<view class="main_content"><u-parse
										:content="item.content"></u-parse></view>
								<image src="../../../static/images/station/products/peach.jpg"
									style="width: 350px;height: 180px; padding-left: 5vh; padding-right: 5vh; "></image>
								<!-- <u-album :urls="urls1" keyName="src2" style="margin-bottom: 8px;"></u-album> -->
							</view>
						</view>
					</view>
				</view>
			</view>
		</view>
		</view>

		<!-- <view style="border-radius: 5px; margin-bottom: 1vh;background-color: white;">
			<u-tabs :list="list1" @click="click" class="tabs" style="align-items: center;" lineColor="#00ae67 "
				lineWidth="50"> </u-tabs>
		</view> -->
	</view>
</template>

<script>
	import {
		listProducts,
		getProducts,
		getProductsByColumns
	} from "@/api/system/products";
	export default {
		name: "Products",
		onLoad: function() {},
		data() {
			return {
				isActive: 0,
				navList: [{
					index: 0,
					title: '我的优品'
				}, {
					index: 1,
					title: "品牌展示"
				}],
				productsList: [],
				current: 0,
				text: '000',
				list3: [
					'../../../static/images/station/products/produepolicy1.jpg',
					'../../../static/images/station/products/produepolicy2.jpg',
					'../../../static/images/station/products/produepolicy3.jpg',
				],
				text1: '甘肃文县茶亮相北京茶博会 甘茶品牌魅力绽放'
			}
		},
		created() {
			this.getList();
		},
		methods: {
			//跳转详情页
			skip(item) {
				getApp().globalData.item=item;
				console.log(getApp().globalData.item);
				uni.navigateTo({
					url: "products_detail"
				}) 
			},
			checked(index) {
				this.isActive = index;
				// var secondColumn = '我的优品';
				// if (index == 1) secondColumn = '品牌展示'
				getProductsByColumns(1, index+2).then(response => {
					console.log(response)
					this.productsList = response.data;
					console.log(this.productsList);
					this.loading = false;
				});
			},

			scrolltolower() {
				this.loadmore()
			},
			handleSelect(key, keyPath) {
				console.log(key, keyPath);
			},
			/** 查询其它栏目*/
			getList() {
				this.loading = true;
				getProductsByColumns(1, 2).then(response => {
					console.log(response)
					this.productsList = response.data;
					console.log(this.productsList);
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
<style lang="scss">
	@import url("../../../static/css/text.css");
	.album__content {

		// text-indent: 20px; //缩进了20px
		// letter-spacing: 3px; //字体间距为8px
		// margin: 15px;
		// border-bottom: 1px solid #979797;
		border-radius: 10px;
		background-color: white;

	}

	.album {
		@include flex;
		align-items: flex-start;


		&__avatar {
			background-color: $u-bg-color;
			padding: 5px;
			border-radius: 3px;
		}

		&__content {
			margin-left: 10px;
			flex: 1;
		}
	}

	image {
		margin-bottom: 2vh;
	}

	::v-deep .u-tabs__wrapper__nav__item__text {
		font-size: 19px !important;
	}

	// ::v-deep .u-text__value--primary {
	// 	color: #2ed573 !important;
	// }
	.active {
		position: relative;
		color: #00ae67;
	}

	.active::after {
		content: "";
		position: absolute;
		width: 100rpx;
		height: 4rpx;
		background-color: #00ae67;
		left: 0px;
		right: 0px;
		bottom: 0px;
		margin: auto;
	}
</style>