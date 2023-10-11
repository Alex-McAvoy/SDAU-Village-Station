<template>
	<view>
		<view :model="questions">
			<view style="background-color: white; margin: 15px; border-radius: 10px ;">
				<view style="display: flex;">

					<view> 
						<image src="../../../static/images/index/index_query2.png" style="width: 20px; height: 20px;margin: 10px;"></image>
					</view>
					
					<view style="margin-top: 5px;" >
						<text style="font-size: 20px;">提问详情</text>
					</view>
				</view>
				<view style="display:flex;">
					<view>
						<image src="../../../static/images/icon.jpg" style="border-radius: 50%;width: 60px;height: 60px;"></image>
					</view>
					<!-- <view style="margin-top: 5px;">
						<text style="font-size: 23px;">张建平</text>
					</view> -->
					<view label="标题" >
						<view style="margin-top: 5px;">
							<text class="sub_title">张建平</text>
						</view>
						<div class="sub_ask">
							{{questions.questionTitle}}
						</div>
						<view label="内容" >
							<div class="sub_content">
								{{questions.question}}
							</div>
		
						</view>
					</view>
			
				</view>
				<view style="display: flex;">
					<view style="margin-left: 80px;">
						<image src="../../../static/images/station/askExperts/location.png" style="width: 10px;height: 10px;"></image>
					</view>
					<view>
						<text class="ask_note">山东-泰安</text>
					</view> 
					<view>
						<text class="ask_note">2023-10-07 10:00</text>
					</view>
				</view>
			</view>
			<view style="background-color: white; margin: 15px; border-radius: 10px ;">
				<view style="display:flex;">
					<view>
						<image src="../../../static/images/index/index_query1.png" style="width: 20px; height: 20px;margin: 10px;"></image>
					</view>
					<view style="margin-top: 5px;" >
						<text style="font-size: 20px;">答疑回复</text>
					</view>
				</view>
				<div v-for="onedetailquestion in detailquestions" :key="onedetailquestion.id">
					<view style=" margin: 15px; border-radius: 5px;  background-color: white; margin-top: 10px; ">
						<view class="u-page">
							<view class="u-demo-block">
								<view class="u-demo-block__content">
									<view class="album">
										<view style="display: flex;">
											<view class="album__avatar">
												<image src="/static/images/icon.jpg" style="border-radius: 50%;width: 60px;height: 60px;"></image>
											</view>
											<view>
												<view style="margin-top: 5px;">
													<text class="sub_title">王洪刚</text>
												</view>
												<div >
													<view style="background-color: white;border-radius: 10px ;" :model="detailquestions">
														<view style="font-size: 15px;" label="评论" >
															<div class="sub_content">
																{{onedetailquestion.question}}
															</div>
														</view>
													</view>
												</div>
												<view style="display: flex;">
													<view style="margin-left: 10px;">
														<image src="../../../static/images/station/askExperts/location.png" style="width: 10px;height: 10px;"></image>
													</view>
													<view>
														<text class="ask_note">山东-泰安</text>
													</view> 
													<view>
														<text class="ask_note">2023-10-07 10:00</text>
													</view>
												</view>
											</view>
										</view>
									</view>
								</view>
							</view>
						</view>
					</view>
				</div>
			</view>

			
			
			<view>
				<u-modal :show="show" :title="title" @cancel="cancel" @confirm="confirm" :showCancelButton='true'>
					<div style="width: 90%;">
						<u--input placeholder="请输入内容" style="margin-top: 20px; "
							v-model="detailquestions.question"></u--input>
					</div>
				</u-modal>
			</view>
			<view @click="open">
				<u-button class="custom-style" color="#00ae67 " type="primary" shape="circle"
					style="  width: 80px; height: 80px; position: fixed;bottom: 80px;right: 30px; font-size: 20px;">评论
				</u-button>
			</view>
		</view>
	</view>
</template>

<script>
	import {
		getOneQuestion,
		getOneQuery,
		addComment
	} from "@/api/station/question.js";

	export default {
		name: "Question",
		data() {
			return {
				//问题id
				onequestionId: '',
				//弹出框
				show: false,
				title: '添加评论',
				//弹出框问题
				questions: {
					questionTitle: '',
					question: '',
				},
				detailquestions: {
					question: '',
				}
			};
		},
		created() {
			this.getQuestion(this.onequestionId);
			this.getComment(this.onequestionId);
		},
		onLoad(options) {
			this.onequestionId = options.id;
		},
		methods: {
			//根据问题id获取问题
			getQuestion(onequestionId) {
				this.loading = true;
				getOneQuestion(onequestionId).then(response => {
					this.questions = response.data[0];
					this.loading = false;
				});
			},
			//根据问题id获取评论
			getComment(onequestionId) {
				this.loading = true;
				getOneQuery(onequestionId, 1).then(response => {
					this.detailquestions = response.data;
					this.loading = false;
				});
			},
			//弹出框
			open() {
				this.show = true;
			},
			cancel() {
				this.show = false;
			},
			//提交评论
			confirm() {
				var temp = {
					"question": this.detailquestions.question,
					"parentId": this.onequestionId,
				}
					addComment(JSON.stringify(temp)).then(response => {
						this.loading = false;
						this.show = false;
					});
			},
		}
	}
</script>

<style>
	@import url("../../../static/css/text.css");
</style>