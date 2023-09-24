<template>
	<view class="body">
		<!-- 顶部 搜索栏 -->
		<u-row gutter="20" class="index_head">
			<u-col span="3">专家&nbsp;</u-col>
			<u-col span="7">
				<u-search :show-action="false"></u-search>
			</u-col>
			<u-col span="2">天气</u-col>
		</u-row>

		<!-- 专家 -->
		<view class="main_context first_main_context">
			<view> <!-- 主体框 -->
				<u-row gutter="16">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/index/index_news.png" style="height:30px;width:30px;" />
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
				<u-tabs :list="list" :is-scroll="true" v-on:click="getData" lineColor="#2ed573"
					@change="change"></u-tabs>
			</view>
		 
			<view class="flex_row video_list ">
				<view class="video_list_item">
					<view class="flex_col">
						<image src="/static/images/station/askExperts/shr.png" style="width:100%;height:160px;margin:3px" />
					</view>
					<view>束怀瑞</view>
				</view>
				<view class="video_list_item">
					<view class="flex_col">
						<image src="/static/images/station/askExperts/whg.png" style="width:100%;height:160px;margin:3px" />
					</view>
					<view>王洪刚</view>
				</view>
			</view>
		</view>
	</view>
</template>
<script>
	export default {
		onLoad: function() {},
		data() {
			return {
				cur: 0,
				text: '000',
				textList: ['1', '2', '3'],
				list: [{
					name: '全部 ',
				}, {
					name: '林学专家',
				}, {
					name: ' 农学专家 '
				}, {
					name: ' 植保专家 '
				}, {
					name: ' 园艺 '
				}],
			}
		},
		methods: {
			handleSelect(key, keyPath) {
				console.log(key, keyPath);
			},
			change(index) {
				this.cur = index;
				console.log(index)
				this.text = this.textList[index];
			},
			getData() {

			}
		}
	}
</script>

<style src="../../static/css/index.css">
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