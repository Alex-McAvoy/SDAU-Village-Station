<template>
	<view class="body" style="border-radius: 10px; background-color: white;margin:15px;">

		<view class="flex_row video_list"><!-- 收藏列表 -->
			<!-- 单个收藏 -->
			<view style="width:100%; padding-bottom: 5px; border-bottom: 1px solid #cbcbcb; margin-top: 4px;"
				v-for="item in form" @click="skip(item,item.skip)">
				<!-- 标题+封面 -->
				<u-row style="height: 75px; margin-left: 10px;">
					<u-col span="8">
						<u--text :text="item.title"></u--text>
					</u-col>
					<u-col span="4" class="flex_col">
						<image :src="item.remark" style="height:70px;width:100%;max-width:150px; object-fit: cover;">
					</u-col>
				</u-row>
				<u-row style="height: 25px; margin-left: 10px;">
					<u-col span="8">
						<u--text color="#cbcbcb" :text="item.type"></u--text>
					</u-col>
					<u-col span="4" style="display:flex;flex-direction: row-reverse ;padding-left:50px; ">

					</u-col>
				</u-row>
			</view>

		</view>
	</view>
	</view>
</template>

<script>

	import { 
		getNewsByIdList,
		getFinanceByIdList,
		getChannelByIdList,
		getTechByIdList,
		getSpeciesByIdList,
		getOffline_trainingByIdList,
		getFarmByIdList,
		getOfflineTrainingByIdList,
		getProductsByIdList,
		getOnline_trainingByIdList,getStationInfoByIdList
	} from "@/api/system/collect.js"
	import {
		listCollectByUserId
	} from '@/api/system/likes.js'
	
	export default {
		onLoad: function() {},
		data() {
			return {
				train: [

				],
				skipUrl: { //跳转
					news_detail: '/pages/index/news/news_detail', //新闻资讯
					products_detail: '/pages/station/products/products_detail', //优品
					online_training_detail: '/pages/training/online_training_detail', //线上培训
					offline_training_detail: '/pages/training/offline_training_detail', //线下培训
					finance_detail: '/pages/finance/finance_detail', //金融资讯
					station_info_detail: '/pages/station/station/station_info_detail', //驿站信息
					learningTechnology: '/pages/station/learningTechnology/tech_detail', //学农技
					purchaseFarm: '/pages/station/farm/farm_detail', //买农资
					channel_detail: '/pages/station/channel/channel_detail', //找渠道
					species_detail: '/pages/station/newsSpecies/species_detail', //新品种
				},
				idList: { //请求id列表
					news_detail: [], //新闻资讯
					products_detail: [], //优品
					online_training_detail: [], //线上培训
					offline_training_detail: [], //线下培训
					finance_detail: [], //金融资讯
					station_info_detail: [], //驿站信息
					learningTechnology: [], //学农技
					purchaseFarm: [], //买农资
					//channel_detail: [], //找渠道
					species_detail: [], //新品种
				},
				form: [] //总数据
					,
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
			this.getIdList();
		},
		methods: {
			handleSelect(key, keyPath) {
			},
			getIdList() { //获取用户收藏的各个栏目idList
				listCollectByUserId(this.userInfo.userId).then(response => {
					this.idList = response;
					if (this.idList.news_detail != undefined) {
						//新闻
						getNewsByIdList(this.idList.news_detail).then(response => {
							for (var element of response) {
								element.skip = this.skipUrl.news_detail;
								element.type = "新闻资讯"
								element.tablename = "news_detail"
								this.form.push(element)
							}
						});
					}
					//金融
					if (this.idList.finance_detail != undefined) {
						getFinanceByIdList(this.idList.finance_detail).then(response => {
							for (var element of response) {
								element.skip = this.skipUrl.finance_detail;
								element.type = "金融资讯"
								element.tablename = "finance_detail"
								this.form.push(element)
							}
						});
					}
					//驿站
					if (this.idList.station_info_detail != undefined) {
						getStationInfoByIdList(this.idList.station_info_detail).then(response => {
							for (var element of response) {
								element.skip = this.skipUrl.station_info_detail;
								element.type = "驿站信息"
								element.tablename = "station_info_detail"
								this.form.push(element)
							}
						});
					}
					if (this.idList.channel_detail != undefined) {
						getChannelByIdList(this.idList.channel_detail).then(response => {
							for (var element of response) {
								element.skip = this.skipUrl.channel_detail;
								element.type = "找渠道"
								element.tablename = "channel_detail"
								this.form.push(element)
							}
						});
					}
					if (this.idList.purchaseFarm != undefined) {
						getFarmByIdList(this.idList.purchaseFarm).then(response => {
							for (var element of response) {
								element.skip = this.skipUrl.purchaseFarm;
								element.type = "买农资"
								element.tablename = "purchaseFarm"
								this.form.push(element)
							}
						});
					}
					if (this.idList.learningTechnology != undefined) {
						getTechByIdList(this.idList.learningTechnology).then(response => {
							for (var element of response) {
								element.skip = this.skipUrl.learningTechnology;
								element.type = "学农技"
								element.tablename = "learningTechnology"
								this.form.push(element)
							}
						});
					}
					if (this.idList.species_detail != undefined) {
						getSpeciesByIdList(this.idList.species_detail).then(response => {
							for (var element of response) {
								element.skip = this.skipUrl.species_detail;
								element.type = "新品种"
								element.tablename = "species_detail"
								this.form.push(element)
							}
						});
					}
					if (this.idList.offline_training_detail != undefined) {
						getOffline_trainingByIdList(this.idList.offline_training_detail).then(response => {
							for (var element of response) {
								element.skip = this.skipUrl.offline_training_detail;
								element.type = "线下培训"
								element.tablename = "offline_training_detail"
								this.form.push(element)
							}
						});
					}
					if (this.idList.online_training_detail != undefined) {
						getOnline_trainingByIdList(this.idList.online_training_detail).then(response => {
							for (var element of response) {
								element.skip = this.skipUrl.online_training_detail;
								element.type = "线上培训"
								element.tablename = "offline_training_detail"
								this.form.push(element)
							}
						});
					}
					if (this.idList.products_detail != undefined) {
						getProductsByIdList(this.idList.products_detail).then(response => {
							for (var element of response) {
								element.skip = this.skipUrl.products_detail;
								element.type = "优品"
								element.tablename = "products_detail"
								this.form.push(element)
							}
						});
					}
				});
			},
			skip(item, url) {
				getApp().globalData.item = item;
				uni.navigateTo({
					url: url + '?status=2&newsId='+item.newsId
				})
			},
		}
	}
</script>

<style>
	@import url("@/static/css/index.css");
	@import url("@/static/css/nav_bar.css");
</style>