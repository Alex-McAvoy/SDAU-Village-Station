<template>
	<view class="body">
		<!-- 顶部 搜索栏 -->
		<u-row gutter="20" class="index_head">
			<u-col span="3">培训&nbsp;</u-col>
			<u-col span="7">
				<u-search :show-action="false"></u-search>
			</u-col>
			<u-col span="2">天气</u-col>
		</u-row>

		<!-- 专家 -->
		<view class="main_context first_main_context">
			<view> <!-- 主体框 -->
				<u-row gutter="16">
					<u-col span="2">
						<svg t="1694852434425" class="icon" viewBox="0 0 1024 1024" version="1.1"
							xmlns="http://www.w3.org/2000/svg" p-id="9323"
							data-spm-anchor-id="a313x.search_index.0.i11.77e73a81VQhc3c" width="23" height="23">
							<path
								d="M878.18 118.28l-732.3 0c-58.14 0-105.42 47.34-105.42 105.42l0 576.48c0 58.2 47.34 105.48 105.42 105.48l732.3 0c58.14 0 105.42-47.28 105.42-105.48l0-576.42c-0.06-58.14-47.34-105.48-105.42-105.48zM923.54 800.24c0 25.08-20.4 45.48-45.42 45.48l-732.24 0c-25.02 0-45.42-20.4-45.42-45.48l0-576.48c0-25.02 20.4-45.42 45.42-45.42l732.3 0c25.02 0 45.42 20.4 45.42 45.42l0 576.48zM181.04 264.08l661.86 0 0 61.86-661.86 0 0-61.86zM542 390.74l300.96 0 0 61.86-300.96 0 0-61.86zM542 516.08l300.96 0 0 88.74-300.96 0 0-88.74zM542 692l246.36 0 0 61.86-246.36 0 0-61.86zM181.04 391.64l285.96 0 0 362.16-285.96 0 0-362.16z"
								fill="#2ed573" p-id="9324"></path>
						</svg>
					</u-col>
					<u-col span="9" class="bar">培训</u-col>
					<u-col span="1">
						<svg t="1694850751155" class="icon" viewBox="0 0 1024 1024" version="1.1"
							xmlns="http://www.w3.org/2000/svg" p-id="8256" width="23" height="23">
							<path
								d="M326.4 838.4l352-352c12.8-12.8 32-12.8 44.8 0l0 0c12.8 12.8 12.8 32 0 44.8l-352 352c-12.8 12.8-32 12.8-44.8 0l0 0C313.6 876.8 313.6 851.2 326.4 838.4z"
								p-id="8257" fill="#cdcdcd"></path>
							<path
								d="M678.4 531.2 326.4 185.6c-12.8-12.8-12.8-32 0-44.8l0 0C339.2 128 358.4 128 371.2 134.4l352 352c12.8 12.8 12.8 32 0 44.8l0 0C710.4 544 684.8 544 678.4 531.2z"
								p-id="8258" fill="#cdcdcd"></path>
						</svg>
					</u-col>
				</u-row>
			</view>
			<view> <!-- 栏目标签 -->
				<u-tabs :list="list" :is-scroll="true" v-on:click="getData" active-color="#2ed573"
					@change="change"></u-tabs>
			</view>
			<view class="flex_row video_list">
				<view class="video_list_item">
					<view class="flex_col">
						<img class="video_img" src="../../static/images/index/index_video.jpg" />
					</view>
					<view class="common_text_size">扎费特旗农业技术</view>
				</view>
				<view class="video_list_item">
					<view class="flex_col">
						<img class="video_img" src="../../static/images/index/index_video.jpg" />
					</view>
					<view class="common_text_size">扎费特旗农业技术</view>
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
					name: '园艺培训',
				}, {
					name: ' 粮食种植 '
				}, {
					name: ' 蔬菜种植 '
				}, {
					name: '家畜养殖'
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
 
</style>