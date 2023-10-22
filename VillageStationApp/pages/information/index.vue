<template>
	<view class="body">
		<view>
			<u-loading-page :loading="loading"></u-loading-page>
		</view>

		<!-- 顶部 搜索栏 -->
		<view class="nav_bar">
			<u-row gutter="20" class="index_head" style="padding-left: 20px;">
				<u-col class="flex_row" span="3" style="font-size: 18px;">推资讯</u-col>
				<u-col span="8">
					<u-search :show-action="true" action-text="搜索" @custom="search" @search="search"
						:action-style="{ color: 'white' }" />
				</u-col>
				<u-col span="1"></u-col>
			</u-row>
		</view>
		<view style="margin-top: 105px;">
			<u-notice-bar :text=" '当前所在驿站：'+ ' ' + text1 + ' ' + text2"></u-notice-bar>
		</view>
		<!-- 政策法规 -->
		<view class="main_context first_main_context" style="margin-top: 5px;">
			<view @click="goPolicyList()">
				<u-row gutter="16">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/information/zhengce.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="政策法规" bold size="22"></u-text>
					</u-col>
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/information/arrow.png" style="height:25px;width:25px;" />
					</u-col>
				</u-row>
			</view>
			<view class="news" style="height:120px;;" v-for="item in Array.from(policyList).slice(0,3)"
				@click="goNewsDetail(item)">
				<view class="new_img">
					<image :src="item.remark" style="width:90px;height: 90px;overflow: hidden;border-radius: 15px;">
				</view>
				<view class="new_title" style="margin-top: 50px;">
					<u-text :text="fixedTitleSize(item.title)" bold size="15"></u-text>
					<u--text color="#909090 " :text="fixedSize(item.content)"></u--text>
				</view>
			</view>
		</view>

		<!-- 三农资讯 -->
		<view class="main_context first_main_context" style="margin-top: 10px;">
			<!-- 主体框 -->
			<view @click="goArgriList()">
				<u-row gutter="16">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/information/sannong.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="三农资讯" bold size="22"></u-text>
					</u-col>
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/information/arrow.png" style="height:25px;width:25px;" />
					</u-col>
				</u-row>
			</view>
			<view class="news" style="height:120px;;" v-for="item in Array.from(argriList).slice(0,3)"
				@click="goNewsDetail(item)">
				<view class="new_img">
					<image :src="item.remark" style="width:90px;height: 90px;overflow: hidden;border-radius: 15px;">
				</view>
				<view class="new_title" style="margin-top: 50px;">
					<u-text :text="fixedTitleSize(item.title)" bold size="15"></u-text>
					<u--text color="#909090 " :text="fixedSize(item.content)"></u--text>
				</view>
			</view>
		</view>

		<!-- 科技动态 -->
		<view class="main_context first_main_context" style="margin-top: 10px;">
			<!-- 主体框 -->
			<view @click="goTechList()">
				<u-row gutter="16">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/information/keji.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="科技动态" bold size="22"></u-text>
					</u-col>
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/information/arrow.png" style="height:25px;width:25px;" />
					</u-col>
				</u-row>
			</view>
			<view class="news" style="height:120px;;" v-for="item in Array.from(techList).slice(0,3)"
				@click="goNewsDetail(item)">
				<view class="new_img">
					<image :src="item.remark" style="width:90px;height: 90px;overflow: hidden;border-radius: 15px;">
				</view>
				<view class="new_title" style="margin-top: 50px;">
					<u-text :text="fixedTitleSize(item.title)" bold size="15"></u-text>
					<u--text color="#909090 " :text="fixedSize(item.content)"></u--text>
				</view>
			</view>
		</view>


		<!-- 典型案例 -->
		<view class="main_context first_main_context" style="margin-top: 10px;">
			<!-- 主体框 -->
			<view @click="goCaseList()">
				<u-row gutter="16">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/information/anli.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="典型案例" bold size="22"></u-text>
					</u-col>
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/information/arrow.png" style="height:25px;width:25px;" />
					</u-col>
				</u-row>
			</view>
			<view class="news" style="height:120px;;" v-for="item in Array.from(caseList).slice(0,3)"
				@click="goNewsDetail(item)">
				<view class="new_img">
					<image :src="item.remark" style="width:90px;height: 90px;overflow: hidden;border-radius: 15px;">
				</view>
				<view class="new_title" style="margin-top: 50px;">
					<u-text :text="fixedTitleSize(item.title)" bold size="15"></u-text>
					<u--text color="#909090 " :text="fixedSize(item.content)"></u--text>
				</view>
			</view>
		</view>
	</view>
