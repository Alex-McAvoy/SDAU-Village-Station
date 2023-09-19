<template>
	<view>
		<!-- 轮番滚动 -->
		<view>
			<u-swiper :list="list3" indicator indicatorMode="line" circular></u-swiper>
		</view>

		<!-- 导航栏 -->
		<view style="border-radius: 5px; margin-bottom: 2vh;">
			<u-tabs :list="list1" @click="click" class="tabs" style="align-items: center;" lineColor="#1c861a"
				lineWidth="50"> </u-tabs>
		</view>

		<!-- 我的优品：(驿站区域的农业品牌) 肥城桃-->
		<view class="album__content">
			<u--text text="天上蟠桃，人间肥桃" type="primary" bold size="17" text-align: center></u--text>
			<u--text margin="0 0 8px 0"
				text="肥城桃，山东省泰安市肥城市特产，全国农产品地理标志.肥城桃简称“肥桃”，因产于山东省肥城市境内而得名。已有1100多年的栽培历史。 肥城桃果形端正、美观，呈圆球型，果尖稍凸，缝合线深而明显，梗洼深广，两半对称。成熟后果面底色米黄色（部分阳面有红晕）。果实肥大， 粘核，果肉乳白，肉质细嫩致密，柔软多汁，口味甘甜。 "></u--text>
			<image src="/static/images/peach.jpg" style="width: 300px;height: 150px; padding-left: 5vh; "></image>
		</view>

		<!-- 我的优品：(驿站区域的农业品牌) 烟台苹果 -->
		<view class="album__content">
			<u--text text="中国苹果看山东，山东苹果看烟台" type="primary" bold size="17" text-align: center></u--text>
			<u--text margin="0 0 8px 0"
				text="烟台市是我国苹果种植最早的地区，也是苹果栽种面积最大，产量最多的地区。烟台苹果，品种优良，风味独具，很受人们喜爱，被誉为胶东水果家族的“皇后”。烟台苹果甜脆可口，富于营养，除了含有丰富的糖外，还含有苹果酸、胡萝卜素、抗坏血酸以及钙、铁、锌等多种人体健康所必需的物质。所以，它倍受营养学家的青睐。"></u--text>
			<image src="/static/images/apple.png" style="width: 300px;height: 150px; padding-left: 5vh; "></image>
		</view>
		<!-- 动态农业资讯 -->
		<!-- url实现页面跳转 -->
		<view>
			<u-notice-bar :text="text1" mode="closable" speed="100" url="/pages/componentsB/tag/tag"></u-notice-bar>
		</view>

	</view>


</template>

<script>
	export default {
		data() {
			return {
				list1: [{
					name: '我的优品',
				}, {
					name: '品牌展示',
				}, ],
				list3: [
					'/static/images/produepolicy1.jpg',
					'/static/images/produepolicy2.jpg',
					'/static/images/produepolicy3.jpg',
				],
				text1: '甘肃文县茶亮相北京茶博会 甘茶品牌魅力绽放'
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
	.album__content {
		margin-top: 2vh;
		border-bottom: 1px solid #979797;
		text-indent: 20px; //缩进了20px
		letter-spacing: 3px; //字体间距为8px
	}

	.u-page {
		background-color: white;
		height: 100%;
		border-radius: 5px;
		margin: 1vh;
	}

	.album {
		@include flex;
		align-items: flex-start;


		&__avatar {
			background-color: $u-bg-color;
			padding: 5px;
			border-radius: 3px;
		}

		&__content {
			margin-left: 10px;
			flex: 1;
		}
	}

	image {
		margin-bottom: 2vh;


	}

	::v-deep .u-tabs__wrapper__nav__item__text {
		font-size: 19px !important;
	}
</style>