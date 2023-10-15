<template>
	<view>
		<!-- 顶部 搜索栏 -->
		<div class="nav_bar" style="background-color: white;">
			<u-row gutter="20" class="index_head">
				<u-col span="3">&nbsp;</u-col>
				<u-col span="7">
					<u-search :show-action="true" action-text="搜索" v-model="query" bg-color="#f2f2f2"
						margin="5px 0 5px 0" height="25px" mar @custom="search" @search="search" />
				</u-col>
			</u-row>
		</div>

		<!-- 轮播图 -->
		<view style="margin: 15px;border-radius: 5px; overflow: hidden;">
			<u-swiper :list="list1"></u-swiper>
		</view>
		<!-- 主体内容一 -->
		<div v-for="askquestion in askquestions" :key="askquestion.id">
			<view style=" margin: 15px; border-radius: 5px;  background-color: white; margin-top: 10px; "
				@click="skip(askquestion)">
				<view class="u-page">
					<view class="u-demo-block">
						<view class="u-demo-block__content">
							<view class="album">
								<view class="album__avatar">
									<image src="/static/images/icon.jpg" mode="" style="width: 32px;height: 32px; ">
									</image>
								</view>
								<view class="album__content">
									<div class="ask_title">
										{{askquestion.title}}
									</div>
									<div class="ask_content">
										{{fixedSize(askquestion.content)}}
									</div>
								</view>
							</view>
						</view>
					</view>
				</view>
				<view>
					<u-row style="height: 25px; margin-left: 120px;">
						<u-col span="15">
							<u--text color="#cbcbcb" :text="askquestion.createTime"></u--text>
						</u-col>
					</u-row>
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
		getFreeAskListByColumn,
		addFreeAsk
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
					createTime:'',
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
				questions: {
					title: '',
					content: '',
				},
				userInfo: { // 用户信息
					userId: '',
					deptId: ''
				},
				query: ''
			}
		},
		created() {
			this.userInfo.userId = this.$store.state.user.userId
			this.userInfo.deptId = this.$store.state.user.deptId
			this.getList(this.userInfo.deptId);
			
		},
		methods: {
			//跳转详情页
			skip(item) {
				getApp().globalData.item = item;
				uni.navigateTo({
					url: "freeAskDetail"
				})
			},
			//获取随时问问题列表
			getList(sort) {
				this.loading = true;
				getFreeAskListByColumn(1,sort).then(response => {
					if(response.data.length == 0) {
						this.askquestions = [{title: '',content: '该驿站暂无数据',remark:''}]
					} else {
						this.askquestions = response.data;
					}
					// this.askquestions = response.data;
					this.loading = false;
				});
			},
			confirm() {
				addFreeAsk(this.questions).then(response => {
					this.getList();
					this.loading = false;
					this.show = false;
				});
			},
			open() {
				this.show = true;
			},
			cancel() {
				this.show = false;
			},
			fixedSize(content) {
				if (content != null) {
					if (content.length < 35) return content;
					else return content.substring(0, 35) + "...."
				}
				return content;
			},
			search(query) {
				getApp().globalData.query = query;
				uni.navigateTo({
					url: "/pages/station/query_result"
				})
			},
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