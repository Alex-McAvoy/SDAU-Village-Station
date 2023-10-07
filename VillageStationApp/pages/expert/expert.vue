<template>
	<view class="body">
		<!-- 顶部 搜索栏 -->
		<div class="nav_bar">
			<u-row gutter="20" class="index_head">
				<u-col span="3">专家&nbsp;</u-col>
				<u-col span="7">
					<u-search :show-action="false"></u-search>
				</u-col>
				<u-col span="2">天气</u-col>
			</u-row>
		</div>

		<!-- 专家 -->
		<view class="main_context first_main_context" style="margin-top: 100px;">
			<view> <!-- 主体框 -->
				<u-row gutter="16">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/index/index_news.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="专家" bold size="22"></u-text>
					</u-col>
					<u-col span="1">
						<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;"/>
					</u-col>
				</u-row>
			</view>
			<view> <!-- 栏目标签 -->
				<u-tabs :list="list" :is-scroll="true" lineColor="#2ed573"
					@change="change"></u-tabs>
			</view>
			 <div v-for="oneexpert in expert" :key="oneexpert.id" >
				 <view style="margin-top: 10px;" @click="expertdetail(oneexpert.askExpertsId)">
					<view >
						<view  style="display: flex;">
							<div>
								<image :src="oneexpert.remark" style="width:160px;height:160px;margin:3px;border-radius: 10px;" />
							</div>
							<div>
								<div class="main_title" >
									{{ oneexpert.expertName }}
								</div>
								<div class="main_content">
									{{ fixedSize(oneexpert.introduction) }}
								</div>
							</div>
						</view>
					</view>
				 </view>
			 </div>
		
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
		onLoad: function() {},
		data() {
			return {
				expert:[],
				cur: 0,
				text: '000',
				textList: ['1', '2', '6'],
				list: [ {
					name: '农学专家',
				}, {
					name: '林学专家'
				}, {
					name: '园艺专家'
				}, {
					name: '植保专家'
				}],
			}
		},
		created(){
			this.change(0)
		},
		methods: {
			handleSelect(key, keyPath) {
				// console.log(key, keyPath);
			},
			change(index) {
				let tmp = 0
				if(index != 0) {
					tmp = index.index
				}
				
				// 后期该处需修改！！！
				if (index.index === 3) {
					tmp = 6
				}
				expertList(tmp).then(response => {
					console.log(response)
					this.expert = response.data;
					// this.total = response.total;
					this.loading = false;
				});
			},
			expertdetail(id){
				console.log(id)
				uni.navigateTo({
					url: "/pages/expert/expert_detail?id=" + id
				})
				
			},
			fixedSize(content) {
				return content.substring(0, 25) + "..."
			},
		}
	}
</script>

<style >
	@import url("../../static/css/index.css");
	@import url("../../static/css/nav_bar.css");
	@import url("../../static/css/text.css");
</style>
<style>
	.video_list{
		height:195px;
		margin-top:10px;
	}
	.video_img{
		max-height:170px;
	}
</style>