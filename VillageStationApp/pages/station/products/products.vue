<template>
	<view>
		<!-- 顶部 搜索栏 -->
		<div class="nav_bar" style="background-color: white;">
			<u-row gutter="20" class="index_head">
				<u-col span="3">&nbsp;</u-col>
				<u-col span="7">
					<u-search :show-action="true" action-text="搜索" v-model="query" bg-color="#f2f2f2"
						margin="5px 0 5px 0" height="25px" mar @custom="search" @search="search" />
				</u-col>
			</u-row>
		</div>
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
									<view class="main_content"><u-parse :content="fixedSize(item.content)"></u-parse>
									</view>
									<image :src="item.remark"
										style="width: 350px;height: 180px; padding-left: 5vh; padding-right: 5vh; ">
									</image>
									<!-- <u-album :urls="urls1" keyName="src2" style="margin-bottom: 8px;"></u-album> -->
								</view>
							</view>
						</view>
					</view>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	import {
		queryProducts,
		getProductById,
		getProductsBySort,
		updateProductsReading
	} from "@/api/station/products";
	export default {
		name: "Products",
		data() {
			return {
				isActive: 0,
				navList: [{
					index: 0,
					title: '优品品类'
				}, {
					index: 1,
					title: "优品品牌"
				}],
				productsList: [],
				current: 0,
				text: '000',
				list3: [
					'../../../static/images/station/products/produepolicy1.jpg',
					'../../../static/images/station/products/produepolicy2.jpg',
					'../../../static/images/station/products/produepolicy3.jpg',
				],
				text1: '甘肃文县茶亮相北京茶博会 甘茶品牌魅力绽放',
				userInfo: { // 用户信息
					userId: '',
					deptId: ''
				},
				query:'',
			}
		},
		created() {
			this.userInfo.userId = this.$store.state.user.userId
			this.userInfo.deptId = this.$store.state.user.deptId
			this.getList(this.userInfo.deptId);
		},
		methods: {
			//跳转详情页
			skip(item) {
				getApp().globalData.item = item;
				updateProductsReading(item).then(response => {
				})
				uni.navigateTo({
					url: "products_detail"
				})
			},
			checked(index) {
				this.isActive = index;
				getProductsBySort(1, index,this.$store.state.user.deptId).then(response => {
					if(response.data.length == 0) {
						this.productsList = [{title: '',content: '该驿站暂无数据',remark:''}]
					} else {
						this.productsList = response.data;
					}
					this.loading = false;
				});
			},
			scrolltolower() {
				this.loadmore()
			},
			/** 查询其它栏目*/
			getList(sort) {
				this.loading = true;
				getProductsBySort(1, 0,sort).then(response => {
					this.productsList = response.data;
					this.loading = false;
				});
			},
			// 多选框选中数据
			handleSelectionChange(selection) {
				this.ids = selection.map(item => item.newsId)
				this.single = selection.length !== 1
				this.multiple = !selection.length
			},
			fixedSize(content) {
				if (content != null) {
					if (content.length < 35) return content;
					else return content.substring(0, 35) + "...."
				}
				return content;
			},
			search(query) {
				getApp().globalData.query = query;
				uni.navigateTo({
					url: "/pages/station/query_result"
				})
			},
		}
	}
</script>
<style lang="scss">
	@import url("../../../static/css/text.css");

	.album__content {
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