<template>
	<view class="body">
		<view>
			<u-loading-page :loading="loading"></u-loading-page>
		</view>
		<view style="border-radius: 10px; background-color: white;margin:15px;">
			<view class="news" v-for="item in expertList" @click="goResDetail(item,1)">
				<view class="new_img">
					<image :src="item.remark" alt="" style="width:100%;height: 70px;overflow: hidden">
				</view>
				<view class="new_title">{{ item.expertName }}</view>
				<view class="new_origin">
					<u-parse style="margin-bottom: 20px;" :content="fixedSize(item.introduction)"></u-parse>
				</view>
			</view>
			<view class="news" v-for="item in channelList" @click="goResDetail(item,2)">
				<view class="new_img">
					<image :src="item.remark" alt="" style="width:100%;height: 70px;overflow: hidden">
				</view>
				<view class="new_title">{{ item.title }}</view>
				<view class="new_origin">
					<u-parse style="margin-bottom: 20px;" :content="fixedSize(item.content)"></u-parse>
				</view>
			</view>
			<view class="news" v-for="item in farmList" @click="goResDetail(item,3)">
				<view class="new_img">
					<image :src="item.remark" alt="" style="width:100%;height: 70px;overflow: hidden">
				</view>
				<view class="new_title">{{ item.title }}</view>
				<view class="new_origin">
					<u-parse style="margin-bottom: 20px;" :content="fixedSize(item.content)"></u-parse>
				</view>
			</view>
			<view class="news" v-for="item in askFreeList" @click="goResDetail(item,4)">
				<view class="new_img">
					<image :src="item.remark" alt="" style="width:100%;height: 70px;overflow: hidden">
				</view>
				<view class="new_title">{{ item.title }}</view>
				<view class="new_origin">
					<u-parse style="margin-bottom: 20px;" :content="fixedSize(item.content)"></u-parse>
				</view>
			</view>
			<view class="news" v-for="item in techList" @click="goResDetail(item,5)">
				<view class="new_img">
					<image :src="item.remark" alt="" style="width:100%;height: 70px;overflow: hidden">
				</view>
				<view class="new_title">{{ item.title }}</view>
				<view class="new_origin">
					<u-parse style="margin-bottom: 20px;" :content="fixedSize(item.content)"></u-parse>
				</view>
			</view>
			<view class="news" v-for="item in speciesList" @click="goResDetail(item,6)">
				<view class="new_img">
					<image :src="item.remark" alt="" style="width:100%;height: 70px;overflow: hidden">
				</view>
				<view class="new_title">{{ item.title }}</view>
				<view class="new_origin">
					<u-parse style="margin-bottom: 20px;" :content="fixedSize(item.content)"></u-parse>
				</view>
			</view>
			<view class="news" v-for="item in productList" @click="goResDetail(item,7)">
				<view class="new_img">
					<image :src="item.remark" alt="" style="width:100%;height: 70px;overflow: hidden">
				</view>
				<view class="new_title">{{ item.title }}</view>
				<view class="new_origin">
					<u-parse style="margin-bottom: 20px;" :content="fixedSize(item.content)"></u-parse>
				</view>
			</view>
			<view class="news" v-for="item in infoList" @click="goResDetail(item,8)">
				<view class="new_img">
					<image :src="item.remark" alt="" style="width:100%;height: 70px;overflow: hidden">
				</view>
				<view class="new_title">{{ item.title }}</view>
				<view class="new_origin">
					<u-parse style="margin-bottom: 20px;" :content="fixedSize(item.content)"></u-parse>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	import {
		queryExpert
	} from "@/api/station/expert.js";
	import {
		queryChannel,
		updateChannelReading
	} from "@/api/station/channel.js";
	import {
		queryFarm,
		updateFarmReading
	} from "@/api/station/farm.js";
	import {
		queryAskFree,
	} from "@/api/station/freeAsk.js";
	import {
		queryTech,
		updateTechReading
	} from "@/api/station/tech.js";
	import {
			querySpecies,
			updateSpeciesReading
		} from "@/api/station/species.js";
