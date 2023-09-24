<template>
	<view>


		<!-- 搜索框-->
		<view style=" display: flex; align-items: center;  background-color: white; justify-content: space-between;">
			<!-- 定位 -->
			<view style="margin-left: 1vh; align-items: center; margin-bottom: 10px;">
				<image src="../../static/images/station/onlinebase/location.png" style="width: 15px; height: 15px;">
				</image>
				<span style="color:#2ed573 ; margin-left: 5px; ">泰安</span>
			</view>
			<!-- 搜索框 -->
			<view style="width: 80%; height: 20px; margin-bottom: 20px; ">
				<u-search placeholder="搜索" v-model="keyword" actionText=""></u-search>
			</view>
		</view>

		<!-- 导航栏 -->
		<view style="border-radius: 5px; margin-top: -5px; margin-bottom: 1vh; background-color: white;">
			<u-tabs :list="list1" @click="click" class="tabs" style="align-items: center;" lineColor="#2ed573"
				lineWidth="50"> </u-tabs>
		</view>

		<!-- 内容1 -->
		<view style="display: flex;  background-color: white;margin: 15px; border-radius: 10px; overflow: hidden; display:flex;">
			<image src="../../static/images/station/channel/cornharvester.jpg"
				style="width: 160px;height: 100px; border-radius: 10px; overflow: hidden; margin: 1vh;">
			</image>
			<!-- 左上 -->
			<view style="margin-left: 2vh; margin-top: 8px;">
				<u--text text="玉米收割机" bold size="17"></u--text>
				<u--text color="#909090 " text="春种秋收一条龙,实现高收益的高性能机器" size="15"></u--text>
			</view>
			<!-- 时间 -->
			<!-- <view style=" margin-top: 7vh;margin-right: 1px;">
				<u--text color="#909090 " margin="5px" text="2023-07-14 14:00"></u--text>
			</view> -->
		</view>

		<!--内容2 -->

		<view
			style="display: flex; background-color: white;margin: 15px; border-radius: 10px; overflow: hidden; display:flex;">
			<image src="../../static/images/station/channel/Fragrans.jpg"
				style="width: 150px;height: 150px;  border-radius: 10px; overflow: hidden; width: 120px; height: 100px; margin: 1vh;">
			</image>
			<!-- 左上 -->
			<view style="margin-left: 2vh; margin-top: 8px;">
				<u--text text="桂花,桂花蜜" bold size="17"></u--text>
				<u--text color="#909090 " text="桂花具有杀菌美容功效" size="15"></u--text>
			</view>
			<!-- 时间 -->
			<!-- <view style=" margin-top: 7vh;margin-left: 10px;">
				<u--text color="#909090 " margin="5px" text="2023-09-15 16:00"></u--text>
			</view> -->
		</view>
		<!-- 内容3 -->
		<view style="display: flex; background-color: white;margin: 15px; border-radius: 10px; overflow: hidden; ">
			<image src="../../static/images/station/channel/Goose.jpg"
				style="width: 150px;height: 150px;border-radius: 10px; overflow: hidden; width: 120px; height: 100px; margin: 1vh;">
			</image>
			<!-- 左上 -->
			<view style="margin-left: 2vh; margin-top: 8px;">
				<u--text text="大白鹅" bold size="17"></u--text>
				<u--text color="#909090 " text="散养河道大白鹅" size="15"></u--text>
			</view>
			<!-- 时间 -->
			<!-- <view style=" margin-top: 7vh;margin-right: 1px;">
				<u--text color="#909090 " margin="5px" text="2023-07-14 14:00"></u--text>
			</view> -->
		</view>

		<!-- 内容4 -->
		<view style="display: flex; background-color: white;margin: 15px; border-radius: 10px; overflow: hidden; ">
			<image src="../../static/images/station/channel/sheep.jpg"
				style="width: 150px;height: 150px;border-radius: 10px; overflow: hidden; width: 120px; height: 100px; margin: 1vh;">
			</image>
			<!-- 左上 -->
			<view style="margin-left: 2vh; margin-top: 8px;">
				<u--text text="黑山羊" bold size="17"></u--text>
				<u--text color="#909090 " text="本地黑山羊膻味少" size="15"></u--text>
			</view>
			<!-- 时间 -->
			<!-- <view style=" margin-top: 7vh;margin-right: 1px;">
				<u--text color="#909090 " margin="5px" text="2023-07-14 14:00"></u--text>
			</view> -->
		</view>

		<!-- 内容5 -->
		<view style="display: flex;  background-color: white;margin: 15px; border-radius: 10px; overflow: hidden; ">
			<image src="../../static/images/station/channel/tomato.jpg"
				style="width: 150px;height: 150px; border-radius: 10px; overflow: hidden; width: 120px; height: 100px; margin: 1vh;">
			</image>
			<!-- 左上 -->
			<view style="margin-left: 2vh;margin-top: 8px;">
				<u--text text="小番茄" bold size="17"></u--text>
				<u--text color="#909090 " text="优质圣女果肉软，水分足" size="15"></u--text>
			</view>
			<!-- 时间 -->
			<!-- <view style=" margin-top: 7vh;margin-right: 1px;">
				<u--text color="#909090 " margin="5px" text="2023-07-14 14:00"></u--text>
			</view> -->
		</view>

		<view style="display: flex;  background-color: white;margin: 15px; border-radius: 10px; overflow: hidden; ">
			<image src="../../static/images/station/learningTechnology/melon.jpg"
				style="width: 150px;height: 150px;  border-radius: 10px; overflow: hidden; width: 120px; height: 100px; margin: 1vh;">
			</image>
			<!-- 左上 -->
			<view style="margin-left: 2vh; margin-top: 8px;">
				<u--text text="黄杨木" bold size="17"></u--text>
				<u--text color="#909090 " text="耐晒耐阴,耐寒耐热" size="15"></u--text>
			</view>
			<!-- 时间 -->
			<!-- <view style=" margin-top: 7vh;margin-right: 1px;">
				<u--text color="#909090 " margin="5px" text="2023-07-14 14:00"></u--text>
			</view> -->
		</view>
		<!-- 悬浮框 -->
		<u-button class="custom-style" color="#2ed573" type="primary" shape="circle"
			style="  width: 100px; height: 100px; position: fixed;bottom: 50px;right: 30px; font-size: 50px;">＋
		</u-button>

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

			}
		},
		methods: {
			click(item) {
				console.log('item', item);
			},


		}
	}
</script>

<style lang="scss">
	// 悬浮框强制按钮
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

	// 导航栏字体
	::v-deep .u-tabs__wrapper__nav__item__text {
		font-size: 19px !important;
	}
</style>