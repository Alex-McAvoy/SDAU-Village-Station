<template>
	<view style="height: 100% ;margin: 10px;">
		<view class="contain">
			<!-- 1-->
			<view class="container">
				<u--text style="margin-top: 10px;" size="20" text="乡村驿站"></u--text>
				<view class="search-bar">
					<u-search style="margin-top: 15px;" shape="round" height="40" placeholder=""
						:clearabled="true"></u-search>
				</view>
			</view>
			<!-- 2 九宫格 -->
			<view style="height: 13vh; width: 100%;  border-radius: 10px; background-color: white;  margin-top: 2vh;">
				<u-grid :border="false" col="4">
					<u-grid-item v-for="(listItem,listIndex) in list" :key="listIndex">
						<view @click="redirectTo(listItem.route)">
							<u-icon size="30" color="#25a52d" :customStyle="{paddingTop:20+'rpx'}" :name="listItem.name"
								:size="22"></u-icon>
							<text class="grid-text">{{listItem.title}}</text>
						</view>
					</u-grid-item>
				</u-grid>
				<u-toast ref="uToast" />
			</view>
		</view>
		<!-- 3 问专家 -->
		<view style="height: 31vh; width: 100%;  border-radius: 10px; background-color: white;  margin-top: 2vh;">
			<view class="askexperts-bar" style="font-size: 100px;">
				<u-icon size="30" color="#25a52d" name="chat-fill"></u-icon>
				<u-text margin="8px 0 4px 0" size="20" text="问专家"></u-text>
			</view>
			<view class="u-page">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image src="/static/whg.png"
								style="margin:8px; width: 70px; height: 80px;border-radius: 8px; overflow: hidden;">
							</image>
						</view>
						<view class="album__content">
							<u-text margin="10px 0 10px 0" text="王洪刚" bold size="20"></u-text>
							<u-text margin="10px 0 8px 0" text="曾任山东农业大学农学系系主任、农学院院长，现为农学院教授委员会主任。"
								color="rgb(169,169,169)" bold size="15"></u-text>
						</view>
					</view>
				</view>
			</view>
			<view class="u-page">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image src="/static/shr.png"
								style="margin:8px; width: 70px; height: 80px;border-radius: 8px; overflow: hidden;">
							</image>
						</view>
						<view class="album__content">
							<u-text margin="10px 0 10px 0" text="束怀瑞" bold size="20"></u-text>
							<u-text margin="10px 0 8px 0" text="中国工程院院士，博士生导师，中国园艺学会常务理事" color="rgb(169,169,169)" bold
								size="15"></u-text>
						</view>
					</view>
				</view>
			</view>
			<!-- <u-list @scrolltolower="scrolltolower">
					<u-list-item
						v-for="(item, index) in expertsList"
						:key="index"
					>
						<u-cell :title="`列表长度-${index + 1}`">
							<u-avatar
								slot="icon"
								shape="square"
								size="50"
								:src="item.url"
								customStyle="margin: -3px 5px -3px 0"></u-avatar>
						</u-cell>
					</u-list-item>
			</u-list> -->
		</view>
		<!-- 4 随时问 -->
		<view style="height: 35vh; width: 100%;  border-radius: 10px; background-color: white;  margin-top: 2vh;">
			<view class="askexperts-bar"><u-icon size="30" color="#25a52d" name="chat">
				</u-icon><u-text margin="8px 0 8px 0" size="20" text="随时问"></u-text>
			</view>
			<u-gap height="10"></u-gap>
			<view class="u-page">
				<view class="album">
					<view class="album__content">
						<u--text size="18" margin="0 0 8px 0" text="秋季苹果花芽分化期管理"></u--text>
						<u-album :urls="urls2" size="50"></u-album>
						<u-text margin="4px 0 8px 0" text="惠农网用户投稿 19553人阅读" color="rgb(169,169,169)"></u-text>
					</view>
				</view>
			</view>
			<view class="u-page">
				<view class="album">
					<view class="album__content">
						<u--text size="18" margin="0 0 8px 0" text="秋花生怎么种植高产"></u--text>
						<u-album width="100px" height="80px" :urls="urls2" size="50"></u-album>
					</view>
				</view>
			</view>
		</view>
		<!-- 5 学农技 -->
		<view style="height: 32vh; width: 100%;  border-radius: 10px; background-color: white;  margin-top: 2vh;">
			<view class="askexperts-bar"><u-icon size="30" color="#25a52d" name="file-text-fill">
				</u-icon><u-text margin="8px 0 8px 0" size="20" text="学农技"></u-text>
			</view>
			<u-tabs :list="list1" @click="click"></u-tabs>
			<view class="u-page">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image src="https://cdn.uviewui.com/uview/album/1.jpg" style="width: 80px;height: 70px;">
							</image>
						</view>
						<view class="album__content">
							<u-text margin="20px 0 8px 0" text="标题学农技标题学农标题学农技" bold size="17"></u-text>
							<u-text margin="10px 0 8px 0" text="中国政府网 256人阅读" color="rgb(169,169,169)" bold
								size="15"></u-text>
						</view>
					</view>
				</view>
			</view>
			<view class="u-page">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image src="https://cdn.uviewui.com/uview/album/1.jpg" style="width: 80px;height: 70px;">
							</image>
						</view>
						<view class="album__content">
							<u-text margin="20px 0 8px 0" text="标题学农技标题学农标题学农技" bold size="17"></u-text>
							<u-text margin="10px 0 8px 0" text="中国政府网 256人阅读" color="rgb(169,169,169)" bold
								size="15"></u-text>
						</view>
					</view>
				</view>
			</view>
		</view>
		<!-- 6 -->
		<view style="height: 20vh; width: 100%;  border-radius: 10px; background-color: white;  margin-top: 2vh;">
			<view class="askexperts-bar"><u-icon size="30" color="#25a52d" name="shopping-cart">
				</u-icon><u-text margin="8px 0 2px 0" size="20" text="买农资"></u-text>
			</view>
			<u-tabs :list="list2" @click="click" size="20"></u-tabs>
			<div style="display: flex; ">
				<u--image style="margin-left: 10px; border-radius: 8px; overflow: hidden;" :showLoading="true"
					:src="src" width="100px" height="80px" @click="click"></u--image>
				<u--image style="margin-left: 10px; border-radius: 8px; overflow: hidden;" :showLoading="true"
					:src="src1" width="100px" height="80px" @click="click"></u--image>
				<u--image style="margin-left: 10px; border-radius: 8px; overflow: hidden;" :showLoading="true"
					:src="src2" width="100px" height="80px" @click="click"></u--image>
			</div>

		</view>
		<!-- 7 -->
		<view style="height: 20vh; width: 100%;  border-radius: 10px; background-color: white;  margin-top: 2vh;">
			<view class="askexperts-bar" style="font-size: 100px;">
				<u-icon size="30" color="#25a52d" name="car-fill"></u-icon>
				<u-text margin="8px 0 4px 0" size="20" text="找渠道"></u-text>
			</view>
			<u-tabs :list="list3" @click="click" size="20"></u-tabs>
			<u-scroll-list @right="right" @left="left">
				<view class="scroll-list" style="flex-direction: row;">
					<view class="scroll-list__goods-item" v-for="(item, index) in list4" :key="index"
						:class="[(index === 9) && 'scroll-list__goods-item--no-margin-right']">
						<image class="scroll-list__goods-item__image" :src="item.thumb"></image>
						<text class="scroll-list__goods-item__text">￥{{ item.price }}</text>
					</view>
					<view class="scroll-list__show-more">
						<text class="scroll-list__show-more__text">查看更多</text>
						<u-icon name="arrow-leftward" color="#f56c6c" size="12"></u-icon>
					</view>
				</view>
			</u-scroll-list>
		</view>
		<!-- 8 -->
		<view style="height: 35vh; width: 100%;  border-radius: 10px; background-color: white;  margin-top: 2vh;">
			<view class="askexperts-bar" style="font-size: 100px;">
				<u-icon size="30" color="#25a52d" name="order"></u-icon>
				<u-text margin="8px 0 4px 0" size="20" text="推优品"></u-text>
			</view>
			<div style="display: flex; ">
				<u--image style="margin-left: 10px; border-radius: 8px; overflow: hidden;" :showLoading="true"
					:src="src" width="160px" height="80px" @click="click"></u--image>
				<u--image style="margin-left: 10px; border-radius: 8px; overflow: hidden;" :showLoading="true"
					:src="src1" width="160px" height="80px" @click="click"></u--image>
			</div>
			<u-tabs :list="list5" @click="click" size="20"></u-tabs>
			<view class="u-page">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image src="https://cdn.uviewui.com/uview/album/3.jpg"
								style="width: 100px; height: 100px;border-radius: 8px; overflow: hidden;"></image>
						</view>
						<view class="album__content">
							<u-text margin="20px 0 10px 0" text="农业品牌农业品牌" bold size="20"></u-text>
							<u-text margin="20px 0 8px 0" text="惠农121   36人购买" color="rgb(169,169,169)" bold
								size="18"></u-text>
						</view>
					</view>
				</view>
			</view>
		</view>
		<!-- 9 -->
		<view style="height: 20vh; width: 100%;  border-radius: 10px; background-color: white;  margin-top: 2vh;">
			<view class="askexperts-bar" style="font-size: 100px;">
				<u-icon size="30" color="#25a52d" name="gift-fill"></u-icon>
				<u-text margin="8px 0 4px 0" size="20" text="新品种"></u-text>
			</view>
			<view class="u-page">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image src="https://cdn.uviewui.com/uview/album/2.jpg"
								style="width: 100px; height: 100px;border-radius: 8px; overflow: hidden;"></image>
						</view>
						<view class="album__content">
							<u-text margin="10px 0 6px 0" text="显示驿站以及邻近地区涉及领域的新品种" bold size="20"></u-text>
							<u-text margin="10px 0 8px 0" text="咨询单位名称及联系人" color="rgb(169,169,169)" bold
								size="18"></u-text>
						</view>
					</view>
				</view>
			</view>
		</view>
		<!-- 10 -->
		<view style="height: 48vh; width: 100%;  border-radius: 10px; background-color: white;  margin-top: 2vh;">
			<view class="askexperts-bar" style="font-size: 100px;">
				<u-icon size="30" color="#25a52d" name="map"></u-icon>
				<u-text margin="8px 0 4px 0" size="20" text="在线基地"></u-text>
			</view>
			<!-- 			<view>
			     <map :latitude="latitude" :longitude="longitude" :scale="20" :markers="markers" style="width: 100%; height: 350px;"></map>
			</view> -->
			<!-- 			<u--image 
				style="margin-left: 10px; border-radius: 8px; overflow: hidden;" 
				:showLoading="true" 
				:src="src3" 
				width="160px" 
				height="80px" 
				@click="click" >
			</u--image> -->

			<image src="/static/R-C.jpg" style="height: 350px; width: 400px;">
			</image>

		</view>
		<view class="container">
			<u-tabbar :value="value1" @change="change1" :fixed="false" :placeholder="false"
				:safeAreaInsetBottom="false">
				<u-tabbar-item text="首页" icon="home" @click="click1"></u-tabbar-item>
				<u-tabbar-item text="培训" icon="photo" @click="click1"></u-tabbar-item>
				<u-tabbar-item text="金融" icon="play-right" @click="click1"></u-tabbar-item>
				<u-tabbar-item text="驿站" icon="account" @click="click1"></u-tabbar-item>
				<u-tabbar-item text="专家" icon="account" @click="click1"></u-tabbar-item>
				<u-tabbar-item text="优品" icon="account" @click="click1"></u-tabbar-item>
				<u-tabbar-item text="我的" icon="account" @click="click1"></u-tabbar-item>
			</u-tabbar>
		</view>
	</view>
