<template>

	<view class="main_context first_main_context" style="margin-top: 15px;">
		<!-- 导航栏 -->
		<view>
			<u-sticky bgColor="#fff">
				<u-tabs :list="newsBarList" :is-scroll="true" lineColor="#2ed573"
					@change="getInformationButton"></u-tabs>
			</u-sticky>
		</view>
		<view v-if="informationList.length!=0">
			<view class="news" style="height:120px;" v-for="item in Array.from(informationList)"
				@click="goDetail(item)">
				<view class="new_img">
					<image :src="item.remark" style="width:90px;height: 90px;overflow: hidden;border-radius: 15px;">
				</view>
				<view class="new_title" style="margin-top: 50px;">
					<u-text :text="fixedTitleSize(item.title)" bold size="15"></u-text>
					<u--text color="#909090 " :text="fixedSize(item.content)"></u--text>
				</view>
			</view>
		</view>
		<view v-else>
			<view style="font-size: 14px; line-height: 1.8; margin: 20px;">
				暂无相关信息
			</view>
		</view>

		<uni-pagination :total="total" :current="queryParam.pageNum" :page-size="queryParam.pageSize"
			@change="handlePage">
		</uni-pagination>
	</view>
</template>

<script>
	import uniPagination from "@/uni_modules/uni-pagination/components/uni-pagination/uni-pagination.vue"
	import {
		getCheckStationInformationSortList,
		updateStationInformationReading
	} from "@/api/stationinformation/index.js"
	export default {
		data() {
			return {
				// 总数据条数
				total: '',
				// 当前信息类型
				index: 0,
				// 分页查询数据
				queryParam: {
					pageNum: 1,
					pageSize: 10,
					title: null,
					content: null,
					audit: null,
					secondColumn: null,
					sort: null
				},
				informationList: [],
				newsBarList: [{
					name: '资讯',
					index: 0
				}, {
					name: '金融',
					index: 1
				}, {
					name: '其他',
					index: 2
				}, ],
				item: ''
			}
		},
		created() {
			this.loading = true;
			this.item = getApp().globalData.item
			this.stationId = this.$store.state.user.deptId
			getCheckStationInformationSortList(0, this.stationId, this.queryParam).then(response => {
				this.informationList = response.rows;
				this.total = response.total;
				this.loading = false;
			});
		},
		methods: {
			// 处理分页
			handlePage(params) {
				this.queryParam.pageNum = params.current
				this.loading = true;
				getCheckStationInformationSortList(this.index, this.stationId, this.queryParam).then(response => {
					this.informationList = response.rows;
					this.total = response.total
					this.loading = false;
				});
			},
			fixedTitleSize(content) {
				// let reg = /[^\x00-\xff]/g;
				// let res = content.match(reg).join("")
				let res = content.replace(/<\/?.+?\/?>/g, '')
				return res.substring(0, 10) + "..."
			},
			//限制字数
			fixedSize(content) {
				// let reg = /[^\x00-\xff]/g;
				// let res = content.match(reg).join("")
				let res = content.replace(/<\/?.+?\/?>/g, '')
				return res.substring(0, 25) + "..."
			},
			//获取驿站信息列表
			getInformationButton(item) {
				this.loading = true;
				getCheckStationInformationSortList(item.index, this.stationId, this.queryParam).then(response => {
					this.index = item.index
					this.informationList = response.rows;
					this.total = response.total
					this.loading = false;
				});
			},
			//跳转新闻详情
			goDetail(item) {
				getApp().globalData.item = item
				item.content = item.content.replace(/</g, "&lt;");
				item.content = item.content.replace(/>/g, "&gt;");
				updateStationInformationReading(item).then(response => {}).finally(()=>{
					item.content = item.content.replace(/&lt;/ig,"<");
					item.content = item.content.replace(/&gt;/ig,">");
					uni.navigateTo({
						url: "/pages/station/information_detail",
					})
				})
				
			}
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