<template>
	<view class="body">
		<view>
			<u-loading-page :loading="loading"></u-loading-page>
		</view>
		<!-- 顶部 搜索栏 -->
		<view class="nav_bar">
			<u-row gutter="20" class="index_head" style="padding-left: 20px;">
				<u-col class="flex_row" span="2" style="font-size: 18px;">首页</u-col>
				<u-col span="9">
					<u-search :show-action="true" action-text="搜索" v-model="query" @custom="search" @search="search"
						:action-style="{ color: 'white' }" />
				</u-col>
				<u-col span="1"></u-col>
			</u-row>
		</view>
		<!-- 新闻资讯 -->
		<view class="main_context first_main_context" style="margin-top: 105px;">
			<!-- 主体框 -->
			<view>
				<u-row gutter="16" @click="goNewsList">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/index/index_news.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text @click="goNewsList" style="font-weight: 20px;" margin="0px 0px 0px 0px" text="推资讯" bold
							size="22"></u-text>
					</u-col>
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/index/arrow.png" style="height:25px;width:25px;" />
					</u-col>
				</u-row>
			</view>
			<!-- 栏目标签 -->
			<view>
				<u-sticky bgColor="#fff">
					<u-tabs :list="newsBarList" :is-scroll="true" lineColor="#2ed573"
						@change="getNewsListButton"></u-tabs>
				</u-sticky>
			</view>
			<view>
				<view v-if="NewsList.length!=0">
					<view v-for="item in NewsList"><!-- 栏目内容 -->
						<view class="news" @click="goNewsDetail(item)" >
							<view class="new_img">
								<img :src="item.remark" alt="" class='new_img_img'>
							</view>
							<view class="new_title" style="margin-top: 10px;">
								<u-text :text="fixedTitleSize(item.title)" bold size="15"></u-text>
							</view>
							<view class="new_origin" style="margin-top: 5px;">
								<u--text color="#909090 " :text="fixedSize(item.content)"></u--text>
							</view>
						</view>
					</view>
				</view>
				<view v-else>
					<view style="font-size: 14px; line-height: 1.8; margin: 20px;">
						暂无相关信息
					</view>
				</view>
			</view>

		</view>

		<!-- 随时问 -->
		<view class="main_context first_main_context" style="margin-top: 10px;">
			<!-- 主体框 -->
			<view>
				<u-row gutter="16" @click="goAskList">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="../../static/images/index/index_query.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="随时问" bold size="22"></u-text>
					</u-col>
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="../../static/images/index/arrow.png" style="height:25px;width:25px;" />
					</u-col>
				</u-row>
			</view>
			<view>
				<view v-if="freeList.length!=0">
					<view class="news" style="height:120px;" v-for="oneFreeList in freeList">
						<view class="new_img">
							<image :src="allUserAvatar[oneFreeList.userId]"
								style="width:80px;height: 80px;overflow: hidden;border-radius: 50px;margin-top: 2px;">
						</view>
						<view class="new_title" style="margin-top: 20px;" @click="getoneFree(oneFreeList)">
							<u-text :text="oneFreeList.title" bold size="17"></u-text>
							<u--text color="#909090 " :text="oneFreeList.content"></u--text>
						</view>
					</view>
				</view>
				<view v-else>
					<view style="font-size: 14px; line-height: 1.8; margin: 20px;">
						暂无相关信息
					</view>
				</view>
			</view>
		</view>
		<!-- 学农技 -->
		<view class="main_context">
			<!-- 主体框 -->
			<view>
				<u-row gutter="16" @click="goTrainingList">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/index/index_train.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="学农技" bold size="22"></u-text>
					</u-col>
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/index/arrow.png" style="height:25px;width:25px;" />
					</u-col>
				</u-row>
			</view>
			<!-- 栏目标签 -->
			<view>
				<u-tabs :list="trainingBarList" :is-scroll="true" v-on:click="" lineColor="#2ed573"
					@change="getTrainButton"></u-tabs>
			</view>
			<view>
				<view v-if="trainingList.length!=0">
					<view class="news" v-for="item in trainingList" @click="goTrainingDetail(item)">
						<view class="new_img">
							<img :src="item.remark" alt="" class="new_img_img">
						</view>
						<!-- <view class="new_title" style="width:100%">{{item.title}}</view> -->
						<view class="new_title" >
							<u-text :text="item.title" bold size="17" ></u-text>
						</view>
						<view class="new_origin"  style='margin-top: 5px;'>
							<u--text color="#909090 " :text="item.createTime"></u--text>
						</view>
					</view>
				</view>
				<view v-else>
					<view style="font-size: 14px; line-height: 1.8; margin: 20px;">
						暂无相关信息
					</view>
				</view>
			</view>
		</view>
		<!-- 金融资讯 -->
		<view class="main_context">
			<!-- 主体框 -->
			<view>
				<view>
					<u-row gutter="16" @click="goFinanceList">
						<u-col span="2" style="padding-left:10px;margin-right: 8px;">
							<image src="/static/images/index/index_product.png" style="height:25px;width:25px;" />
						</u-col>
						<u-col span="9" class="bar" style="margin-left:-25px">
							<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="找资金" bold
								size="22"></u-text>
						</u-col>
						<u-col span="2" style="padding-left:10px;margin-right: 8px;">
							<image src="/static/images/index/arrow.png" style="height:25px;width:25px;" />
						</u-col>
					</u-row>
				</view>
			</view>
			<!-- 栏目标签 -->
			<view>
				<u-tabs :list="financeBarList" :is-scroll="true" lineColor="#2ed573"
					@change="getFinanceListButton"></u-tabs>
			</view>

			<view>
				<view style="border-radius: 10px; background-color: white;margin:15px;">
					<view v-if="financeList.length!=0">
						<view class="financenews" v-for="item in financeList" @click="goFinanceDetail(item)">
							<view style='margin-top:3px'>
								<image :src="item.remark" alt="" style="width:100%;max-height: 150px;overflow: hidden">
							</view>
							<view :model="financeList" style="font-size:15px">{{ item.title }}</view>
						</view>
					</view>
					<view v-else>
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
	import {
		getCheckNewsListLimitSort,
		updateNewsReading,
	} from "@/api/information/index.js"

	import {
		getOnlineTrainingListLimitSort,
		getOfflineTrainingListLimitSort,
		getOfflineTrainingDetail,
		getOnlineTrainingDetail,
	} from "@/api/technology/index.js";

	import {
		updateOfflineTrainingReading
	} from "@/api/technology/offline_training/index.js";

	import {
		updateOnlineTrainingReading,
	} from "@/api/technology/online_training/index.js";

	import {
		getCheckFinanceLimitSort,
		updateFinanceReading,
	} from "@/api/finance/index.js";
	import config from "@/config";
	import {
		getFreeAskListByColumn,
		getAddFreeAskListByNum,
	} from "@/api/ask/index.js";
	import {
		getUserProfileByUserId
	} from "@/api/system/user.js"
	export default {
		data() {
			return {
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
				financeBarList: [{
					name: ' 金融助农 ',
					index: 0
				}, {
					name: ' 业务新闻 ',
					index: 1
				}, {
					name: ' 相关案例 ',
					index: 2
				}, ],
				trainingBarList: [{
					name: '线上培训',
					index: 0
				}, {
					name: '线下培训',
					index: 1
				}, ],
				freeList: [],
				NewsList: [],
				financeList: [],
				trainingList: [],
				onlineTrainingList: [],
				offlineTrainingList: [],
				trainIndex: 0,
				query: '',
				// 数据显示条数
				num: 2,
				allUserAvatar:{},
				// 驿站标签，默认为0
				deptTag: [0,1,2,3,4,5,6,7,8,9,10,11],
			}
		},
		created() {
			this.loading = true;
			if(this.$store.state.user.deptTag != "") { 
				this.deptTag = this.$store.state.user.deptTag.split(',')
			}
			Promise.all([
				getCheckNewsListLimitSort(0, this.num,this.deptTag ),
				getOnlineTrainingListLimitSort(this.num,this.deptTag ),
				getCheckFinanceLimitSort(0, this.num,this.deptTag ),
				getAddFreeAskListByNum(this.num),
			]).then(response => {
				this.NewsList = response[0].data;
				this.trainingList = response[1].data;
				this.financeList = response[2].data;
				this.freeList = response[3].data;
				
				if (this.freeList.length == 0) {
					this.loading = false;
				} else {
					//遍历问题列表找出userId
					var idList = []
					for (var item in this.freeList) {
						idList.push(this.freeList[item].userId)
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
				}
				
				
			})
		},
		methods: {
			//跳转随时问
			getoneFree(free) {
				uni.navigateTo({
					url: "/pages/ask/detail?id=" + free.id
				})
			},
			//获取新闻资讯列表
			getNewsListButton(item) {
				this.loading = true;
				getCheckNewsListLimitSort(item.index, this.num,this.deptTag ).then(response => {
					this.NewsList = response.data;
					this.loading = false;
				});
			},
			//跳转首页新闻
			goNewsList() {
				uni.switchTab({
					url: "/pages/information/index"
				})
			},
			//跳转新闻详情
			goNewsDetail(item) {
				getApp().globalData.item = item;
				item.content = item.content.replace(/</g, "&lt;");
				item.content = item.content.replace(/>/g, "&gt;");
				updateNewsReading(item).then(response => {}).finally(()=>{
					item.content = item.content.replace(/&lt;/ig,"<");
					item.content = item.content.replace(/&gt;/ig,">");
					uni.navigateTo({
						url: "/pages/information/detail",
					})
				})
			},
			// 获取学农技术列表
			getTrainButton(item) {
				if (item.index == 0) {
					this.trainIndex = 0;
					getOnlineTrainingListLimitSort(this.num,this.deptTag).then(response => {
						this.trainingList = response.data;
						this.loading = false;
					})
				} else {
					this.trainIndex = 1;
					getOfflineTrainingListLimitSort(this.num,this.deptTag ).then(response => {
						this.trainingList = response.data;
						this.loading = false;
					})
				}
			},
			//跳转首页学农技
			goTrainingList() {
				uni.switchTab({
					url: "/pages/technology/index"
				})
			},
			//跳转首页随时问
			goAskList() {
				uni.switchTab({
					url: "/pages/ask/index"
				})
			},
			// 根据id跳转线上/线下培训详情页
			goTrainingDetail(item) {
				// 跳转线上培训
				if (this.trainIndex == 0) {
					this.goOnlineDetail(item)
				} 
				// 跳转线下培训
				else if (this.trainIndex == 1) {
					this.goOfflineDetail(item)
				}
			},
			//根据id跳转线上培训详细内容页
			goOnlineDetail(item) {
				getApp().globalData.item = item;
				item.content = item.content.replace(/</g, "&lt;");
				item.content = item.content.replace(/>/g, "&gt;");
				//更新阅读量
				updateOnlineTrainingReading(item).then(response => {}).finally(()=>{
					item.content = item.content.replace(/&lt;/ig,"<");
					item.content = item.content.replace(/&gt;/ig,">");
					uni.navigateTo({
						url: "/pages/technology/online_training/detail"
					})
				})
			},
			//根据id跳转线下培训详细内容页
			goOfflineDetail(item) {
				getApp().globalData.item = item;
				item.content = item.content.replace(/</g, "&lt;");
				item.content = item.content.replace(/>/g, "&gt;");
				//更新阅读量
				updateOfflineTrainingReading(item).then(response => {}).finally(()=>{
					item.content = item.content.replace(/&lt;/ig,"<");
					item.content = item.content.replace(/&gt;/ig,">");
					uni.navigateTo({
						url: "/pages/technology/offline_training/detail"
					})
				})
			},
			//获取金融分类资讯列表
			getFinanceListButton(item) {
				this.loading = true;
				getCheckFinanceLimitSort(item.index, this.num,this.deptTag ).then(response => {
					this.financeList = response.data;
					this.loading = false;
				});
			},
			//跳转首页金融
			goFinanceList() {
				uni.switchTab({
					url: "/pages/finance/index"
				})
			},
			//跳转金融资讯详情
			goFinanceDetail(item) {
				getApp().globalData.item = item;
				item.content = item.content.replace(/</g, "&lt;");
				item.content = item.content.replace(/>/g, "&gt;");
				updateFinanceReading(item).then(response => {}).finally(()=>{
					item.content = item.content.replace(/&lt;/ig,"<");
					item.content = item.content.replace(/&gt;/ig,">");
					uni.navigateTo({
						url: "/pages/finance/detail"
					})
				})
			},
			//限制字数
			fixedSize(content) { 
				let res = content.replace(/<\/?.+?\/?>/g, '')
				res = res.replace("&lt;", "")
				res = res.replace("&gt;", "")
				var tmp = res.substring(0, 25) + "..."
				return res.length>25?tmp:res
			},
			fixedTitleSize(content) { 
				let res = content.replace(/<\/?.+?\/?>/g, '')
				var tmp = res.substring(0, 25) + "..."
				return res.length>25?tmp:res
			},
			search(query) {
				this.query = '';
				getApp().globalData.query = query;
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

<style>
	.video_list {
		height: 170px;
		margin-top: 10px;
	}

	.video_img {
		max-height: 170px;
	}
</style>