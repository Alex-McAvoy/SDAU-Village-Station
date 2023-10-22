<template>
	<view>
		<!-- 问题框 -->
		<view>
			<view style="background-color: white; margin: 15px; border-radius: 10px ;" :model="question">
				<view style="display: flex;">
					<view style="margin-top: 8px;">
						<image src="../../static/images/icon.jpg"
							style="width: 52px;height: 52px;margin: 10px ;border-radius: 15px;"></image>
					</view>
					<view label="标题">
						<div class="ask_title" style="margin: 30px; color:#00ae67 ; font-size: 17px;">
							{{question.title}}
						</div>
					</view>
				</view>
				<view style="margin:15px;">
					<div class="ask_title" style="font-size: 15px;">
						{{question.content}}
					</div>
					<view style="display:flex;flex-direction: row;justify-content: center;">
						<image :src="question.remark"  style="width:67%;"></image>
					</view>
					
				</view>
				<view>
					<u-row style="height: 25px; margin-left: 150px;">
						<u-col span="15">
							<u--text color="#cbcbcb" :text="question.createTime"></u--text>
						</u-col>
					</u-row>
				</view>
			</view>
		</view>


		<!-- 回答框 -->

		<view style="background-color: white; margin: 15px;  padding-bottom: 20px; border-radius: 5px;">
			<view style="display: flex;">
				<view>
					<image src="../../static/images/ask/answer.png"
						style="width: 20px; height: 20px;margin: 10px;"></image>
				</view>
				<view style="margin-top: 9px;">
					<text style="font-size: 20px;">答疑回复</text>
				</view>
			</view>

			<view>
				<div v-for="item in reviews" :key="item.id">
					<view style=" margin: 15px; border-radius: 5px;  background-color: white;margin-top: 8px;">
						<view class="u-page">
							<view class="u-demo-block">
								<view class="u-demo-block__content">
									<view class="album" style="display: flex;">
										<!-- 头像 -->
										<view class="album__avatar" style="margin-top: 2px;display: flex;">
											<image src="../../static/images/icon.jpg" 
												style="border-radius: 50%;width: 60px;height: 60px;">
											</image>
										</view>

										<div style="margin: 15px; ">
											<view style="background-color: white;border-radius: 10px; ">
												<view style="color: #00ae67  ;font-size: 17px; margin-bottom: 10px;">
													<text class="ask_title">{{item.createBy}}</text>
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
								<u-row style="height: 25px; margin-left: 150px;">
									<u-col span="15">
										<u--text color="#cbcbcb" :text="item.createTime"></u--text>
									</u-col>
									
								</u-row>
							</view>
						</view>
					</view>
				</div>
			</view>
		</view>

		<view>
			<u-modal :showCancelButton='true' :show="show" :title="title" @cancel="cancel" @confirm="confirm">
				<div style="width: 90%;">
					<u--input placeholder="请输入内容" style="margin-top: 20px; " v-model="reviews.query"></u--input>
				</div>
			</u-modal>
		</view>

		<view @click="open">
			<u-button class="custom-style" color="#00ae67 " type="primary" shape="circle"
				style="  width: 70px; height: 70px; position: fixed;bottom: 80px;right: 30px; font-size: 20px;">评论
			</u-button>
		</view>
	</view>
</template>

<script>
	import {
		getFreeAskListByColumn,
		getAskQuestionDetail,
		getAskQuestionReview,
		addFreeAsk,
	} from "@/api/ask/index.js"

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
				reviews: {
					content: '',
				}
			};
		},
		created() {
			// this.questionId = getApp().globalData.item.askFreeId
			this.getQuestion(this.questionId);
			this.getReview(this.questionId);
		},
		onLoad(options) {
			this.questionId = options.id;
		},
		methods: {
			//根据随时问问题id获取详情
			getQuestion(id) {
				this.loading = true;
				getAskQuestionDetail(id).then(response => {
					console.log(response)
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
				var temp = {
					"content": this.reviews.query,
					"parentId": this.questionId,
				}
				addFreeAsk(temp).then(response => {
					uni.showToast({
						title: '添加成功，正在审核...',
						icon: 'none',
						//显示持续时间为 2秒
						duration: 2000
					})  
					this.getReview(this.questionId);
					this.loading = false;
					this.show = false;
				});
			},
		},
	}
</script>

<style>

</style>