<template>
	<view class="u-page">
		<!-- 导航栏 -->
		<view style=" margin: 15px; border-radius: 5px; background-color: white;">
		<view class="tab_nav">
			<view class="navTitle" v-for="(item,index) in navList" :key="index">
				<view :class="{'active':isActive === index}" @click="checked(index)">
					{{item.title}}
				</view>
			</view>
		</view>
		</view>
		<!-- 内容一 -->
		<view class="album__content" v-for="item in farmList" @click="goToDetailPage(item.newsId)">
			<view style="font-size:20px; color: #00ae67 ; font-weight: bold; margin-left: 15px; padding-top: 5px;">
				<span style="margin-top: 100px;">{{ item.title }}</span>
			</view>
			<view style="font-size:15px; margin-bottom:10px; margin: 15px;" ><u-parse :content="item.content"></u-parse></view>
			<image src="../../static/images/station/purchaseFarm/manure.jpeg"
				style="width: 150px;height: 150px; padding-top: 1vh;"></image>
		</view>
	</view>
</template>

<script>
	import { listFarm, getFarm, getInfo} from "@/api/station/farm";
	export default {
		name: "Farm",
		onLoad: function() {},
		data() {
			return {
				form: {},
				current: 0,
				isActive: 0,
				// 买农资表格数据
				farmList: [],
				current: 0,
				text: '000',
				navList: [{
					index: 0,
					title: '节肥增效'
				}, {
					index: 1,
					title: "虫害防控"
				},{
					index: 2,
					title: "农机装备"
				},{
					index: 3,
					title: "种子树苗"
				}],
			}
		},
		created() {
			this.loading = true;
			this.checked(0);
		},
		methods: {
			//跳转详情页
			goToDetailPage(id) {
				// console.log(id);
				uni.navigateTo({
					url: "/pages/station/farm/farm_detail?id=" + id
				});
			},
			click(item) {
				console.log('item', item);
			},
			/** 查询买农资列表 */
			checked(index) {
				this.isActive = index;
				getInfo([index]).then(response => {
					// console.log(response);
					this.farmList = response.data;
					this.total = response.total;
					this.loading = false;
				});
			},
			// 多选框选中数据
			handleSelectionChange(selection) {
				this.ids = selection.map(item => item.newsId)
				this.single = selection.length !== 1
				this.multiple = !selection.length
			},
			scrolltolower() {
				this.loadmore()
			},
		}
	}
</script>

<style lang="scss">
	.album__content {
		margin: 15px;
		// border-bottom: 1px solid #979797;
		border-radius: 5px;
		background-color: white;

	}

	.u-page {
		// background-color: white;
		height: 100%;
		border-radius: 5px;
		margin: 1vh;
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
			// margin-left: 10px;
			flex: 1;
		}
	}

	image {
		margin-bottom: 2vh;
		margin-left: 3vh;
	}

	::v-deep .u-tabs__wrapper__nav__item__text {
		font-size: 19px !important;
	}

	::v-deep .u-text__value {
		margin-left: 3vh !important;
		margin-top: 1vh;
	}
	.tab_nav {
		display: flex;
		justify-content: center;
		align-items: center;
	}
	
	.tab_nav .navTitle {
		height: 90rpx;
		line-height: 90rpx;
		width: 100%;
		text-align: center;
		font-size: 32rpx;
		font-family: Alibaba PuHuiTi;
		color: #333;
	}
	
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