<template>
	<view class="mine-container" :style="{height: `${windowHeight}px`}">
		<!--顶部个人信息栏-->
		<view class="header-section">
			<view class="flex padding justify-between">
				<view class="flex align-center">
					<view v-if="!avatar" class="cu-avatar xl round bg-white">
						<view class="iconfont icon-people text-gray icon"></view>
					</view>
					<image v-if="avatar" @click="handleToAvatar" :src="avatar" class="cu-avatar xl round"
						mode="widthFix">
					</image>
					<view v-if="!name" @click="handleToLogin" class="login-tip">
						点击登录
					</view>
					<view v-if="name" @click="handleToInfo" class="user-info">
						<view class="u_title">
							用户名：{{ name }}
						</view>
						<view class="u_title">
							用户角色：{{ roles }}
						</view>
					</view>
				</view>
				<view @click="handleToInfo" class="flex align-center">
					<text>个人信息</text>
					<view class="iconfont icon-right"></view>
				</view>
			</view>
		</view>

		<view class="content-section">
			<view class="mine-actions grid col-4 text-center">
				<view class="action-item" @click="handleJiaoLiuQun">
					<view class="iconfont icon-friendfill text-pink icon"></view>
					<text class="text">反馈群</text>
				</view>
				<view class="action-item" @click="handleBuilding">
					<view class="iconfont icon-service text-blue icon"></view>
					<text class="text">联系官方</text>
				</view>
				<view class="action-item" @click="handleBuilding">
					<view class="iconfont icon-community text-mauve icon"></view>
					<text class="text">反馈社区</text>
				</view>
				<view class="action-item" @click="handleBuilding">
					<view class="iconfont icon-dianzan text-green icon"></view>
					<text class="text">点赞我们</text>
				</view>
			</view>

			<view class="menu-list">
				<view class="list-cell list-cell-arrow" @click="handleToEditInfo">
					<view class="menu-item-box">
						<view class="iconfont icon-user menu-icon"></view>
						<view>编辑资料</view>
					</view>
				</view>
				<view class="list-cell list-cell-arrow" @click="handleLikes">
					<view class="menu-item-box">
						<view class="iconfont icon-dianzan menu-icon"></view>
						<view>我的点赞</view>
					</view>
				</view>
				<view class="list-cell list-cell-arrow" @click="handleCollect">
					<view class="menu-item-box">
						<view class="iconfont icon-aixin menu-icon"></view>
						<view>我的收藏</view>
					</view>
				</view>
				<view class="list-cell list-cell-arrow" @click="handleComment">
					<view class="menu-item-box">
						<view class="iconfont icon-community menu-icon"></view>
						<view>我的问题</view>
					</view>
				</view>
				<view class="list-cell list-cell-arrow" @click="handleToSetting">
					<view class="menu-item-box">
						<view class="iconfont icon-setting menu-icon"></view>
						<view>应用设置</view>
					</view>
				</view>
			</view>

		</view>
	</view>
</template>

<script>
	import storage from '@/utils/storage'

	export default {
		data() {
			return {
				roles_dict: {
					"user": "普通用户",
					"publish": "信息发布管理者",
					"root": "根用户",
					"admin": "普通管理员",
					"finance_publish": "金融发布管理员",
					"audit": "信息审核管理员",
					"finance_auditor": "金融审核管理员",
					"stationmaster": "驿站站长",
					"science_specialist": "科技专员",
					"science_services_specialist": "科技服务专员",
					"finance_specialist": "金融专员",
					"information_specialist": "信息专员",
				},
				roles: "", // 这里存储用户角色
				name: this.$store.state.user.name,
				version: getApp().globalData.config.appInfo.version
			}
		},
		created() {
		    // 假设 this.$store.state.user.roles[0] 返回用户角色字符串，例如 "user"
		    var tmp = this.$store.state.user.roles[0];
		    this.roles = this.roles_dict[tmp];
		  },
		computed: {
			avatar() {
				return this.$store.state.user.avatar
			},
			windowHeight() {
				return uni.getSystemInfoSync().windowHeight - 50
			}
		},
		methods: {
			handleToInfo() {
				this.$tab.navigateTo('/pages/mine/info/index')
			},
			handleToEditInfo() {
				this.$tab.navigateTo('/pages/mine/info/edit')
			},
			handleToSetting() {
				this.$tab.navigateTo('/pages/mine/setting/index')
			},
			handleToLogin() {
				this.$tab.reLaunch('/pages/login')
			},
			handleToAvatar() {
				this.$tab.navigateTo('/pages/mine/avatar/index')
			},
			handleLogout() {
				this.$modal.confirm('确定注销并退出系统吗？').then(() => {
					this.$store.dispatch('LogOut').then(() => {
						this.$tab.reLaunch('/pages/index')
					})
				})
			},
			handleLikes() {
				this.$tab.navigateTo('/pages/mine/likes/index')
			},
			handleCollect() {
				this.$tab.navigateTo('/pages/mine/collect/index')
			},
			handleComment() {
				this.$tab.navigateTo('/pages/mine/comment/index')
			},
			handleJiaoLiuQun() {
				this.$modal.showToast('QQ群：正在建设中')
			},
			handleBuilding() {
				this.$modal.showToast('模块建设中~')
			}
		}
	}
</script>

<style lang="scss">
	page {
		background-color: #f5f6f7;
	}

	.mine-container {
		width: 100%;
		height: 100%;

		.header-section {
			padding: 15px 15px 45px 15px;
			background: linear-gradient(#2ed573, #2ed573, #2ed573, #2ed573, #7bed9f, #f1f2f6);
			color: white;

			.login-tip {
				font-size: 18px;
				margin-left: 10px;
			}

			.cu-avatar {
				border: 2px solid #eaeaea;

				.icon {
					font-size: 40px;
				}
			}

			.user-info {
				margin-left: 15px;

				.u_title {
					font-size: 15px;
					line-height: 30px;
				}
			}
		}

		.content-section {
			position: relative;
			top: -50px;

			.mine-actions {
				margin: 15px 15px;
				padding: 20px 0px;
				border-radius: 8px;
				background-color: white;

				.action-item {
					.icon {
						font-size: 28px;
					}

					.text {
						display: block;
						font-size: 13px;
						margin: 8px 0px;
					}
				}
			}
		}
	}
</style>