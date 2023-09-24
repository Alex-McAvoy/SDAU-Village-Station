<template>
	<view>
		<view class="view_box">
			<u--image src="../../static/images/station/onlinebase/map.jpg" > </u--image>
		</view>
		<!-- 内容1 -->
		<view class="album__content" style="background-color: white; display:flex;margin: 15px;">
			<!-- 左 -->
			<view style="margin-top: 15px; margin-left: 15px;margin-right: ;">
				<!-- 左上 -->
				<view style="margin-right: 15px;">
					<u--text text="江苏(姜堰)现代农业 (稻麦) 科技综合示范基地"  bold size="1"  ></u--text>
				</view>
				<!-- 左下 -->
				<view style="margin-top: 3vh; display:flex; ">
					<view>
						<image src="../../static/images/station/onlinebase/location.png"
						style="width: 13px;height: 15px;" ></image>
					</view>
					<view style="margin-left: 2vh;">
						<u--text text="泰州市农业开发区江苏红旗种业" size="1" ></u--text>
					</view>
					
				</view>
			</view>
			<!-- 右 -->
			<view style=" margin-right: 15px;">
				<!-- 右上 -->
				<view style="margin-top: 15px;">
					<button  style="font-size: 4px;background-color: #00ae67 ;color: white;">查看详情</button>
				</view>
				<!-- 右下 -->
				<view>
					<button type="primary" style="font-size: 5px; margin-bottom: 15px;margin-top: 3px;">去这里</button>
				</view>
			</view>


		</view>
		<!-- 内容2 -->
		<view class="album__content" style="background-color: white; display:flex;margin: 15px;">
					<!-- 左 -->
					<view style="margin-top: 15px; margin-left: 15px;margin-right: ;">
						<!-- 左上 -->
						<view style="margin-right: 15px;">
							<u--text text="江苏(姜堰)现代农业 (稻麦) 科技综合示范基地"  bold size="1"  ></u--text>
						</view>
						<!-- 左下 -->
						<view style="margin-top: 3vh; display:flex; ">
							<view>
								<image src="../../static/images/station/onlinebase/location.png"
								style="width: 13px;height: 15px;" ></image>
							</view>
							<view style="margin-left: 2vh;">
								<u--text text="泰州市农业开发区江苏红旗种业" size="1" ></u--text>
							</view>
							
						</view>
					</view>
					<!-- 右 -->
					<view style=" margin-right: 15px;">
						<!-- 右上 -->
						<view style="margin-top: 15px;">
							<button  style="font-size: 4px;background-color: #00ae67 ;color: white;">查看详情</button>
						</view>
						<!-- 右下 -->
						<view>
							<button type="primary" style="font-size: 5px; margin-bottom: 15px;margin-top: 3px;">去这里</button>
						</view>
					</view>
		
		
				</view>
			<!-- 右 -->
			
		
		
		</view>

	</view>
	 
</template>

<script>

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
	.view_box{
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  width: 100%;
	  height: 100%;
	}
</style>