</template>

<script>
	import {
		UList,
		UAvatar,
		UText,
		UIcon
	} from 'uview-ui';

	export default {
		components: {
			UList,
			UAvatar,
			UText,
			UIcon,
		},
		data() {
			return {
				// latitude: 117.117673,// 设置地图的纬度
				// longitude:36.19451 ,// 设置地图的经度
				// scale: 14, // 设置地图的缩放级别
				//       markers: [ // 设置标记点
				//         {
				//           latitude: 117.117673,
				//           longitude:36.19451,
				//           title: '山东农业大学（岱宗校区）',
				//           iconPath: '/static/images/R-C.jpg',
				// 		  iconSize: [10, 10], // 设置标记点图片的宽度和高度
				//         },
				//       ],
				value1: 0,
				src: "https://cdn.uviewui.com/uview/album/1.jpg",
				src1: "https://cdn.uviewui.com/uview/album/2.jpg",
				src2: "https://cdn.uviewui.com/uview/album/3.jpg",
				src3: "R-C.jpg",
				list: [{
						name: 'chat-fill',
						title: '问专家',
						route: '/pages/post/askExpert'
					},
					{
						name: 'chat',
						title: '随时问',
						route: '/pages/station/freeAsk'
					},
					{
						name: 'file-text-fill',
						title: '学农技',
						route: '/pages/station/learningTechnology'
					},
					{
						name: 'shopping-cart',
						title: '买农资',
						route: '/pages/station/purchaseFarm'
					},
					{
						name: 'car-fill',
						title: '找渠道'
					},
					{
						name: 'order',
						title: '推优品'
					},
					{
						name: 'gift-fill',
						title: '新品种'
					},
					{
						name: 'map',
						title: '在线基地'
					},
				],
				expertsList: [],
				list1: [{
					name: '推荐',
				}, {
					name: '水稻'
				}, {
					name: '小麦'
				}, {
					name: '蔬菜'
				}, {
					name: '果树'
				}, {
					name: '植保'
				}, {
					name: '禽畜'
				}],
				list2: [{
					name: '节肥增效',
				}, {
					name: '虫害防控'
				}, {
					name: '农机装备'
				}, {
					name: '种子树苗'
				}],
				list3: [{
					name: '供应',
				}, {
					name: '求购'
				}],
				list4: [{
					price: '230.5',
					thumb: 'https://cdn.uviewui.com/uview/goods/1.jpg'
				}, {
					price: '74.1',
					thumb: 'https://cdn.uviewui.com/uview/goods/2.jpg'
				}, {
					price: '8457',
					thumb: 'https://cdn.uviewui.com/uview/goods/6.jpg'
				}, {
					price: '1442',
					thumb: 'https://cdn.uviewui.com/uview/goods/5.jpg'
				}, {
					price: '541',
					thumb: 'https://cdn.uviewui.com/uview/goods/2.jpg'
				}, {
					price: '234',
					thumb: 'https://cdn.uviewui.com/uview/goods/3.jpg'
				}, {
					price: '562',
					thumb: 'https://cdn.uviewui.com/uview/goods/4.jpg'
				}, {
					price: '251.5',
					thumb: 'https://cdn.uviewui.com/uview/goods/1.jpg'
				}],
				list5: [{
					name: '我的优品',
				}, {
					name: '品牌展示'
				}],
				urls: [
					'https://zhcz01.oss-cn-beijing.aliyuncs.com/7252903bf220591b9a8e9b7b91aa9f6.png',

				],
				albumWidth: 0,
				urls2: [
					'https://cdn.uviewui.com/uview/album/1.jpg',
					'https://cdn.uviewui.com/uview/album/2.jpg',
					'https://cdn.uviewui.com/uview/album/3.jpg',
				],
			}
		},
		onLoad() {
			this.loadmore()
		},
		methods: {
			redirectTo(route) {
				// 进行跳转逻辑
				// 例如使用 Vue Router 跳转到指定路径
				this.$router.push(route);
			},
			loadmore() {
				for (let i = 0; i < 2; i++) {
					this.expertsList.push({
						url: this.urls[uni.$u.random(0, this.urls.length - 1)]
					})
				}
			},
			click1(e) {
				console.log('click1', e);
			},
			click(item) {
				console.log('item', item);
			},
			left() {
				console.log('left');
			},
			right() {
				console.log('right');
			}

		},
	}
</script>

<style lang="scss">
	.contain {
		background-color: #cfeea3;
	}

	.u-tabbar-item {
		margin-right: -50px;
		/* 设置图标之间的右边距 */
	}

	.container {
		display: flex;
		align-items: center;
	}

	.askexperts-bar {
		display: flex;
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

	body {
		background-color: #b6b6b6;
	}

	::v-deep .u-tabs__wrapper__nav__item__text {
		font-size: 19px !important;
	}

	.scroll-list {
		@include flex(column);

		&__goods-item {
			margin-right: 20px;

			&__image {
				width: 60px;
				height: 60px;
				border-radius: 4px;
			}

			&__text {
				color: #f56c6c;
				text-align: center;
				font-size: 12px;
				margin-top: 5px;
			}
		}

		&__show-more {
			background-color: #fff0f0;
			border-radius: 3px;
			padding: 3px 6px;
			@include flex(column);
			align-items: center;

			&__text {
				font-size: 12px;
				width: 12px;
				color: #f56c6c;
				line-height: 16px;
			}
		}
	}
</style>