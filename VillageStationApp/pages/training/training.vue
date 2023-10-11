<template>
	<view class="body">
		<!-- 顶部 搜索栏 -->
		<div class="nav_bar">
			<u-row gutter="20" class="index_head">
				<u-col span="3">培训&nbsp;</u-col>
				<u-col span="7">
					<u-search :show-action="false"></u-search>
				</u-col>
			</u-row>
		</div>
		<!-- 线上培训 -->
		<view class="main_context first_main_context" style="margin-top: 100px;">

			<view> <!-- 主体框 -->
				<u-row gutter="16">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/index/index_news.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text style="font-weight: 20px;" text="线上培训" bold size="22"></u-text>
					</u-col>
					<u-col span="1">
						<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;" />
					</u-col>
				</u-row>
			</view>
			<view> <!-- 栏目标签 -->
				<u-tabs :list="onlineTrainingList" :is-scroll="true"  lineColor="#2ed573"></u-tabs>
			</view>
			<view class="flex_row video_list">
				<view class="video_list_item">
					<view class="flex_col">
						<image src="/static/images/index/index_video.jpg" style="width:100%;height:120px;margin:3px" />
					</view>
					<view class="common_text_size">苹果种植技术</view>
				</view>
				<view class="video_list_item">
					<view class="flex_col">
						<image src="/static/images/index/index_video.jpg" style="width:100%;height:120px;margin:3px" />
					</view>
					<view class="common_text_size">虫害防治技术</view>
				</view>
			</view>


		</view>
		<!-- 线下培训 -->
		<view class="main_context first_main_context">
			<view> <!-- 主体框 -->
				<u-row gutter="16"  @click="goOfflineTrainingList">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/index/index_news.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="线下培训" bold
							size="22"></u-text>
					</u-col>

					<u-col span="1">
						<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;" />
					</u-col>
				</u-row>
			</view>

			<view class="news" v-for="item in train.slice(0,2)" @click="goOfflineTrainingDetail(item)">

				<view class="new_img">
					<img :src="item.remark" alt=""
						style="width:100%;height: auto;overflow: hidden">
				</view>

				<view class="new_title" style="width:100%">{{item.title}}</view>
				<view class="new_origin"><span class="origin">来源</span><span>中国政府网</span>
				</view>

			</view>
		</view>
	</view>

	</view>
</template>
<script>
	import {
		getOfflineTrainingListByColumn,
	} from "@/api/system/offline_training.js";


	export default {
		onLoad: function() {},
		data() {
			return {
				onlineTrainingList: [{
					name: '全部 ',
					index: 0
				}, {
					name: '园艺培训',
					index: 1
				}, {
					name: ' 粮食种植 ',
					index: 2
				}, {
					name: ' 蔬菜种植 ',
					index: 3
				}, {
					name: '家畜养殖',
					index: 4
				}, ],
				train: [],
			}
		},
		created() {
			this.getOfflineTrainingList();
		},
		methods: {
			getOfflineTrainingList() {
				this.loading = true;
				getOfflineTrainingListByColumn(1).then(response => {
					this.train = response.data
					this.loading = false;
				});
			},
			goOfflineTrainingList() {
				uni.navigateTo({
					url: "/pages/training/offline_training_list"
				})
			},
			goOfflineTrainingDetail(item) {
				getApp().globalData.item = item;
				uni.navigateTo({
					url: "/pages/training/offline_training_detail"
				})
			},
		}
	}
</script>

<style>
	@import url("../../static/css/index.css");
	@import url("../../static/css/nav_bar.css");
</style>
<style>

</style>