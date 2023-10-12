<template>
	<view>
		<!-- 问题框 -->
		<view>
			<view style="background-color: white; margin: 15px; border-radius: 10px ;display: flex;" :model="question">
				<image src="../../../static/images/index/index_query2.png" mode=""
					style="width: 20px;height: 20px; margin-top: 8px;margin-left: 10px;"></image>
				<view label="标题">
					<div class="ask_title">
						{{question.title}}
					</div>
					<div class="ask_title">
						{{question.content}}
					</div>
				</view>
				<view>
					<u-row justify="flex-end" gutter="15">
						<u-col span="5"></u-col>
						<u-col span="6" style="color:#D3D3D3;font-size: 10px;">
							{{question.createTime}}</u-col>
					</u-row>
				</view>
			</view>
		</view>


		<!-- 回答框 -->
		<view>
			<view
				style="background-color: white; margin: 15px; display: flex; padding-bottom: 20px; border-radius: 5px;">
				<image src="../../../static/images/index/index_query1.png" mode=""
					style="width: 20px;height: 20px; margin-top: 2px;margin-left: 10px;"></image>
				<view style="font-size: 20px;margin-left: 15px;color: gray;">
					回复
				</view>
			</view>
		</view>

		<div v-for="item in reviews" :key="item.id">
			<view style=" margin: 15px; border-radius: 5px;  background-color: white;display: flex;margin-top: -8px;">
				<view class="u-page">
					<view class="u-demo-block">
						<view class="u-demo-block__content">
							<view class="album" style="display: flex;">
								<!-- 头像 -->
								<view class="album__avatar" style="margin-top: 2px;display: flex;">
									<image src="/static/images/icon.jpg" mode=""
										style="width: 36px;height: 36px; margin: 5px;margin-left: 15px; border-radius: 100px;">
									</image>
								</view>

								<div style="margin-top: 15px; ">
									<view style="background-color: white;border-radius: 10px; ">
										<view>
											<text class="ask_title">小明</text>
										</view>
										<view style="font-size: 15px; margin: 5px 0 5px 0;" label="评论">
											<div class="ask_content">
												{{item.content}}
											</div>
										</view>
									</view>
								</div>
							</view>
						</view>
					</view>
					<view>
						<view style="color:#D3D3D3;font-size: 13px;">
							{{item.createTime}}
						</view>
					</view>
					
				</view>
			</view>
		</div>

		<!-- <view>
			<u-modal :showCancelButton='true' :show="show" :title="title" @cancel="cancel" @confirm="confirm">
				<div style="width: 90%;">
					<u--input placeholder="请输入内容" style="margin-top: 20px; " v-model=""></u--input>
				</div>
			</u-modal>
		</view>

		<view @click="open">
			<u-button class="custom-style" color="#00ae67 " type="primary" shape="circle"
				style="  width: 80px; height: 80px; position: fixed;bottom: 80px;right: 30px; font-size: 20px;">评论
			</u-button>
		</view> -->
	</view>
</template>

<script>
	import {
		addFreeAsk,
		getAskQuestionDetail,
		getAskQuestionReview
	} from "@/api/station/freeAsk.js";

	export default {
		name: "askQuestion",
		data() {
			return {
				//弹出框
				show: false,
				title: '添加评论',
				//问题id
				questionId: '',
				question: {
					title: '',
					content: '',
					createTime: ''
				},
				reviews: []
			};
		},
		created() {
			this.getQuestion(this.questionId);
			this.getReview(this.questionId);
		},
		onLoad(options) {
			this.questionId = options.id;
		},
		methods: {
			//根据随时问问题id获取详情
			getQuestion(questionId) {
				this.loading = true;
				getAskQuestionDetail(questionId).then(response => {
					this.question = response.data;
					this.loading = false;
				});
			},
			//根据问题id获取评论
			getReview(questionId) {
				this.loading = true;
				getAskQuestionReview(questionId).then(response => {
					this.reviews = response.data;
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
			confirm() {

			},
		},
	}
</script>

<style>
	@import url("../../../static/css/text.css");
</style>