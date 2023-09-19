<template>
	<view id="contianer">
			<view>
				<view class="title">当前密码</view>
				<view style="display: flex; width: 100%;" class="input">
					<input placeholder="请输入当前密码" placeholder-style="font-size:26rpx;color:#ACACAC;" type="password" name="input" v-model="password" />
				</view>
			</view>
			<view>
				<view class="title">新的密码</view>
				<view class="input">
					<input placeholder="请输入新的密码" placeholder-style="font-size:26rpx;color:#ACACAC;" type="password" name="input" v-model="newPassword" />
				</view>
			</view>
			<view>
				<view class="title">确认密码</view>
				<view class="input">
					<input placeholder="请确认新的密码" placeholder-style="font-size:26rpx;color:#ACACAC;" type="password" name="input" v-model="confirmPassword" />
				</view>
			</view>
			<view style="margin-top: 60rpx;"><button class="button" @tap="doChangePwd()">确认修改</button></view>
		</view>
</template>

<script>
	export default {
			data() {
				return {
					password:'',
					newPassword:'',
					confirmPassword:''
				}
			},
			methods: {
				async doChangePwd(){
					let that = this;
					const res = await that.$myRequest({
						url: '/api/mobile/schoolstudent/session/password',
						method:'PATCH',
						data: {
							password: that.password,
							newPassword: that.newPassword,
							confirmPassword: that.confirmPassword
						},
					})
					console.log(res)
					// 如果请求成功，则弹出提示语 "修改成功" 不懂showToast用法可以搜
					if (res.success) {
						uni.showToast({
							icon: "none",
							title: "修改成功"
						})
						// removeStorageSync: 从本地缓存中同步移除指定 token
						uni.removeStorageSync('student_access_token');
						// redirectTo ：跳转 
						uni.redirectTo({
							url:'../my/my'
						})
						
					} else {
						uni.showToast({
							icon: "none",
							title: "修改失败"
						})
					}
					
				}
				
			}
		}
</script>

<style>
page{
	  height:100%
	}
	#contianer {
		padding-top: 1rpx;
		position: relative;
		height: 100%;
		/* 本页面背景颜色 */
		background-color: #F5F5F5;
	}
	.title {
		color: #696969;
		margin: 15rpx 20rpx;
	}
	.input {
		padding: 20rpx 20rpx;
		background-color: #fff;
	}
	.button {
		width: 93%;
		color: #fff;
		background-color: #00BFFF;
	}
</style>
