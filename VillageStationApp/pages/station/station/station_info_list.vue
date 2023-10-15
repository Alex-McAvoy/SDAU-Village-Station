<template>
	<view class="body">
		<view style="border-radius: 10px; background-color: white;margin:15px;">
			<view class="news" v-for="item in Array.from(infoList)" @click="skip(item)">
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
</template>

<script>
	import {
		getStationListByColumn
	} from "@/api/station/station.js";
	
	export default {
		data() {
			return {
				infoList: [],
				userInfo: { // 用户信息
					userId: '',
					deptId: ''
				},
			}
		},
		created() {
			this.userInfo.deptId = this.$store.state.user.deptId
			this.getList(this.userInfo.deptId)
		},
		methods: {
			getList(sort) {
				this.loading = true;
				getStationListByColumn(1,sort).then(response => {
					if(response.data.length == 0) {
						this.infoList = [{title: '',content: '该驿站暂无数据',remark:''}]
					} else {
						this.infoList = response.data;
					}
					// this.infoList = response.data;
					this.loading = false;
				});
			},
			fixedSize(content) {
				return content.substring(0, 25) + "...."
			},
			skip(item) {
				getApp().globalData.item = item;
				uni.navigateTo({
					url: "/pages/station/station/station_info_detail"
				})
			}
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