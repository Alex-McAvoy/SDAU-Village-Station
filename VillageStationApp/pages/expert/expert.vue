<template>
	<view class="body">
		<!-- 顶部 搜索栏 -->
		<div class="nav_bar">
			<u-row gutter="20" class="index_head">
				<u-col span="3">专家&nbsp;</u-col>
				<u-col span="7">
					<u-search :show-action="false"></u-search>
				</u-col>
			</u-row>
		</div>

		<!-- 专家 -->
		<view class="main_context first_main_context" style="margin-top: 100px;">
			<!-- 主体框 -->
			<view>
				<u-row gutter="16">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/index/index_news.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="专家" bold size="22"></u-text>
					</u-col>
				</u-row>
			</view>
			<!-- 栏目标签 -->
			<view>
				<u-tabs :list="expertBarList" :is-scroll="true" lineColor="#2ed573" @change="getExpertList"></u-tabs>
			</view>
			<!-- 专家列表 -->
			<div v-for="item in expertList">
				<view style="margin-top: 10px;" @click="goExpertDetail(item)">
					<view>
						<view style="display: flex;">
							<div>
								<image :src="item.remark"
									style="width:140px;height:180px;margin:3px;border-radius: 10px;" />
							</div>
							<div>
								<div class="main_title">
									{{ item.expertName }}
								</div>
								<div class="main_content">
									{{ fixedSize(item.introduction) }}
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
		getExpertListByColumn
	} from "@/api/station/expert.js";
	export default {
		data() {
			return {				
				expertList: [],
				expertBarList: [{
						name: '农学专家',
						index: 0
					}, {
						name: '林学专家',
						index: 1
					}, {
						name: '园艺专家',
						index: 2
					}, {
						name: '植保专家',
						index: 3
					}, {
						name: '动物专家',
						index: 4
					}, {
						name: '信息专家',
						index: 5
					}, {
						name: '农机专家',
						index: 6
					}, {
						name: '食科专家',
						index: 7
					}
				]
			}
		},
		created() {
			this.getExpertList({index:0})
		},
		methods: {
			getExpertList(item) {
				getExpertListByColumn(1,item.index).then(response => {
					this.expertList = response.data;
					this.loading = false;
				});
			},
			goExpertDetail(item) {
				getApp().globalData.item = item;
				uni.navigateTo({
					url: "/pages/expert/expert_detail"
				})
			},
			fixedSize(content) {
				return content.substring(0, 80) + "..."
			},
		}
	}
</script>

<style>
	@import url("../../static/css/index.css");
	@import url("../../static/css/nav_bar.css");
	@import url("../../static/css/text.css");
</style>
<style>
	.video_list {
		height: 195px;
		margin-top: 10px;
	}

	.video_img {
		max-height: 170px;
	}
</style>