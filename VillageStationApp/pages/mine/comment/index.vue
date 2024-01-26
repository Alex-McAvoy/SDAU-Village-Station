<template>
	<view class="body" style="border-radius: 10px; background-color: white;margin:15px;">
		<view>
			<u-loading-page :loading="loading"></u-loading-page>
		</view>
		
		<view class="flex_row video_list"><!-- 评论列表 -->
			<!-- 单个评论 -->
			<view style="width:100%; padding-bottom: 5px; border-bottom: 1px solid #cbcbcb; margin-top: 4px;"
				v-for="item in questionList" @click="goDetail(item)">
				<!-- 标题 -->
				<u-row style="height: 55px; margin-left: 10px;">
					<u--text :text="item.title"></u--text>
				</u-row>
				<!-- 时间 -->
				<u-row style="height: 15px; margin-left: 10px;">
					<u-col span="5">
					</u-col>
					<u-col span="7" style="display:flex;flex-direction: row-reverse ;padding-left:50px; ">
						<u--text color="#cbcbcb" :text="item.createTime"></u--text>
					</u-col>
				</u-row>
			</view>

		</view>
	</view>
	</view>
</template>
<script>
	import {
		getQuestionListByuserId,
	} from "@/api/ask/index.js";
	
	
	export default {
		data() {
			return {
				loading: false,
				questionList: [],
				userInfo: { // 用户信息
					userId: '',
					deptId: ''
				}
			}
		},
		created() {			
			this.userInfo.userId = this.$store.state.user.userId
			this.loading = true
			getQuestionListByuserId(this.userInfo.userId).then(response => {
				this.questionList = response.data
				console.log(response.data)
				this.loading = false
			}) 
		},
		methods: {
			//跳转问题详情
			goDetail(oneQuestion) {
				let id = oneQuestion.id
				uni.navigateTo({
					url: "detail?id=" + id
				})
			},
		}
	}
</script>

<style>
	@import url("@/static/css/index.css");
	@import url("@/static/css/nav_bar.css");
</style>

