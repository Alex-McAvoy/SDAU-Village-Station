<template>
	<view class="setting-container" :style="{height: `${windowHeight}px`}">
		<view class="menu-list">
			<view class="list-cell list-cell-arrow" @click="handleToPwd">
				<view class="menu-item-box">
					<view class="iconfont icon-password menu-icon"></view>
					<view>修改密码</view>
				</view>
			</view>
			<view class="list-cell list-cell-arrow" @click="handleToUpgrade">
				<view class="menu-item-box">
					<view class="iconfont icon-refresh menu-icon"></view>
					<view>检查更新</view>
				</view>
			</view>
			<view class="list-cell list-cell-arrow" @click="handleCleanTmp">
				<view class="menu-item-box">
					<view class="iconfont icon-clean menu-icon"></view>
					<view>清理缓存</view>
				</view>
			</view>
		</view>
		<view class="cu-list menu">
			<view class="cu-item item-box">
				<view class="content text-center" @click="handleLogout">
					<text class="text-black">退出登录</text>
				</view>
			</view>
		</view>

		<!-- 更新进度条 -->
		<view class="version-box" v-show="checkInfo.showProgress">
			<view class="version-item">下载进度</view>
			<view class="version-item">
				<progress :percent="checkInfo.currentProgress" show-info :stroke-width="8" active-color="#24afd6" />
			</view>
		</view>

	</view>
</template>

