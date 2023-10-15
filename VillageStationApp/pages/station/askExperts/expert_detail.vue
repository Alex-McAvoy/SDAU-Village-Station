<template>
	<view>

		<!-- 个人简介 -->
		<view class="album__content">
			<view style="display: flex;">
				<image src="/static/images/station/askExperts/expert.png" mode=""
					style=" width: 18px;height:15px; margin-left: 15px;margin-top: 15px;shape:circle;border-radius: 5px">
				</image>
				<view class="ask_title">专家简介</view>
			</view>
			<view style="display: flex;">
				<view style="margin-top: 15px;">
					<image :src="expert.remark"
						style=" width: 100px;height: 120px; margin-left: 5px;margin-top: 2px;shape:circle;border-radius: 5px">
					</image>
				</view>
				<view :model="expert">
					<view class="sub_title">
						姓名：<span>{{expert.expertName}}</span>
					</view>
					<view class="sub_content" :model="expert">
						<span>{{expert.introduction}}</span>
					</view>
				</view>
			</view>

		</view>
		<view class="album__content">
			<!-- 导航栏 -->
			<view style="display: flex; margin-bottom: -15px;">
				<image src="/static/images/station/askExperts/question.png" mode=""
					style=" width: 22px;height:22px; margin-left: 15px;margin-top: 15px;shape:circle;border-radius: 5px">
				</image>
				<view class="ask_title">专家答疑</view>
			</view>
		</view>

		<!-- 内容 -->
		<div v-for="onequestions in questions" :key="onequestions.id">
			<view style="height: 100%; background-color: white; margin: 15px;  margin-top: 15px; border-radius: 5px;"
				@click="skip(onequestions)">
				<!-- 头像 -->
				<view style="display: flex; ">
					<!-- 左 -->
					<view>
						<image src="../../../static/images/icon.jpg"
							style="width: 32px;height: 32px; margin: 5px; border-radius: 100px;"> </image>
					</view>
					<!-- 右 -->
					<view ref="queryForm">
						<view label="用户名" prop="queryParams.Name">
							<span style="font-size: smaller;color:#5f5959 ;"></span>
						</view>
						<!-- 内容 -->
						<view style="margin-left: 5px;">
							<view style="font-size: 15px;border: #5f5959;" label="问题" prop="queryParams.Question"
								:model="questions">
								<div class="ask_content">
									{{onequestions.questionTitle}}
								</div>
								<div class="ask_content">
									{{onequestions.question}}
								</div>
							</view>
						</view>
					</view>
				</view>
				<view>
					<u-row style="height: 25px; margin-left: 120px;">
						<u-col span="15">
							<u--text color="#cbcbcb" :text="onequestions.createTime"></u--text>
						</u-col>
					</u-row>
				</view>
			</view>
		</div>

		<!-- 问答弹出框 -->
		<view>
			<u-modal :show="show" :title="title" @cancel="cancel" @confirm="confirm" :showCancelButton='true'>
				<div style="width: 90%;">
					<u--input placeholder="请输入标题" v-model="questions.questionTitle"></u--input>
					<u--input placeholder="请输入内容" style="margin-top: 20px;" v-model="questions.question"></u--input>
				</div>
			</u-modal>
		</view>
		<view @click="open">
			<u-button class="custom-style" color="#00ae67 " type="primary" shape="circle"
				style="  width: 80px; height: 80px; position: fixed;bottom: 80px;right: 30px; font-size: 50px;">＋
			</u-button>
		</view>
	</view>

</template>

<script>
	import {
		listQuestion,
		addQuestion
	} from "@/api/station/question.js";

	import {
		getExpert
	} from "@/api/station/expert.js";

	export default {
		name: "Question",
		data() {
			return {
				//专家介绍
				expert: {
					expertName: '',
					introduction: '',
					remark: ''
				},
				//专家id
				expertId: '',
				value1: '',
				list1: [{
					name: '专家咨询',
				}],
				keyword: '',
				//弹出框
				show: false,
				title: '添加问题',
				//弹出框问题
				questions: {
					questionTitle: '',
					question: '',
					createTime:'',
				},
				userInfo: { // 用户信息
					userId: '',
					deptId: ''
				}
			};
		},
		created() {
			this.userInfo.userId = this.$store.state.user.userId
			this.userInfo.deptId = this.$store.state.user.deptId

			this.expertId = getApp().globalData.item.askExpertsId

			this.getExpertDetail(this.expertId)
			this.getQuestionList(this.expertId, this.userInfo.deptId)
		},
		methods: {
			//跳转详情页
			skip(item) {
				getApp().globalData.item = item;
				uni.navigateTo({
					url: "detail"
				})
			},
			//获取问题列表
			getQuestionList(expertId, sort) {
				this.loading = true;
				listQuestion(expertId, 1, sort).then(response => {
					if(response.data.length == 0) {
						this.questions = [{questionTitle: '',question: '该驿站暂无数据',remark:''}]
					} else {
						this.questions = response.data;
					}
					this.loading = false;
				});
			},
			//获取专家信息
			getExpertDetail(id) {
				this.loading = true;
				getExpert(id).then(response => {
					this.expert = response.data;
					this.loading = false;
				});
			},
			//弹出框
			open() {
				this.show = true;
			},
			confirm() {
				var temp = {
					"question": this.questions.question,
					"questionTitle": this.questions.questionTitle,
					"expertId": this.expertId
				}
				addQuestion(JSON.stringify(temp)).then(response => {
					this.loading = false;
					this.show = false;
				});
			},
			cancel() {
				this.show = false;
			}
		}
	}
</script>

<style lang="scss">
	@import url("../../../static/css/text.css");

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

	}

	.album {
		@include flex;
		align-items: flex-start;

		&__avatar {
			background-color: white;
			padding: 5px;
			border-radius: 3px;
		}

		&__content {
			// margin-left: 10px;
			flex: 1;
		}
	}

	.album__content {
		margin-top: 5px;
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
</style>