<template>
	<view>
		<!-- 搜索框-->
		<view style=" display: flex; align-items: center;  background-color: white; justify-content: space-between;">
			<!-- 定位 -->
			<view style="margin-left: 1vh; align-items: center; margin-bottom: 10px;">
				<image src="../../static/images/station/onlinebase/location.png" style="width: 15px; height: 15px;">
				</image>
				<span style="color:#00ae67  ; margin-left: 5px; ">泰安</span>
			</view>
			<!-- 搜索框 -->
			<view style="width: 80%; height: 20px; margin-bottom: 20px; ">
				<u-search placeholder="搜索" actionText=""></u-search>
			</view>
		</view>
		<!-- 导航栏 -->
		<view class="tab_nav" style="border-radius: 10px; background-color: white;  margin:8px 15px">
			<view class="navTitle" v-for="(item,index) in navList" :key="index">
				<view :class="{'active':isActive === index}" @click="checked(index)">
					{{item.title}}
				</view>
			</view>
		</view>

		<!-- 内容1 -->
		<view class="nav_item">
			<view class="u-page" v-for="item in channelList" @click="skip(item)">
				<view class="album">
					<view class="album__avatar">
						<image src="../../static/images/station/channel/cornharvester.jpg"
							style="width: 160px;height: 100px; border-radius: 10px; overflow: hidden; margin: 1vh;">
						</image>
					</view>
					<!-- 左上 -->
					<view class="album__content">
						<view style="margin-top: 8px;">
							<view style="margin-top: 8px;">
								<view style="font-size:18px; margin-bottom:10px; font-weight: bold;">
									{{ item.title }}
								</view>
								<view style="font-size:15px; margin-bottom:10px;"><u-parse
										:content="item.content"></u-parse></view>
							</view>
						</view>
					</view>
				</view>
			</view>
		</view>
		<!-- 悬浮框 -->
		<u-modal :show="show" :title="title" @confirm="submitForm" @cancel="cancel" :showCancelButton="true">
			<u-form :model="form" ref="form">
				<u-form-item label="标题">
					<u-input v-model="form.title" placeholder="请输入标题" />
				</u-form-item>
				<u-form-item label="内容">
					<u-input v-model="form.content" placeholder="请输入内容" />
				</u-form-item>
				<u-form-item label="类型"  borderBottom ref="item2">
					<u-radio-group v-model="form.firstColumn">
						<u-radio :customStyle="{marginRight: '16px'}" v-for="(item, index) in selectType" :key="index"
							:label="item.name" :name="item.name">
						</u-radio>
					</u-radio-group>
				</u-form-item>
			</u-form>

		</u-modal>
		<u-button class="custom-style" color="#00ae67 " type="primary" shape="circle"
			style="  width: 100px; height: 100px; position: fixed;bottom: 50px;right: 30px; font-size: 50px;"
			@click="handleAdd">+
		</u-button>
	</view>
</template>

<script>
	import {
		listChannel,
		getChannel,
		delChannel,
		addChannel,
		updateChannel,
		listByColumn
	} from "@/api/system/channel";
	export default {
		data() {
			return {
				form: {},
				current: 0,
				text: '000',
				show: false,
				title: '添加问题',
				// 找渠道表格数据
				channelList: [],
				isActive: 0,
				navList: [{
					index: 0,
					title: '供应'
				}, {
					index: 1,
					title: "求购"
				}],
				productsList: [],
				current: 0,
				selectType: [{
						name: '供应',
						disabled: false
					},
					{
						name: '求购',
						disabled: false
					},
				],
			}
		},
		created() {
			this.loading = true;
			this.checked(0);
		},
		methods: {
			checked(index) {
				this.isActive = index;
				console.log(this.isActive);
				listByColumn(this.isActive).then(response => {
					console.log(response);
					this.channelList = response.rows;
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
			/** 新增按钮操作 */
			handleAdd() {
				this.show = true;
				this.open = true;
				this.title = "发布信息";
			},
			// 取消按钮
			cancel() {
				this.show = false;
				this.form = {};
			},
			/** 提交按钮 */
			submitForm() {
				console.log(this.form)
				addChannel(this.form).then(response => {
					this.$modal.msgSuccess("发布成功");
					this.show = false;
					this.checked(0);
				});
			},
			//跳转详情页
			skip(item) {
				getApp().globalData.item=item;
				console.log(getApp().globalData.item);
				uni.navigateTo({
					url: "channel/channel_detail"
				}) 
			}
		}
	}
</script>

<style lang="scss">
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
			flex: 2;
		}
	}

	.u-page {
		background-color: white;
		height: 100%;
		border-radius: 5px;
		margin: 15px;
	}

	// 悬浮框强制按钮
	.list-cell {
		display: flex;
		box-sizing: border-box;
		width: 100%;
		padding: 10px 24rpx;
		overflow: hidden;
		color: #323233;
		font-size: 14px;
		line-height: 24px;
		background-color: #fff;
	}

	// 导航栏字体
	::v-deep .u-tabs__wrapper__nav__item__text {
		font-size: 19px !important;
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