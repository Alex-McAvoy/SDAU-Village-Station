<template>
	<view style="border-radius: 10px; background-color: white; margin:8px 15px; height: 90%;" :model="datailList">
<view>
			<u-loading-page :loading="loading"></u-loading-page>
		</view>
		<view> <!-- 主体框 -->
			<u-row gutter="16">
				<u-col span="1"></u-col>
				<u-col span="5" class="expert_img">
					<view :model="datailList" >
					<image :src="datailList.remark" style="width:160px;height:160px;border-radius: 10px;">
					</view>
				</u-col>
				<u-col span="6" class="bar" style="margin-left:-25px">
					<view :model="datailList" >
					<view class="sub_title" style="">{{ datailList.expertName }}</view>
					</view>
				</u-col>
			</u-row>
		</view>
		
		<view :model="datailList" >
		<view class="sub_content"><strong>研究方向</strong>：{{ datailList.direction }}</view>
		</view>
		<view :model="datailList" >
		<view class="sub_content">{{ datailList.introduction }}</view>
		</view>
		<view :model="datailList" >
		<view class="sub_content">{{ datailList.researchIntroduction }}</view>
		</view>
	</view>
	
	
</template>


<script>
	import {
		expertList,
		listExpert,
		getExpert,
		delExpert,
		addExpert,
		updateExpert
	} from "@/api/station/expert.js";
	export default {
		data() {
			return {
				loading: false,
				id:'', 
				datailList:{
					title:'',
					content:'',
					updateTime:'',
					remark:''
				}
			}
		},
		created() {
			this.gettail();
		},
		onLoad(options) {
			this.expertId = options.id;
		},
		methods: {
			gettail() {
				this.datailList = getApp().globalData.item;
			}
		}
	}
</script>

<style>
	@import url("../../static/css/text.css");

	.new_img {
		display: flex;
		justify-content: center;
		margin: 15px;
	}

	.expert_img {
		display: flex;
		justify-content: left;
		margin: 15px;
		padding: 5px 0 0 5px;
	}

	.direction {}
</style>