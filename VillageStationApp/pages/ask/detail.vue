<template>
	<view>
		<!-- 问题框 -->
		<view>
			<view style="background-color: white; margin: 15px; border-radius: 10px ;" :model="question">
				<view style="display: flex;">
					<view style="margin-top: 8px;">
						<image :src="srcUrl"
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
						<image :src="question.remark" style="width:67%;"></image>
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
					<image src="@/static/images/ask/answer.png" style="width: 20px; height: 20px;margin: 10px;">
					</image>
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
											<image :src="allUserAvatar[item.userId]"
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

		 
	</view>
</template>

<script>
	import {
		getFreeAskListByColumn,
		getAskQuestionDetail,
		getAskQuestionReview,
		addFreeAsk,
	} from "@/api/ask/index.js"
	import {
		getUserProfileByUserId,
	} from "@/api/system/user.js"
	import config from "@/config";
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
				},
				srcUrl:'',
				allUserAvatar:{},
				role:'information_specialist'
			};
		},
		created() {
			this.loading = true;
			this.role = this.$store.state.user.roles[0]
			// alert(this.role)
			//根据随时问问题id获问题与回答
			Promise.all([
				getAskQuestionDetail(this.questionId),
				getAskQuestionReview(this.questionId)
			]).then(response => {
				// 问题用户id
				this.question = response[0].data;
				var idList = this.question.userId;
				
				// 评论用户id
				this.reviews = response[1].data;
				
				if (response[1].data.length == 0) { // 无评论
					getUserProfileByUserId(idList).then(response => {
						// 问题头像
						this.srcUrl = config.baseUrl + response.data[0].avatar;
						this.loading = false
					})
				} else { // 有评论
					// 获取评论用户id
					var userList = []
					for (var item in this.reviews){
						userList.push(this.reviews[item].userId)
					} 
					// 根据问题、评论用户id获取头像
					Promise.all([
						getUserProfileByUserId(idList),
						getUserProfileByUserId(userList)
					]).then(response => {
						// 问题头像
						this.srcUrl = config.baseUrl + response[0].data[0].avatar;
						
						// 评论头像
						var tmp = response[1].data;
						for(var item in tmp){
							//config.baseUrl 是服务器地址
							this.allUserAvatar[tmp[item].userId] = config.baseUrl+tmp[item].avatar 
						}
						this.loading = false;
					})
				}
			
							
			})
		},
		onLoad(options) {
			this.questionId = options.id;
		},
		methods: {
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
					"userId": this.$store.state.user.userId
				}
				addFreeAsk(temp).then(response => {
					// uni.showToast({
					// 	title: '添加成功，正在审核...',
					// 	icon: 'none',
					// 	//显示持续时间为 2秒
					// 	duration: 2000
					// })
					// this.getReview(this.questionId);
					getAskQuestionReview(this.questionId).then(response => {
						// 评论用户id
						this.reviews = response.data;
						var userList = []
						for (var item in this.reviews){
							userList.push(this.reviews[item].userId)
						} 
						
						// 根据问题、评论用户id获取头像
						getUserProfileByUserId(userList).then(response => {
							
							// 评论头像
							var tmp = response.data;
							for(var item in tmp){
								//config.baseUrl 是服务器地址
								this.allUserAvatar[tmp[item].userId] = config.baseUrl+tmp[item].avatar 
							}
							this.loading = false;
							this.show = false;
						})
					})
					
				});
				
				
			},
		},
		computed: {
			avatar() {
				return this.$store.state.user.avatar
			},
		},
	}
</script>

<style>

</style>