<script>
	import config from "@/config";

	export default {
		data() {
			return {
				windowHeight: uni.getSystemInfoSync().windowHeight,
				// 版本信息检查
				checkInfo: {
					// 当前版本信息
					current: 0,
					// 服务器版本信息
					online: 0,
					// 是否更新
					updateFlag: false,
					// apk包地址
					url: '',
					// 显示进度条
					showProgress: false,
					// 当前进度
					currentProgress: 0,
					// 下载定时器
					downloader: null,
					// 本地下载路径
					filePath: "file://storage/emulated/0/Android/data/uni.UNIFD05824/apps/__UNI__FD05824/doc/uniapp_save/",
					// 文件名
					filename: ""
				}
			}
		},
		created() {
			// 检查版本信息			
			this.checkInfo.current = Number(config.appInfo.version.split('.').join(''))
			uni.request({
				url: 'http://202.194.131.202:9000/village-station/apk/version.json',
				method: 'get'
			}).then(response => {
				this.checkInfo.filename = "乡村驿站-" + response[1].data.version + ".apk"
				this.checkInfo.online = Number(response[1].data.version.split('.').join(''))

				// 当前版本号小于服务器版本号
				if (this.checkInfo.current < this.checkInfo.online) {
					this.checkInfo.updateFlag = true
					this.checkInfo.url = response[1].data.url
				}
			})
		},
		methods: {
			handleToPwd() {
				this.$tab.navigateTo('/pages/mine/pwd/index')
			},
			// 版本更新
			handleToUpgrade() {
				if (this.checkInfo.updateFlag == false) {
					this.$modal.showToast('当前已为最新版本~')
				} else {
					this.$modal.confirm('检测到新版本，是否更新？').then(() => {
						this.downloadApk(this.checkInfo.url)
					}).catch(() => {
						this.checkInfo.showProgress = false;
						uni.showToast({
							title: "更新失败!",
							icon: "error",
						});
					})
				}
			},
			// 清除缓存
			handleCleanTmp() {
				this.$modal.showToast('模块建设中~')
			},
			// 退出登录
			handleLogout() {
				this.$modal.confirm('确定注销并退出系统吗？').then(() => {
					this.$store.dispatch('LogOut').then(() => {
						this.$tab.reLaunch('/pages/index')
					})
				})
			},
			// 下载新版本
			downloadApk(url) {
				// 开启进度条
				this.checkInfo.showProgress = true;
				uni.showLoading({
					title: '正在下载'
				});
				// 开启下载定时器
				this.downloadTime()
				// // 开启下载任务
				// var _this = this
				// let dtask = plus.downloader.createDownload(url, {filename: this.checkInfo.filename} ,(d,status) => {
				// 	if (status == 200) { // 下载成功
				// 		// 关闭进度条
				// 		_this.checkInfo.showProgress = false
				// 		uni.hideLoading();
				// 		// 获取绝对路径
				// 		console.log(d.filename)
				// 		let fileSavePath = plus.io.convertLocalFileSystemURL(d.filename)
				// 		console.log(fileSavePath)
				// 		//let fileSavePath = _this.checkInfo.filePath + d.filename
				// 		uni.showToast({
				// 			icon: 'none',
				// 			mask: true,
				// 			title: fileSavePath, //保存路径
				// 			duration: 3000,
				// 		});
				// 		// 安装apk
				// 		//_this.installApk(fileSavePath)
				// 	} else { // 下载失败
				// 		// 关闭进度条
				// 		_this.checkInfo.showProgress = false
				// 		uni.hideLoading();
				// 		//清除下载任务
				// 		plus.downloader.clear(); 
				// 		uni.showToast({
				// 			icon:'none',
				// 			mask:true,
				// 			title: '下载失败，请稍后重试',
				// 		});
				// 	}
				// })
				// dtask.start();

				//创建下载任务
				uni.downloadFile({
					url: url
				}).then(response => {
					if (response[1].statusCode == 200) { // 下载成功
						// 关闭进度条
						this.checkInfo.showProgress = false;
						uni.hideLoading();
						
						var _this = this
						uni.saveFile({
							tempFilePath: response[1].tempFilePath,
							complete(res) {
								// 提取文件名
								let filename = String(res.savedFilePath)
								filename = filename.replace(/^.*[\\\/]/, '')
								// 获取文件绝对路径
								_this.checkInfo.filePath = _this.checkInfo.filePath + filename
								// 安装apk
								_this.installApk(_this.checkInfo.filePath)
							}
						});
					} else { // 下载失败
						// 关闭进度条
						this.checkInfo.showProgress = false;
						uni.hideLoading();
						
						uni.showToast({
							title: "下载失败!",
							icon: "error"
						})
						return
					}
				})
			},
			// 下载定时器
			downloadTime() {
				this.checkInfo.downloader = setInterval(() => {
					if (this.checkInfo.currentProgress < 90) {
						let randomNum = Math.ceil(Math.random() * 5);
						this.checkInfo.currentProgress += randomNum;
					} else {
						clearInterval(this.checkInfo.downloader);
					}
				}, 1000);
			},
			// 安装apk
			installApk(filePath) {
				if (plus) {
					uni.showLoading({
						title: "文件安装中...",
					});

					var _this = this
					plus.runtime.install(
						filePath, {
							force: true,
						},
						(res) => {
							uni.hideLoading();
							plus.runtime.restart();
						},
						(err) => {
							uni.hideLoading();	
							uni.showToast({
								title: "安装失败!",
								icon: "error",
							});
						}
					);
				} else {
					_this.checkInfo.showProgress = false;
					_this.checkInfo.currentProgress = 0;
					uni.showToast({
						title: "该版本不支持!",
						icon: "error",
					});
				}
			}
		}
	}
</script>

<style lang="scss" scoped>
	.page {
		background-color: #f8f8f8;
	}

	.item-box {
		background-color: #FFFFFF;
		margin: 30rpx;
		display: flex;
		flex-direction: row;
		justify-content: center;
		align-items: center;
		padding: 10rpx;
		border-radius: 8rpx;
		color: #303133;
		font-size: 32rpx;
	}

	.version-box {
		padding: 10rpx;

		.version-item {
			display: flex;
			justify-content: flex-start;
			align-items: center;
			margin-bottom: 20rpx;
			padding: 0 10rpx;

			.version-item-ipt {
				margin-left: 20rpx;
				padding: 10rpx;
				border: 3rpx solid;
				font-size: 27rpx;
			}

			.uni-progress {
				width: 100%;
			}
		}
	}
</style>