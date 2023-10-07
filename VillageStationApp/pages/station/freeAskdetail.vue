<template>
	<view>
		<view>
			<view style="background-color: white; margin: 15px; border-radius: 10px ;display: flex;" :model="askdetailquestions">
				<image src="../../static/images/index/index_query2.png" mode="" style="width: 20px;height: 20px; margin-top: 8px;margin-left: 10px;"></image>
				<view label="标题">
					<div style="margin-left: 15px; font-size: 20px;  padding: 5px 0 10px 0;">
						{{askdetailquestions.title}}
					</div>
				</view>
			<!-- 	<view label="内容">
					<div style="margin: 10px; margin-left: 20px; font-size:20px;">
						{{askdetailquestions.content}}
					</div>
				</view> -->
			</view>
			
		</view>
		<!-- 回答框 -->
		<view >
			<view style="background-color: white; margin: 15px; display: flex; padding-bottom: 20px; border-radius: 5px;" :model="askdetailquestions">
				<image src="../../static/images/index/index_query1.png" mode="" style="width: 20px;height: 20px; margin-top: 2px;margin-left: 10px;"></image>
				<view style="font-size: 20px;margin-left: 15px;color: gray;" >
					回复
				</view>
			</view>
		</view>

		<div v-for="onedetailQuery in detailQuerys" :key="onedetailQuery.id">
			<view style=" margin: 15px; border-radius: 5px;  background-color: white;display: flex;margin-top: -8px;">
				
				<view class="u-page">
					<view class="u-demo-block">
						<view class="u-demo-block__content">
							<view class="album" style="display: flex;">
								<!-- 头像 -->
								<view class="album__avatar" style="margin-top: 2px;display: flex;">
									<image src="/static/images/icon.jpg" mode=""
										style="width: 36px;height: 36px; margin: 5px;margin-left: 15px; border-radius: 100px;"></image>
								</view>

								<div style="margin-top: 15px; ">
									<view style="background-color: white;border-radius: 10px ; " :model="detailQuerys ">
										<view>
											<text style="font-size: 20px; padding-left: 10px;">小明</text>
										</view>
										<view style="font-size: 15px; margin: 5px 0 5px 0;" label="评论">
											<div style=" margin-left: 10px; ">
												{{onedetailQuery.content}}
											</div>
										</view>
									</view>
									<view style="margin-left: 10px;">
										<span style="color:#D3D3D3;font-size: 10px;">2023-10-02 08:00:00</span>
									</view>
								</div>
							</view>
						</view>
					</view>
				</view>
			</view>
		</div>


		<view>
			<u-modal :showCancelButton='true' :show="show" :title="title" @cancel="cancel" @confirm="confirm">
				<div style="width: 90%;">
					<u--input placeholder="请输入内容" style="margin-top: 20px; " v-model="detailQuerys.query"></u--input>
				</div>
			</u-modal>
		</view>

		<view @click="open">
			<u-button class="custom-style" color="#00ae67 " type="primary" shape="circle"
				style="  width: 80px; height: 80px; position: fixed;bottom: 80px;right: 30px; font-size: 20px;">评论
			</u-button>
		</view>
	</view>
</template>

<script>
	import {
		getAskQuestiondetail,
		addAskdetailQuestion,
		getAskdetailQuery,
	} from "@/api/station/freeAsk.js";

	export default {
		name: "askQuestion",
		data() {
			return {
				//弹出框
				show: false,
				title: '添加评论',
				//问题id
				askquestionId: '',
				askdetailquestions: {
					title: '',
					content: '',
				},
				detailQuerys: {
					content: '',
				}
			};
		},
		created() {
			this.getAskQuestion1(this.askquestionId);
			this.getAskdetailQuery2(this.askquestionId);
		},
		onLoad(options) {
			this.askquestionId = options.id;
		},
		methods: {
			//根据问题id获取评论
			getAskdetailQuery2(askquestionId) {
				// console.log(askquestionId)
				this.loading = true;
				getAskdetailQuery(askquestionId).then(response => {
					// console.log(response)
					// // 	// if(response.rows.questionId != null)
					// 		// console.log(response),
					this.detailQuerys = response.data;
					// 		 // console.log(this.detailquestions),
					// 	// this.total = response.total;
					this.loading = false;
				});
			},
			//根据随时问问题id获取详情
			getAskQuestion1(askquestionId) {
				this.loading = true;
				getAskQuestiondetail(askquestionId).then(response => {
					// console.log(response)
					this.askdetailquestions = response.data;
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
					"content": this.detailQuerys.query,
					"parentId": this.askquestionId,
				}
				// console.log(JSON.stringify(temp)),
				addAskdetailQuestion(JSON.stringify(temp)).then(response => {
					this.getAskdetailQuery2(this.askquestionId);
					// console.log(response)
					// 	// 	// this.question = response.data;
					// 	// 	// this.total = response.total;
					this.loading = false;
					// 	// 	// console.log(this.question);
					this.show = false;
					// });
					// });
				});
			},
		},
	}
</script>

<style>
</style>