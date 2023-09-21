<template>
	<view>
		<view class="u-content">
			<u-parse :content="content"></u-parse>
		</view>
		<!-- 内容1 -->
		<view class="album__content" style="background-color: white; display:flex;">
			<!-- 左 -->
			<view style="margin-left: 1vh;">
				<!-- 左上 -->
				<view>
					<u--text text="江苏(姜堰)现代农业 (稻麦) 科技综合示范基地"  bold size="1"></u--text>
				</view>
				<!-- 左下 -->
				<view style="margin-top: 3vh;">
					<u--text text="泰州市农业开发区江苏红旗种业"  size="1" ></u--text>
				</view>
			</view>
			<!-- 右 -->
			<view style=" margin-left: auto;">
				<!-- 右上 -->
				<view>
					<button  style="font-size: 4px;background-color: #2ed573;color: white;">查看详情</button>
				</view>
				<!-- 右下 -->
				<view>
					<button type="primary" style="font-size: 5px; margin-top: 4px;">去这里</button>
				</view>
			</view>


		</view>
		<!-- 内容2 -->
		<view class="album__content" style="background-color: white; display:flex;margin-top: 20px;">
			<!-- 左 -->
			<view style="margin-left: 1vh;">
				<!-- 左上 -->
				<view>
					<u--text text="江苏(姜堰)现代农业 (稻麦) 科技综合示范基地"  bold size="1"></u--text>
				</view>
				<!-- 左下 -->
				<view style="margin-top: 3vh;">
					<u--text text="泰州市农业开发区江苏红旗种业"  size="1" ></u--text>
				</view>
			</view>
			<!-- 右 -->
			<view style=" margin-left: auto;">
				<!-- 右上 -->
				<view>
					<button  style="font-size: 4px;background-color: #2ed573;color: white;">查看详情</button>
				</view>
				<!-- 右下 -->
				<view>
					<button type="primary" style="font-size: 5px; margin-top: 4px;">去这里</button>
				</view>
			</view>
		
		
		</view>

	</view>
	 
</template>

<script>
	export default {
		data() {
			return {
				content: `
				<img src="../../static/images/station/onlinebase/map.jpg" />
				

					
				`
			}
		},
	}
</script>

<style lang="scss" scoped>
	.u-content {
		padding: 24rpx;
		font-size: 30rpx;
		color: $u-content-color;
		line-height: 1.6;
		text-indent: 20px; //缩进了20px
		letter-spacing: 3px; //字体间距为8px
	}
</style>
