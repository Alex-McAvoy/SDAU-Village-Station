<template>
	<view class="u-page">
		<!-- 导航栏 -->
		<view style="border-radius: 5px; margin-bottom: 2vh; ">
			<u-tabs :list="list1" @click="click" class="tabs" style="align-items: center;" lineColor="#2ed573"
				lineWidth="50"> </u-tabs>
		</view>
		
		<!-- 搜索框 -->
		<view
			style=" display: flex; align-items: center; margin: 5px; border-radius: 5px; overflow: hidden; background-color: white; justify-content: space-between;">
			<!-- 定位 -->
			<view style="margin-left: 1vh;">
				<u-icon name="home-fill" color="#2ed573" size="20" label="泰安" labelSize="10px"></u-icon>
			</view>
			<!-- 搜索框 -->
			<view style="width: 80%;">
				<u-search placeholder="点我进行搜索" v-model="keyword"></u-search>
			</view>
		</view>
		<!-- 上传图片 -->
		<view style="  margin-top: 1vh;
		border-bottom: 1px solid #979797;
		border-radius: 5px;
		background-color: white;">
			<u-upload :fileList="fileList3" @afterRead="afterRead" @delete="deletePic " name="3" multiple :maxCount="10"
				:previewFullImage="true"></u-upload>
		</view>
		<!-- 列表栏 -->
		<view style="background-color: green;"><u-index-list :index-list="indexList">
				<template v-for="(item, index) in itemArr">
					<!-- #ifdef APP-NVUE -->
					<u-index-anchor :text="indexList[index]"></u-index-anchor>

					<!-- #endif -->
					<u-index-item>
						<!-- #ifndef APP-NVUE -->
						<u-index-anchor :text="indexList[index]"></u-index-anchor>
						<!-- #endif -->
						<view class="list-cell" v-for="(cell, index) in item">
							{{cell}}
						</view>
					</u-index-item>
				</template>
			</u-index-list></view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				list1: [{
					name: '供应',
				}, {
					name: '求购 ',
				}, ],

				fileList3: [{
					url: '../../static/images/station/channel/demand.jpg',
				}],

				indexList: ["叶菜类", "豆菜类", "食用菌"],
				itemArr: [
					['精品黄心大白菜', '生菜', '苋菜', '香菜', '卷心菜'],
					['毛豆', '四季豆', '豆角', '扁豆'],
					['松菇菌', '鹿茸菇', '荷灵菇', '灵芝菇']
				]
			}
		},
		methods: {
			click(item) {
				console.log('item', item);
			},

			scrolltolower() {
				this.loadmore()
			},
		}
	}
</script>

<style lang="scss">
	.list-cell {
		display: flex;
		box-sizing: border-box;
		width: 100%;
		padding: 10px 24rpx;
		overflow: hidden;
		color: #323233;
		font-size: 14px;
		line-height: 24px;
		background-color: #fff;

	}
</style>