<template>
	<view>
		<view>
			<u-loading-page :loading="loading"></u-loading-page>
		</view>

		<view class="nav_bar">
			<u-row gutter="20" class="index_head" style="padding-left: 20px;">
				<u-col class="flex_row" span="3" style="font-size: 18px;">随时问</u-col>
				<u-col span="9">
					<u-search :show-action="true" action-text="搜索" v-model="query" @custom="search" @search="search"
						:action-style="{ color: 'white' }" />
				</u-col>
				<u-col span="1"></u-col>
			</u-row>
		</view>

		<!-- 轮播图 -->
		<view style="margin: 105px 15px 15px 15px;border-radius: 10px; overflow: hidden;background-color: white;">
			<u-swiper :list="list"></u-swiper>
		</view>
		<!-- 主体框 -->
		<view v-if="question.length!=0">
			<view v-for="oneQuestion in question" :key="oneQuestion.id">
				<view style="margin: 15px;border-radius: 10px; overflow: hidden;background-color: white;"
					@click="goDetail(oneQuestion)">
					<u-row>
						<u-col span="2" style="display: flex;">
							<!-- 头像 -->
							<image :src="allUserAvatar[oneQuestion.userId]"
								style="width: 52px;height: 52px;margin: 10px ;border-radius: 15px;">
							</image>
						</u-col>
						<u-col span="3" style="margin-left: 10px;margin-bottom: 30px;">
							<u--text :text="oneQuestion.createBy" type="success" bold size="13">
							</u--text>
						</u-col>
						<u-col span="7">
							<u--text :text="oneQuestion.title" type="primary" bold size="17">
							</u--text>
						</u-col>
					</u-row>
					<u-row style="margin:10px">
						<u-col span="2"></u-col>
						<u-col span="10">
							<u--text :text="oneQuestion.content">
							</u--text>
						</u-col>
					</u-row>
					<u-row>
						<u-col span="6"></u-col>
						<u-col span="6" style="margin: 15x;">
							<u--text color="#909090" :text="oneQuestion.createTime">
							</u--text>
						</u-col>
					</u-row>
				</view>
			</view>
		</view>
		<view v-else>
			<view>
				<view style="background-color: white; margin: 15px; border-radius: 10px ;" :model="question">
					<view style="display: flex;">
						<view style="font-size: 14px; line-height: 1.8; margin: 20px;">
							暂无相关信息
						</view>
					</view>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	import config from '@/config.js'
	import {
		getFreeAskListByColumn,
		addFreeAsk,
		getAddFreeAskListByNum,
	} from "@/api/ask/index.js"
	import {
		getUserProfileByUserId,
	} from "@/api/system/user.js"
	import {
		getToken
	} from "@/utils/auth"

	export default {
		data() {
			return {
				loading: false,
				//新增随时问
				newQuestion: {
					title: '',
					content: '',
					userId: '',
				},
				// 问题列表
				question: [],
				userName: '',
				userAvatar: '',
				//弹出框数据
				show: false,
				title: '添加问题',
				// 轮播图
				list: [
					'../../static/images/ask/mango.jpg',
					'../../static/images/ask/strawberry.jpg',
					'../../static/images/ask/watermelon.jpg',
				],
				query: '',
				fileList1: [],
				address: "http://localhost:8080",
				//获取10个随机问题
				num: 10,
				//头像列表 {id1:url1,id2:url2}
				allUserAvatar: {}
			}
		},
		created() {
			this.loading = true

			this.userName = this.$store.state.user.name
			this.newQuestion.userId = this.$store.state.user.userId

			// 获取所有问题
			getAddFreeAskListByNum(this.num).then(response => {
				this.question = response.data;
				if (this.question.length != 0) {
					//遍历问题列表找出userId
					var idList = []
					for (var item in this.question) {
						idList.push(this.question[item].userId)
					}
					//根据idList查询所有的对应的头像
					//{id1:url1,id2:url2}的字典
					getUserProfileByUserId(idList).then(response => {
						var tmp = response.data;
						for (var item in tmp) {
							//config.baseUrl 是服务器地址
							this.allUserAvatar[tmp[item].userId] = config.baseUrl + tmp[item].avatar
						}
						this.loading = false;
					});
				} else {
					this.loading = false;
				}
			});

		},
		methods: {
			goDetail(oneQuestion) {
				let id = oneQuestion.id
				uni.navigateTo({
					url: "detail?id=" + id
				})
			},
			// 查询
			search(query) {
				getApp().globalData.query = query;
				this.query = '';
				uni.navigateTo({
					url: "/pages/index/query_result"
				})
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
	@import url("@/static/css/index.css");
	@import url("@/static/css/nav_bar.css");
</style>