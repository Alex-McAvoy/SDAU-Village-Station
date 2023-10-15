<template>
	<view class="body">
		<view>
			<u-loading-page :loading="loading"></u-loading-page>
		</view>
		<view class="main_context first_main_context" style="margin-top: 10px;">
			<!-- 视频列表 -->
			<view class="" style="width:100%; padding-bottom: 10px; border-bottom: 1px solid #cbcbcb; margin-top: 4px;"
				v-for="item in Array.from(trainingList)" @click="goOnlineTrainingDetail(item)">
				<u-row style="height: 75px; margin-left: 10px;">
					<u-col span="8">
						<u--text :text="item.title"></u--text>
					</u-col>
					<u-col span="4" class="flex_col">
						<image :src="item.remark" style="height:80px;width:100%; object-fit: cover;">
					</u-col>
				</u-row>
				<u-row style="height: 25px; margin-left: 10px;">
					<u-col span="8">
						<u--text color="#cbcbcb" :text="item.createTime"></u--text>
					</u-col>
					<u-col span="4" style="display:flex;flex-direction:  row-reverse ;padding-left:50px ">
						<image src="@/static/images/training/show.png"
							style="margin-top: 9px;height: 20px;width: 20px;">
						</image>
					</u-col>
				</u-row>
			</view>
		</view>
	</view>
</template>

<script>
	import {
		listOnlineTraining,
	} from "@/api/system/online_training";
	export default {
		onLoad: function() {},
		data() {
			return {
				loading: false,
				trainingList: [],
			}
		},
		created() {
			this.loading = true;
			listOnlineTraining(this.queryParams).then(response => {
				this.trainingList = response.rows;
				this.total = response.total;
				this.loading = false;
			});
		},
		methods: {
			goOnlineTrainingDetail(item) { //跳转线上详情
				getApp().globalData.item = item;
				uni.navigateTo({
					url: "/pages/training/online_training_detail"
				})
			},
		}
	}
</script>

<style>
	@import url("../../static/css/index.css");
	@import url("../../static/css/nav_bar.css");
</style>