import { queryProducts,updateProductsReading } from "@/api/station/products.js";
import { queryInfo,updateInfoReading } from "@/api/station/station.js";



	
	export default {
		data() {
			return {
				loading: false,
				expertList: [],
				channelList: [],
				farmList: [],
				askFreeList: [],
				techList: [],
				speciesList: [],
				productList: [],
				infoList: [],
				query: '',
			}
		},
		created() {
			this.loading = true;
			this.query = getApp().globalData.query
			Promise.all([
				queryExpert(this.query),
				queryChannel(this.query),
				queryFarm(this.query),
				queryAskFree(this.query),
				queryTech(this.query),
				querySpecies(this.query),
				queryProducts(this.query),
				queryInfo(this.query),
			]).then(response => {
				this.expertList = response[0].data
				this.channelList = response[1].data
				this.farmList = response[2].data
				this.askFreeList = response[3].data
				this.techList = response[4].data
				this.speciesList = response[5].data
				this.productList = response[6].data
				this.infoList = response[7].data
				this.loading = false;
			})
		},
		methods: {
			goResDetail(item, index) {
				getApp().globalData.item = item;
				if (index == 1) {
					uni.navigateTo({
						url: "/pages/station/askExperts/expert_detail"
					})
				} else if (index == 2) {
					updateChannelReading(item).then(response => {})
					uni.navigateTo({
						url: "/pages/station/channel/channel_detail"
					})
				} else if (index == 3) {
					updateFarmReading(item).then(response => {})
					uni.navigateTo({
						url: "/pages/station/farm/farm_detail"
					})
				} else if (index == 4) {
					uni.navigateTo({
						url: "/pages/station/freeAsk/freeAskDetail"
					})
				} else if (index == 5) {
					updateTechReading(item).then(response => {})
					uni.navigateTo({
						url: "/pages/station/learningTechnology/tech_detail"
					})
				} else if (index == 6) {
					updateProductsReading(item).then(response => {})
					uni.navigateTo({
						url: "/pages/station/newsSpecies/species_detail"
					})
				}  else if (index == 7) {
					updateProductsReading(item).then(response => {})
					uni.navigateTo({
						url: "/pages/station/products/products_detail"
					})
				}else if (index == 8) {
					updateInfoReading(item).then(response => {})
					uni.navigateTo({
						url: "/pages/station/station/station_info_detail"
					})
				}
			},
			fixedSize(content) {
				return content.substring(0, 25) + "..."
			}
		}
	}
</script>

<style src="@/static/css/index.css">
</style>
<style>
	.news {
		display: grid;
		grid-template-rows: 1fr 1fr 1fr;
		grid-template-columns: 1fr 2fr;
		grid-gap: 10px;
		height: 90px;
		font-size: 13px;
		border-top: 1px solid #ecf0f1;
		margin-bottom: 20px;
	}

	.news:nth-child(n+2) {
		margin-top: 2px;
	}

	.new_img {
		grid-row: 1/4;
		grid-column: 1/2;
		display: flex;
		flex-direction: column;
		justify-content: center;
	}

	.new_title {
		grid-row: 1/2;
		grid-column: 2/3;
		display: flex;
		flex-direction: column;
		justify-content: center;
		max-height: 70px;
		padding: 5px 0 0 0;
		font-size: 15px;
		font-weight: 200;
	}

	.new_origin {
		grid-row: 2/4;
		grid-column: 2/3;
		padding-bottom: 5px;
		margin-bottom: 20px;
	}

	.new_origin>.origin {
		color: #2ed573;
		border-radius: 3px;
		border: 1px solid #2ed573;
		margin-right: 5px;
		padding: 2px;
		font-size: 4px;
	}
</style>