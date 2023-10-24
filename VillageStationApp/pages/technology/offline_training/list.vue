<template>
	<view class="body">
		<view style="border-radius: 10px; background-color: white;margin:15px;">
			<view class="news" v-for="item in offlineList" @click="goOfflineDetail(item)">
				<view class="new_img">
					<image :src="item.remark" alt=""
						style="width:100%;height: 70px;overflow: hidden">
				</view>
				<view class="new_title">{{ item.title }}</view>
				<view class="new_origin">
					<u-parse style="margin-bottom: 20px;" :content="fixedSize(item.content)"></u-parse>
				</view>
				
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	import {
		getOfflineTrainingList,
	} from "@/api/technology/index.js";
	import {
		updateOfflineTrainingReading,
	} from "@/api/technology/offline_training/index.js";
	
	export default {
		data() {
			return {
				offlineList: []
			}
		},
		created() {
			this.getOfflineList({
			})
		},
		methods: {
			//查询线下培训列表
			getOfflineList() {
				this.loading = true;
				getOfflineTrainingList().then(response => {
					this.offlineList = response.rows;
				});
			},
			//根据id查询线下培训详情页
			goOfflineDetail(item){
				//更新阅读量
				updateOfflineTrainingReading(item).then(response => {});
				getApp().globalData.item = item;
				uni.navigateTo({
					url: "/pages/technology/offline_training/detail"
				})
			},
			//字符限制
			fixedSize(content) {
				return content.substring(0, 25) + "..."
			},
		}
	}
</script>

<style src="../../../static/css/index.css">
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