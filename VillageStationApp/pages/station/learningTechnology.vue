<template>
	<view>
		<!-- 头部 -->
		<view style="margin: 15px; border-radius: 10px; overflow: hidden; background-color: white;">
			<u-grid :border="false" col="4">
				<u-grid-item v-for="(listItem,listIndex) in list" :key="listIndex">
					<u-icon :customStyle="{paddingTop:20+'rpx'}" :name="listItem.name" :size="22"
						color="#2ed573"></u-icon>
					<text class="grid-text">{{listItem.title}}</text>
				</u-grid-item>
			</u-grid>
			<u-toast ref="uToast" />
		</view>
		<!-- 内容一 -->
		<view style="display: flex;  background-color: white;margin: 15px; border-radius: 10px; overflow: hidden; ">
			<image src="../../static/images/station/learningTechnology/melon.jpg"
				style=" margin-bottom: 8px; width: 150px;height: 150px; padding-top: 1vh; border-radius: 10px; overflow: hidden; width: 120px; height: 100px; margin-left: 1vh;">
			</image>
			<view style="margin-left: 1vh;">
				<u--text text="大棚早春薄皮甜瓜—秋延红辣椒高效套作栽培模式 " type="primary" bold size="17" style="margin-top: 5px;"></u--text>
				<view style="display: flex; margin-top: 3vh;">
					<u--text color="#909090 " margin="0 0 8px 0" text="中国政府网 "></u--text>
					<u--text color="#909090 " margin="0 0 8px 0" text="342人阅读" style="justify-content:end;"></u--text>
				</view>
			</view>
		</view>
		<!-- 内容二 -->
		<view style="display: flex;  background-color: white;margin: 15px; border-radius: 10px; overflow: hidden; ">
			<image src="../../static/images/station/learningTechnology/melon.jpg"
				style="  margin-bottom: 8px; width: 150px;height: 150px; padding-top: 1vh; border-radius: 10px; overflow: hidden; width: 120px; height: 100px; margin-left: 1vh;">
			</image>
			<view style="margin-left: 1vh;">
				<u--text text="大棚早春薄皮甜瓜—秋延红辣椒高效套作栽培模式 " type="primary" bold size="17" style="margin-top: 5px;"></u--text>
				<view style="display: flex; margin-top: 3vh;">
					<u--text color="#909090 " margin="0 0 8px 0" text="中国政府网 "></u--text>
					<u--text color="#909090 " margin="0 0 8px 0" text="342人阅读" style="justify-content:end;"></u--text>
				</view>
			</view>
		</view>
		<!-- 内容三 -->
		<view style="display: flex;  background-color: white;margin: 15px; border-radius: 10px; overflow: hidden; ">
			<image src="../../static/images/station/learningTechnology/melon.jpg"
				style="  margin-bottom: 8px; width: 150px;height: 150px; padding-top: 1vh; border-radius: 10px; overflow: hidden; width: 120px; height: 100px; margin-left: 1vh;">
			</image>
			<view style="margin-left: 1vh;">
				<u--text text="大棚早春薄皮甜瓜—秋延红辣椒高效套作栽培模式 " type="primary" bold size="17" style="margin-top: 5px;"></u--text>
				<view style="display: flex; margin-top: 3vh;">
					<u--text color="#909090 " margin="0 0 8px 0" text="中国政府网 "></u--text>
					<u--text color="#909090 " margin="0 0 8px 0" text="342人阅读" style="justify-content:end;"></u--text>
				</view>
			</view>
		</view>
		<!-- 内容四 -->
		<view style="display: flex;  background-color: white;margin: 15px; border-radius: 10px; overflow: hidden; ">
			<image src="../../static/images/station/learningTechnology/melon.jpg"
				style="  margin-bottom: 8px; width: 150px;height: 150px; padding-top: 1vh; border-radius: 10px; overflow: hidden; width: 120px; height: 100px; margin-left: 1vh;">
			</image>
			<view style="margin-left: 1vh;">
				<u--text text="大棚早春薄皮甜瓜—秋延红辣椒高效套作栽培模式 " type="primary" bold size="17" style="margin-top: 5px;"></u--text>
				<view style="display: flex; margin-top: 3vh;">
					<u--text color="#909090 " margin="0 0 8px 0" text="中国政府网 "></u--text>
					<u--text color="#909090 " margin="0 0 8px 0" text="342人阅读" style="justify-content:end;"></u--text>
				</view>
			</view>
		</view>
		<!-- 内容五 -->
		<view style="display: flex;  background-color: white;margin: 15px; border-radius: 10px; overflow: hidden; ">
			<image src="../../static/images/station/learningTechnology/melon.jpg"
				style="  margin-bottom: 8px; width: 150px;height: 150px; padding-top: 1vh; border-radius: 10px; overflow: hidden; width: 120px; height: 100px; margin-left: 1vh;">
			</image>
			<view style="margin-left: 1vh;">
				<u--text text="大棚早春薄皮甜瓜—秋延红辣椒高效套作栽培模式 " type="primary" bold size="17" style="margin-top: 5px;"></u--text>
				<view style="display: flex; margin-top: 3vh; ">
					<u--text color="#909090 " margin="0 0 8px 0" text="中国政府网 "></u--text>
					<u--text color="#909090 " margin="0 0 8px 0" text="342人阅读" style="justify-content:end;"></u--text>
				</view>
			</view>
		</view>
		
	</view>
</template>

<script>
	export default {
		data() {
			return {
				list: [{
						name: 'bag-fill',
						title: '水稻'
					},
					{
						name: 'bookmark-fill',
						title: '小麦'
					},
					{
						name: 'setting-fill',
						title: '蔬菜'
					},
					{
						name: 'coupon-fill',
						title: '果树'
					},
					{
						name: 'pushpin-fill',
						title: '植保'
					},
					{
						name: 'grid-fill',
						title: '禽畜'
					},
					{
						name: 'car-fill',
						title: '农机装备'
					},
					{
						name: 'integral-fill',
						title: '水产'
					},
				],
			}
		},
		methods: {
			click(name) {
				this.$refs.uToast.success(`点击了第${name}个`)
			}
		}
	}
</script>

<style lang="scss">
	.grid-text {
		font-size: 14px;
		color: #222325;
		padding: 10rpx 0 20rpx 0rpx;
		/* #ifndef APP-PLUS */
		box-sizing: border-box;
		/* #endif */
	}
</style>