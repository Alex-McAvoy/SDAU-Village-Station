<template>
	<view class="u-page">
		<!-- 顶部 搜索栏 -->
		<div class="nav_bar" style="background-color: white;">
					<u-row gutter="20" class="index_head">
						<u-col span="3">&nbsp;</u-col>
						<u-col span="7">
							<u-search :show-action="true" action-text="搜索" v-model="query"bg-color="#f2f2f2"  margin="5px 0 5px 0"  height="25px" mar @custom="search" @search="search"/>
						</u-col>
					</u-row>
				</div>
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
		<view class="album__content" v-for="item in farmList" @click="skip(item)">
			<view class="main_title">
				{{ item.title }}
			</view>
			<view class="main_content"><u-parse :content="fixedSize(item.content)"></u-parse></view>
			<image :src="item.remark" style="width: 150px;height: 150px; padding-top: 1vh;"></image>
		</view>
	</view>
</template>

<script>
	import {
		getFarm,
		addFarmLikes,
		getFarmListByColumn,
		updateFarmReading
	} from "@/api/station/farm";
	export default {
		name: "Farm",
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
				}, {
					index: 2,
					title: "农机装备"
				}, {
					index: 3,
					title: "种子树苗"
				}],
				userInfo: { // 用户信息
					userId: '',
					deptId: ''
				},
				query: ''
			}
		},
		created() {
			this.userInfo.userId = this.$store.state.user.userId
			this.userInfo.deptId = this.$store.state.user.deptId
			this.loading = true;
			this.getList(this.userInfo.deptId);
		},
		methods: {
			//跳转详情页
			skip(item) {
				getApp().globalData.item = item;
				updateFarmReading(item).then(response => {
				})
				uni.navigateTo({
					url: "farm_detail"
				})
			},
			// //跳转详情页
			// goToDetailPage(id) {
			// 	updateFarmReading({
			// 		newsId: id
			// 	}).then(response => {})
			// 	uni.navigateTo({
			// 		url: "/pages/station/farm/farm_detail?id=" + id
			// 	});
			// },
			/** 查询买农资列表 */
			checked(index) {
				this.isActive = index;
				getFarmListByColumn(1, index,this.userInfo.deptId).then(response => {
					if(response.data.length == 0) {
						this.farmList = [{title: '',content: '该驿站暂无数据',remark:''}]
					} else {
						this.farmList = response.data;
					}
					// this.farmList = response.data;
					this.total = response.total;
					this.loading = false;
				});
			},
			/** 查询其它栏目*/
			getList(sort) {
				this.loading = true;
				getFarmListByColumn(1, 0, sort).then(response => {
					this.farmList = response.data;
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