</template>
<script>
	import {
		getCheckNewsList,
		updateNewsReading
	} from "@/api/information/index.js"
	import {
		getStation
	} from "@/api/system/user.js"
	export default {
		data() {
			return {
				text1: '',
				text2: '',
				loading: false,
				newsBarList: [{
					name: '政策法规',
					index: 0
				}, {
					name: '三农资讯',
					index: 1
				}, {
					name: '科技动态',
					index: 2
				}, {
					name: '典型案例',
					index: 3
				}, ],
				policyList: [],
				argriList: [],
				techList: [],
				caseList: [],
			}
		},
		created() {
			Promise.all([
				getCheckNewsList(0),
				getCheckNewsList(1),
				getCheckNewsList(2),
				getCheckNewsList(3),
				getStation(this.$store.state.user.deptId)
			]).then(response => {


				this.policyList = response[0].data;
				this.argriList = response[1].data;
				this.techList = response[2].data;
				this.caseList = response[3].data;
				this.text2 = response[4].data.deptName;
				// console.log(response[4].data)
				let parentId = [];
				let temp = response[4].data.ancestors.split(',')

				// console.log(temp)
				for (var item of temp) {
					item = parseInt(item)
					if (item != 0 && item != 100 && item != 279 && item != 280 && item != 281 && item != 282 &&
						item != 823) {
						parentId.push(item)
					}
				}

				Promise.all([
						getStation(parentId[0]),
						getStation(parentId[1])
					])
					// getStation(this.$store.state.user.deptId)
					.then(response => {
						this.text1 = response[0].data.deptName + " " + response[1].data.deptName
						// console.log(this.text1)
						// console.log(response)
					})

				this.loading = false;
			})
		},
		methods: {
			//获取已审核的分类新闻列表
			getNewsList() {
				Promise.all([
					getCheckNewsList()
				]).then(response => {
					this.policyList = response[0].data;
					this.argriList = response[1].data;
					this.techList = response[2].data;
					this.caseList = response[3].data;
				})
			},
			//
			fixedSize(content) {
				return content.substring(0, 25) + "..."
			},
			fixedTitleSize(content) {
				return content.substring(0, 10) + "..."
			},
			//跳转政策法规列表
			goPolicyList() {
				var item = {
					"id": 0
				}
				getApp().globalData.item = item;
				uni.navigateTo({
					url: "/pages/information/list?",
				})
			},
			//跳转三农资讯列表
			goArgriList() {
				var item = {
					"id": 1
				}
				getApp().globalData.item = item;
				uni.navigateTo({
					url: "/pages/information/list",
				})
			},
			//跳转科技动态列表
			goTechList() {
				var item = {
					"id": 2
				}
				getApp().globalData.item = item;
				uni.navigateTo({
					url: "/pages/information/list",
				})
			},
			//跳转案例分析列表
			goCaseList() {
				var item = {
					"id": 3
				}
				getApp().globalData.item = item;
				uni.navigateTo({
					url: "/pages/information/list",
				})
			},
			//跳转新闻详情
			goNewsDetail(item) {
				getApp().globalData.item = item;
				updateNewsReading(item).then(response => {})
				uni.navigateTo({
					url: "/pages/information/detail",
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
		}
	}
</script>



<style>
	@import url("@/static/css/index.css");
	@import url("@/static/css/nav_bar.css");

	.video_list {

		height: 170px;
		margin-top: 10px;
	}

	.video_img {
		max-height: 170px;
	}
</style>