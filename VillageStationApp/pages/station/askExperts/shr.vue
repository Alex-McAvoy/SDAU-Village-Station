<template>
	<view>
		<!-- 头部 -->
		<view
			style=" display: flex; align-items: center;  background-color: white; justify-content: space-between; margin-bottom: 10px;">
			<!-- 定位 -->
			<!-- <view style=" align-items: center; display:flex;">
				<image src="../../../static/images/station/freeAsk/location.png"
					style="width: 15px; height: 15px; margin-top: 10px;"></image>
				<span style="color:#2ed573 ; margin-left: 5px;display:flex; ">泰安</span>
			</view> -->
			<!-- 搜索框 -->
			<!-- <view style="width: 80%; height: 20px; margin-bottom: 20px; ">
				<u-search placeholder="搜索" v-model="keyword" actionText=""></u-search>
			</view> -->
		</view>
		<!-- 个人简介 -->
		<view class="album__content">
			<view style="display: flex;">
				<image src="/static/images/station/askExperts/expert.png" mode=""
					style=" width: 18px;height:15px; margin-left: 15px;margin-top: 15px;shape:circle;border-radius: 5px">
				</image>
				<view style="margin-top: 10px; margin-left: 5px; font-size: 20px;">专家简介</view>
			</view>
			<view style="display: flex;">
				<view style="margin-top: 15px;">
					<image :src="expert.remark"
						style=" width: 100px;height: 120px; margin-left: 5px;margin-top: 2px;shape:circle;border-radius: 5px">
					</image>
				</view>
				<view :model="expert">
					<view style=" margin-top: 20px;margin-left: 5px;">
						姓名：<span>{{expert.expertName}}</span>
					</view>
					<view style="margin-top: 20px;margin-left: 5px;" :model="expert">
						<span style="font-size: 8px;color: #5f5959;">{{expert.introduction}}</span>
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
				<view style="margin-top: 15px; margin-left: 5px;">专家答疑</view>
			</view>
		</view>
		<!-- 内容 -->
		<div v-for="onequestions in questions" :key="onequestions.id">

			<view style="height: 100%; background-color: white; margin: 15px;  margin-top: 15px; border-radius: 5px;"
				@click="goToDetailPage(onequestions.questionId)">
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
						<div style="margin-top: 2px;">
							{{onequestions.questionTitle}}
						</div>
						<view style="display:flex; margin-left: -23px; margin-top: 3px;">
							<view>
								<image src="../../../static/images/station/freeAsk/location.png"
									style="width: 13px;height: 15px; "></image>
							</view>
							
							<view style="margin-left: 5px;">
								<span style="color:#D3D3D3;font-size: 3px;">山东-泰安</span>
							</view>
							<view style="margin-left: 30px;">
								<span style="color:#D3D3D3;font-size: 3px;">2023-10-02</span>
							</view>
						</view>
						<!-- <div style="margin-top: 10px; color:rgb(169,169,169) ;  text-align:left">
							{{onequestions.question}}
						</div> -->
					</view>
				</view>


					</view>
				</view>
		<!-- 右下 -->		



				<!-- 时间 -->
				<!-- <view style="text-align:right;margin-right: 15px;">
					<span style="color:#D3D3D3;font-size: 2px;">2023.10.02</span>
				</view> -->
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
		listExpert,
		listQuestion,
		getQuestion,
		delQuestion,
		addQuestion,
		updateQuestion
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
					expertName:'',
					introduction: '',
					remark:''
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
				}
			};
		},
		created() {
			// this.getList();
			// console.log(expertId);
			// console.log(this.expertId);
			this.getExpert(this.expertId),
				this.getList(this.expertId)
		},
		onLoad(options) {
			this.expertId = options.id;
			// console.log(this.expertId);
			// console.log(options.id);
			// this.detail(options.id)
			// expertId=options.id
		},
		methods: {
			goToDetailPage(id) {
				// console.log(id);
				uni.navigateTo({
					url: "/pages/station/detail?id=" + id
				});
			},
			//获取问题列表
			getList(expertId) {
				this.loading = true;
				console.log(expertId),
					listQuestion(expertId).then(response => {
						// console.log(response),
						this.questions = response.data;
						// this.total = response.total;
						this.loading = false;
					});
			},
			//获取专家信息
			getExpert(expertId) {
				this.loading = true;
				// console.log(this.expertId);
				getExpert(expertId).then(response => {
					// console.log(response);
					this.expert = response.data;
					// this.total = response.total;
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
				console.log(JSON.stringify(temp))
				addQuestion(JSON.stringify(temp)).then(response => {
					// console.log(response)
					// this.question = response.data;
					// this.total = response.total;
					this.loading = false;
					// console.log(this.question);
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