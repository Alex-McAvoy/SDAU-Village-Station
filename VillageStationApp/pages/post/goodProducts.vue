<template>
	<view>
		<view class="container">
			<view class="u-demo-block">
				<u-swiper style="margin-top: 20px;" height="180" :list="list" previousMargin="30" nextMargin="30"
					circular :autoplay="false" radius="5" bgColor="#ffffff"></u-swiper>
			</view>
		</view>
		<view class="module">
			<u-icon size="30" color="#25a52d" name="thumb-up"></u-icon>
			<u-text style="font-weight: 20px;" margin="8px 0px 0px 10px" text="农产品展示" bold size="20"></u-text>
		</view>
		<view style="height: 13vh; width: 100%;  border-radius: 10px; background-color: white;  margin-top: 1vh;">
			<view class="u-page">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image src="/static/lh.png"
								style="margin-top: 10px; width: 70px; height: 80px;border-radius: 8px; overflow: hidden;">
							</image>
						</view>
						<view class="album__content">
							<u-text margin="20px 0 10px 0" text="鲁花（山东春兴粮油集团有限公司）" bold size="18"></u-text>
							<u-text margin="20px 0 8px 0" text="鲁花是中国知名的食用油品牌，其产品包括花生油、豆油、调和油等。"
								color="rgb(169,169,169)" bold size="16"></u-text>
						</view>
					</view>
				</view>
			</view>
		</view>
		<view style="height: 13vh; width: 100%;  border-radius: 10px; background-color: white;  margin-top: 1vh;">
			<view class="u-page">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image src="/static/ts.png"
								style="margin-top: 10px; width: 70px; height: 80px;border-radius: 8px; overflow: hidden;">
							</image>
						</view>
						<view class="album__content">
							<u-text margin="20px 0 10px 0" text="泰山（泰山集团）" bold size="20"></u-text>
							<u-text margin="20px 0 8px 0" text="泰山是中国著名的茶叶品牌，主要生产各类优质茶叶，如绿茶、红茶、乌龙茶等。"
								color="rgb(169,169,169)" bold size="16"></u-text>
						</view>
					</view>
				</view>
			</view>
		</view>
		<view style="height: 13vh; width: 100%;  border-radius: 10px; background-color: white;  margin-top: 1vh;">
			<view class="u-page">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image src="/static/logo.png"
								style="margin-top: 10px; width: 70px; height: 80px;border-radius: 8px; overflow: hidden;">
							</image>
						</view>
						<view class="album__content">
							<u-text margin="20px 0 10px 0" text="蓝湾（山东蓝湾集团）" bold size="20"></u-text>
							<u-text margin="20px 0 8px 0" text="蓝湾是中国知名的水果品牌，其产品主要包括苹果、樱桃、葡萄等。" color="rgb(169,169,169)"
								bold size="16"></u-text>
						</view>
					</view>
				</view>
			</view>
		</view>
		<view class="module">
			<u-icon size="25" color="#25a52d" name="clock"></u-icon>
			<u-text style="font-weight: 20px;" margin="6px 0px 0px 10px" text="优品动态" bold size="20"></u-text>
		</view>
		<view style="height: 13vh; width: 100%;  border-radius: 10px; background-color: white;  margin-top: 1vh;">
			<view class="u-page">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image src="/static/cha.png"
								style="margin-top: 10px; width: 70px; height: 80px;border-radius: 8px; overflow: hidden;">
							</image>
						</view>
						<view class="album__content">
							<u-text margin="8px 0 10px 0" text="泰山茶" bold size="20"></u-text>
							<u-text margin="10px 0 8px 0" text="到2018年泰安市茶园面积4.5万亩，产量1770吨，产值达11亿，位列山东省的第三位。"
								color="rgb(169,169,169)" bold size="16"></u-text>
						</view>
					</view>
				</view>
			</view>
		</view>
		<view style="height: 13vh; width: 100%;  border-radius: 10px; background-color: white;  margin-top: 1vh;">
			<view class="u-page">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image src="/static/hd.png"
								style="margin-top: 10px; width: 70px; height: 80px;border-radius: 8px; overflow: hidden;">
							</image>
						</view>
						<view class="album__content">
							<u-text margin="8px 0 10px 0" text="荣成海带" bold size="20"></u-text>
							<u-text margin="10px 0 8px 0" text="山东省威海市特产，中国国家地理标志产品。" color="rgb(169,169,169)" bold
								size="16"></u-text>
						</view>
					</view>
				</view>
			</view>
		</view>
		<view style="height: 16vh; width: 100%;  border-radius: 10px; background-color: white;  margin-top: 1vh;">
			<view class="u-page">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image src="/static/sy.png"
								style="margin-top: 15px; width: 80px; height: 90px;border-radius: 8px; overflow: hidden;">
							</image>
						</view>
						<view class="album__content">
							<u-text margin="8px 0 10px 0" text="新城细毛山药" bold size="20"></u-text>
							<u-text margin="10px 0 8px 0"
								text="新城细毛山药栽培历史悠久，早在明清年间就享有盛誉。因其特殊的水土生长条件，成为山药家族中的上乘之品，并成为宫廷贡品。"
								color="rgb(169,169,169)" bold size="16"></u-text>
						</view>
					</view>
				</view>
			</view>
		</view>
		<view style="height: 16vh; width: 100%;  border-radius: 10px; background-color: white;  margin-top: 1vh;">
		</view>
		<u-tabbar :value="value1" @change="change1" :fixed="false" :placeholder="false"
			style="margin-right: 300px; width: 100%;" :safeAreaInsetBottom="false" class="custom-tabbar">
			<u-tabbar-item text="首页" icon="home" @click="click1"></u-tabbar-item>
			<u-tabbar-item text="放映厅" icon="photo" @click="click1"></u-tabbar-item>
			<u-tabbar-item text="直播" icon="play-right" @click="click1"></u-tabbar-item>
			<u-tabbar-item text="我的" icon="account" @click="click1"></u-tabbar-item>
			<u-tabbar-item text="放映厅" icon="photo" @click="click1"></u-tabbar-item>
			<u-tabbar-item text="直播" icon="play-right" @click="click1"></u-tabbar-item>
			<u-tabbar-item text="我的" icon="account" @click="click1"></u-tabbar-item>
		</u-tabbar>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				value1: 0,
				list: [
					'https://cdn.uviewui.com/uview/swiper/swiper3.png',
					'https://cdn.uviewui.com/uview/swiper/swiper2.png',
					'https://cdn.uviewui.com/uview/swiper/swiper1.png',
				],
			}
		},
		methods: {
			click1(e) {
				console.log('click1', e);
			},
			change5(name) {
				if (name === 1) return uni.$u.toast('请您先登录')
				else this.value5 = name
			},
		}
	}
</script>

<style lang="scss">
	.custom-tabbar u-tabbar-item {
		margin-right: 5px;
		/* 调整按钮之间的水平间距 */
	}

	.custom-tabbar u-tabbar-item:last-child {
		margin-right: 0;
		/* 最后一个按钮不需要右边距 */
	}

	.module {
		display: inline-flex;
		flex-direction: row;
		align-items: center;
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
</style>