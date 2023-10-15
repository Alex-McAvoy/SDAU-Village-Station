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

		<!-- 导航栏 -->
		<view class="tab_nav">
			<view class="navTitle" v-for="(item,index) in navList" :key="index">
				<view :class="{'active':isActive === index}" @click="checked(index)">
					{{ item.title }}
				</view>
			</view>
		</view>


		<!-- 内容1 -->
		<view class="nav_item">
			<view class="u-page" v-for="item in channelList" @click="skip(item)">
				<view class="album">
					<view class="album__avatar">
						<image :src="item.remark"
							style="width: 160px;height: 100px; border-radius: 10px; overflow: hidden; margin: 1vh;">
						</image>
					</view>
					<!-- 左上 -->
					<view class="album__content">
						<view style="margin-top: 8px;">
							<view style="margin-top: 8px;">
								<view class="main_title">
									{{ item.title }}
								</view>
								<view class="main_content"><u-parse :content="fixedSize(item.content)"></u-parse></view>
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
				<u-form-item label="类型" borderBottom ref="item2">
					<u-radio-group v-model="form.firstColumn">
						<u-radio :customStyle="{marginRight: '16px'}" v-for="(item, index) in selectType" :key="index"
							:label="item.name" :name="item.name">
						</u-radio>
					</u-radio-group>
				</u-form-item>
				<u-form-item>
					<u-upload ref="upload" :max-upload-count="1" :file-accept="'image/jpeg,image/png'" :url="upload.url"
						:header="upload.headers" :default-file-list.sync="upload.fileList"
						:process-style="{ color: '#409EFF' }" @progress="handleFileUploadProgress"
						@success="handleFileSuccess" :auto-upload="false">
					</u-upload>
				</u-form-item>
			</u-form>
		</u-modal>

		<u-button class="custom-style" color="#eeeeee " type="primary" shape="circle"
			style="  width: 100px; height: 100px; position: fixed;bottom: 50px;right: 30px; font-size: 50px;color:#00ae67;opacity: 0.5;"
			@click="handleAdd">+
		</u-button>
	</view>
</template>

<script>
	import {
		getChannelListByColumns,
		getChannel,
		addChannel,
		updateChannelReading
	} from "@/api/station/channel";
	export default {
		data() {
			return {
				upload: {
					url: 'http://your-upload-url', // 替换为你的上传接口地址
					headers: {}, // 替换为你需要的请求头信息
					fileList: [], // 用于存储上传成功的文件列表
				},
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

			this.getList(this.userInfo.deptId);
		},
		methods: {
			handleAdd() {
				this.upload.fileList = [];
			},
			handeUpdate(row) {
				this.upload.fileList = [{
					name: this.form.fileName,
					url: this.form.filePath
				}, ];
			},
			// 文件提交处理
			submitUpload() {
				this.$refs.upload.submit();
			},
			// 文件上传中处理
			handleFileUploadProgress(event, file, fileList) {
				this.upload.isUploading = true;
			},
			// 文件上传成功处理
			handleFileSuccess(response, file, fileList) {
				this.upload.isUploading = false;
				this.form.filePath = response.url;
			},
			getList(sort) {
				getChannelListByColumns(1, 0, sort).then(response => {
					this.channelList = response.data;
					this.loading = false;
				});
			},
			checked(index) {
				this.isActive = index;
				getChannelListByColumns(1, index,this.userInfo.deptId).then(response => {
					if(response.data.length == 0) {
						this.channelList = [{title: '',content: '该驿站暂无数据',remark:''}]
					} else {
						this.channelList = response.data;
					}
					// this.channelList = response.data;
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
				if (this.form.secondColumn == '供应') {
					this.form.secondColumn = 0
				} else {
					this.form.secondColumn = 1
				}
				addChannel(this.form).then(response => {
					this.form = ''
					this.$modal.msgSuccess("发布成功");
					this.checked(0);
				});
			},
			//跳转详情页
			skip(item) {
				getApp().globalData.item = item;
				updateChannelReading(item).then(response => {})
				uni.navigateTo({
					url: "channel_detail"
				})
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