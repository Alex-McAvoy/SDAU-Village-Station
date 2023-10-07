<template>
	<view>
		<!-- 头部 -->
		<view
			style=" display: flex; align-items: center;  background-color: white; justify-content: space-between; margin-bottom: 10px;">
			<!-- 定位 -->
			<view style="margin-left: 1vh; align-items: center; margin-bottom: 10px;">
				<image src="../../../static/images/station/freeAsk/location.png" style="width: 15px; height: 15px;"></image>
				<span style="color:#2ed573 ; margin-left: 5px; ">泰安</span>
			</view>
			<!-- 搜索框 -->
			<view style="width: 80%; height: 20px; margin-bottom: 20px; ">
				<u-search placeholder="搜索" v-model="keyword" actionText=""></u-search>
			</view>
		</view>
		<!-- 轮播图 -->
		<view style="margin: 15px;border-radius: 5px; overflow: hidden;">
			<u-swiper :list="list1"></u-swiper>
		</view>
		<!-- 主体内容一 -->
		<div v-for="askquestion in askquestions" :key="askquestion.id">
			<view style=" margin: 15px; border-radius: 5px;  background-color: white; margin-top: 10px; " @click="goToDetailPage(askquestion.askFreeId)">
				<view class="u-page">
					<view class="u-demo-block">
						<view class="u-demo-block__content">
							<view class="album">
								<view class="album__avatar">
									<image src="/static/images/icon.jpg" mode="" style="width: 32px;height: 32px; "></image>
								</view>
								<view class="album__content">
									<div class="ask_title">
										{{askquestion.title}}
									</div>
									<div class="ask_content">
										{{askquestion.content}}
									</div>
								</view>
							</view>
						</view>
					</view>
				</view>
			</view>
		</div>
		<view>
			<u-modal :show="show" :title="title" @cancel="cancel" @confirm="confirm" :showCancelButton='true'>
				<div style="width: 90%;">
					<u--input placeholder="请输入标题" v-model="questions.title"></u--input>
					<u--input placeholder="请输入内容" style="margin-top: 20px;" v-model="questions.content"></u--input>
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
		listfreeAsk,
		addAskQuestion
	} from "@/api/station/freeAsk.js";
	
	export default {
		data() {
			return {

				//弹出框
				show: false,
				title: '添加问题',
				askquestions: {
					title: '',
					content: '',
				},
				keyword: '',
				list1: [
					'../../../static/images/station/freeAsk/orange.jpg',
					'../../../static/images/station/freeAsk/pitaya.jpg',
					'../../../static/images/station/freeAsk/banana.png',
				],
				albumWidth: 0,
				urls1: [{
					src2: '../../../static/images/station/freeAsk/apple.jpg',
				}],
				questions:{
					title:'',
					content:'',
				},
			}
		},
		created() {
			this.getList();
		},
		methods: {
			goToDetailPage(id) {
			    // console.log(id);
			    uni.navigateTo({
			      url: "/pages/station/freeAsk/freeAskdetail?id="+id
			    });
			  },
			//获取随时问问题列表
			getList() {
				this.loading = true;
				listfreeAsk(this.queryParams).then(response => {
					// console.log(response)
					this.askquestions = response.rows;
					// // this.total = response.total;
					this.loading = false;
				});
			},
			confirm() {
				// console.log(this.questions)
				addAskQuestion(this.questions).then(response => {
					// console.log(response)
					this.getList();
					// this.question = response.data;
					// this.total = response.total;
					this.loading = false;
					// console.log(this.question);
					this.show = false;
					
				});
			},
			open() {
				this.show = true;
			},
			cancel() {
				this.show = false;
			}
		}
	}
</script>

<style lang="scss">
	@import url("../../../static/css/text.css");
	.album {
		@include flex;
		align-items: flex-start;

		&__avatar {
			padding: 5px;
			border-radius: 3px;
		}

		&__content {
			margin-left: 10px;
			flex: 1;
		}
	}

	.album__content {
		margin-top: 5px;
	}
</style>