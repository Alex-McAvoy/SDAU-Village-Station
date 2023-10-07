<template>
	<view style="">
		<view class="contain">
			<!-- 1 标题-->
			<div class="nav_bar">
				<u-row gutter="20" class="index_head">
					<u-col span="3">乡村驿站&nbsp;</u-col>
					<u-col span="7">
						<u-search :show-action="false"></u-search>
					</u-col
					<u-col span="2">天气</u-col>
				</u-row>
			</div>

		
			<!-- 2 九宫格 -->
			<view style="border-radius: 10px; background-color: white;margin:105px 15px 15px 10px;padding-top:8px;padding-bottom: 8px;">
				<u-grid :border="false" col="4">
					<u-grid-item  v-for="(listItem,listIndex) in list" :key="listIndex">
						<view @click="$goBack(2,listItem.route)">
							<u-image  :customStyle="{paddingTop:20+'rpx'}" :src="listItem.src"
								:height="40" :width="30" style="display: flex;justify-content: center;align-items: center;"></u-image>
							<span class="grid-text" style="color:#9f9f9f;font-size: 15px; margin:15px">{{listItem.title}}</span>
						</view>
					</u-grid-item>
				</u-grid>
				<u-toast ref="uToast" />
			</view>
		</view>
		<!-- 3 问专家 -->
		<view style="border-radius: 10px; background-color: white;margin:15px">
			<view class="askexperts-bar" style="font-size: 100px;">
				<image src="/static/images/station/station/wd.png"
					style="margin:8px; width:30px; height: 25px;">
				</image>
				<u-text style="font-weight: 20px;" margin="8px 0 4px 0" bold size="22" text="问专家"></u-text>
			</view>
			<view class="u-page">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image src="/static/images/station/askExperts/whg.png"
								style="margin:8px; width:100px; height: 100px;border-radius: 100%;">
							</image>
						</view>
						<view class="album__content">
							<u-text margin="10px 0 20px 0" text="王洪刚" bold size="20"></u-text>
							<div style="margin-right: 10px;">
								<span
									style=" font-size:15px;font-weight: 300px; color:rgb(169,169,169)">
									曾任山东农业大学农学系系主任、农学院院长，现为农学院教授委员会主任。</span>
							</div>
						</view>
					</view>
				</view>
			</view>
			<view class="u-page">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image src="/static/images/station/askExperts/shr.png"
								style="margin:8px;width:100px; height: 100px;border-radius: 100%;">
							</image>
						</view>
						<view class="album__content">
							<u-text margin="20px 0 20px 0" text="束怀瑞" bold size="20"></u-text>
							<div>
								<span
									style="margin:40px 0 8px 0; font-size:15px;font-weight: 300px; color:rgb(169,169,169)">
									中国工程院院士，博士生导师，中国园艺学会常务理事</span>
							</div>
						</view>
					</view>
				</view>
			</view>
		</view>
		<!-- 4 随时问 -->
		<view style="border-radius: 10px; background-color: white;  margin:15px;">
			<view class="askexperts-bar">
				<image src="/static/images/station/station/cjwt.png"
					style="margin:8px; width:30px; height: 25px;">
				</image>
				<u-text style="font-weight: 20px;" margin="8px 0 8px 0" bold size="22" text="随时问"></u-text>
			</view>
			<u-gap height="10"></u-gap>
			<view class="u-page">
				<view class="album">
					<view class="album__content">
						<u--text size="18" style="margin: 0 0 8px 0" text="秋季苹果花芽分化期管理"></u--text>
						<div style="display: flex; ">
						<u--image style="margin-left: 5px; border-radius: 8px; overflow: hidden;" :showLoading="true"
							:src="src" width="100px" height="80px" @click="click"></u--image>
						<u--image style="margin-left: 5px; border-radius: 8px; overflow: hidden;" :showLoading="true"
							:src="src1" width="100px" height="80px" @click="click"></u--image>
						<u--image style="margin-bottom: 15px;margin-left: 5px; border-radius: 8px; overflow: hidden; " :showLoading="true"
							:src="src2" width="100px" height="80px" @click="click"></u--image>
						</div>
						<view style="display: flex; margin-top: 8px;">
							<u--text color="#909090 "  text="惠农网用户投稿"></u--text>
							<u--text style="margin-left: 10vh;" color="#909090 " text="19553人阅读"></u--text>
						</view>
					</view>
				</view>
			</view>
			<u-divider></u-divider>
			<view class="u-page">
				<view class="album">
					<view class="album__content">
						<u--text size="18" margin="0 0 10px 0" text="秋花生怎么种植高产"></u--text>
						<div style="display: flex; ">
						<u--image style="margin-left: 5px; border-radius: 8px; overflow: hidden;" :showLoading="true"
							:src="src" width="100px" height="80px" @click="click"></u--image>
						<u--image style="margin-left: 5px; border-radius: 8px; overflow: hidden;" :showLoading="true"
							:src="src1" width="100px" height="80px" @click="click"></u--image>
						<u--image style="margin-bottom: 5px;margin-left: 5px; border-radius: 8px; overflow: hidden;" :showLoading="true"
							:src="src2" width="100px" height="80px" @click="click"></u--image>
						</div>
						<view style="display: flex; margin-top: 8px;">
							<u--text color="#909090 " margin="0 0 8px 0" text="惠农网用户投稿"></u--text>
							<u--text style="margin-left: 10vh;" color="#909090 " text="19553人阅读"></u--text>
						</view>
					</view>
				</view>
			</view>
		</view>
		<!-- 5 学农技 -->
		<view style="border-radius: 10px; background-color: white;  margin:15px">
			<view class="askexperts-bar">
				<image src="/static/images/station/station/ncxfy.png"
					style="margin:8px; width:30px; height: 25px;">
				</image>
				<u-text style="font-weight: 20px;" margin="8px 0 8px 0" bold size="22" text="学农技"></u-text>
			</view>
			<u-tabs :list="list1" @click="click"></u-tabs>
			<view class="u-page">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image margin="30px 0px 8px 0px" src="/static/images/station/station/sg.png" style="margin-top: 15px;border-radius: 8px; overflow: hidden;width: 100px;height: 70px;">
							</image>
						</view>
						<view class="album__content">
							<u-text style="padding-right: 8px;" margin="20px 0px 8px 0px" text="标题学农技标题学农标题学农技" bold size="17"></u-text>
							<div>
								<view style="display: flex; margin-top:10px;">
									<u--text color="#909090 " margin="0 0 8px 0" text="中国政府网 "></u--text>
									<u--text style="justify-content: end;" color="#909090 " margin="0 10px 8px 0" text="256人阅读"></u--text>
								</view>
							</div>
						</view>
					</view>
				</view>
			</view>
			<view class="u-page">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image src="/static/images/station/station/gl.png" style="margin-top: 15px;margin-bottom: 15px;border-radius: 8px; overflow: hidden;width: 100px;height: 70px;">
							</image>
						</view>
						<view class="album__content">
							<u-text style="padding-right: 8px;" margin="20px 0px 8px 0px" text="标题学农技标题学农标题学农技" bold size="17"></u-text>
								<view style="display: flex; margin-top:10px;">
									<u--text color="#909090 " margin="0 0 8px 0" text="中国政府网 "></u--text>
									<u--text style="justify-content: end;"color="#909090 " margin="0 10px 8px 0" text="256人阅读"></u--text>
								</view>
						</view>
					</view>
				</view>
			</view>
		</view>
		<!-- 6 买农资-->
		<view style="border-radius: 10px; background-color: white;  margin:15px">
			<view class="askexperts-bar">
				<image src="/static/images/station/station/ncp.png"
					style="margin:8px; width:40px; height: 25px;">
				</image>
				<u-text style="font-weight: 20px;" margin="8px 0 2px 0" bold size="22" text="买农资"></u-text>
			</view>
			<u-tabs :list="list2" @click="click" size="20"></u-tabs>
			<div style="display: flex;margin-left: 10px; ">
			<u--image style="margin-left: 3px; border-radius: 8px; overflow: hidden;" :showLoading="true"
				:src="src" width="100px" height="80px" @click="click"></u--image>
			<u--image style="margin-left: 3px; border-radius: 8px; overflow: hidden;" :showLoading="true"
				:src="src1" width="100px" height="80px" @click="click"></u--image>
			<u--image style="margin-bottom: 15px;margin-left: 5px; border-radius: 8px; overflow: hidden;" :showLoading="true"
				:src="src2" width="100px" height="80px" @click="click"></u--image>
			</div>

		</view>
		<!-- 7 找渠道-->
		<view style="border-radius: 10px; background-color: white;  margin:15px">
			<view class="askexperts-bar" style="font-size: 100px;">
				<image src="/static/images/station/station/qdgl.png"
					style="margin:8px; width:30px; height: 25px;">
				</image>
				<u-text style="font-weight: 20px;" margin="8px 0 4px 0" bold size="22" text="找渠道"></u-text>
			</view>
			<u-tabs :list="list3" @click="click" size="20"></u-tabs>
			<div style="display: flex; ">
				<u--image style="margin-left: 3px; border-radius: 8px; overflow: hidden;" :showLoading="true"
					:src="src1" width="160px" height="80px" @click="click"></u--image>
				<u--image style="margin-left: 3px; border-radius: 8px; overflow: hidden;" :showLoading="true"
					:src="src" width="160px" height="80px" @click="click"></u--image>
			</div>
			<div style="display: flex;">
				<u-text margin="10px 0 15px 15px" text="农业品牌农业品牌" bold size="18"></u-text>
				<u-text margin="10px 0 15px 0px" text="农业品牌农业品牌" bold size="18"></u-text>
			</div>
			
		</view>
		<!-- 8 推优品-->
		<view style="border-radius: 10px; background-color: white;  margin:15px">
			<view class="askexperts-bar" style="font-size: 100px;">
				<image src="/static/images/station/station/nl.png"
					style="margin:8px; width:30px; height: 25px;">
				</image>
				<u-text style="font-weight: 20px;" margin="8px 0 4px 0" bold size="22" text="推优品"></u-text>
			</view>
			<div style="display: flex; ">
				<u--image style="margin-left: 3px; border-radius: 8px; overflow: hidden;" :showLoading="true"
					:src="src" width="160px" height="80px" @click="click"></u--image>
				<u--image style="margin-left: 3px; border-radius: 8px; overflow: hidden;" :showLoading="true"
					:src="src1" width="160px" height="80px" @click="click"></u--image>
			</div>
			<u-divider></u-divider>
			<u-tabs :list="list5" @click="click" size="20"></u-tabs>
			<view class="u-page">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image src="/static/images/station/station/sg.png"
								style="margin-bottom: 10px;width: 120px; height: 80px;border-radius: 8px; overflow: hidden;"></image>
						</view>
						<view class="album__content">
							<u-text margin="20px 0 10px 0" text="农业品牌农业品牌" bold size="20"></u-text>
								<view style="display: flex; margin-top:2vh;">
									<u--text color="#909090 " margin="0 0 8px 0" text="惠农121 "></u--text>
									<u--text  style="justify-content: end;" color="#909090 " margin="0 10px 8px 0" text="36人购买"></u--text>
								</view>
						</view>
					</view>
				</view>
			</view>
		</view>
		<!-- 9 新品种-->
		<view style="border-radius: 10px; background-color: white;  margin:15px">
			<view class="askexperts-bar" style="font-size: 100px;">
				<image src="/static/images/station/station/zzpz.png"
					style="margin:8px; width:30px; height: 25px;">
				</image>
				<u-text style="font-weight: 20px;" margin="8px 0 4px 0" bold size="22" text="新品种"></u-text>
			</view>
			<view class="u-page">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image src="/static/images/station/station/gl.png"
								style="margin-bottom: 10px;width: 120px; height: 80px;border-radius: 8px; overflow: hidden;"></image>
						</view>
						<view class="album__content">
							<u-text style="padding-right: 8px;" margin="10px 0px 6px 0px" text="显示驿站以及邻近地区涉及领域的新品种" bold size="20"></u-text>
								<view style="display: flex; margin-top:1vh;">
									<u--text color="#909090 " margin="0 0 8px 0" text="咨询单位名称及联系人"></u--text>
								</view>
						</view>
					</view>
				</view>
			</view>
		</view>
		<!-- 10 在线基地-->
		<view style="border-radius: 10px; background-color: white;  margin:15px">
			<view class="askexperts-bar" style="font-size: 100px;">
				<image src="/static/images/station/station/dt.png"
					style="margin:8px; width:30px; height: 25px;">
				</image>
				<u-text style="font-weight: 20px;" margin="8px 0 4px 0" bold size="22" text="寻基地"></u-text>
			</view>
			<image src="/static/images/station/station/R-C.jpg" style="height: 350px; width: 400px;">
			</image>
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
				value1: 0,
				src: "/static/images/station/station/sg.png",
				src1: "/static/images/station/station/gl.png",
				src2: "/static/images/station/station/sg.png",
				src3: "/static/images/station/station/gl.png",
				list: [{
						src:"/static/images/station/station/wd.png",
						title: '问专家',
						route: '/pages/station/askExperts/askExpert'
					},
					{
						src:"/static/images/station/station/cjwt.png",
						title: '随时问',
						route: '/pages/station/freeAsk'
					},
					{
						src:"/static/images/station/station/ncxfy.png",
						title: '学农技',
						route: '/pages/station/learningTechnology'
					},
					{
						src:"/static/images/station/station/ncp.png",
						title: '买农资',
						route: '/pages/station/purchaseFarm'
					},
					{
						src:"/static/images/station/station/qdgl.png",
						title: '找渠道',
						route: '/pages/station/channel'
					},
					{
						src:"/static/images/station/station/nl.png",
						title: '推优品',
						route: '/pages/station/products'
					},
					{
						src:"/static/images/station/station/zzpz.png",
						title: '新品种',
						route: '/pages/station/newspecies'
					},
					{
						src:"/static/images/station/station/dt.png",
						title: '寻基地',
						route: '/pages/station/onlinebase'
					},
				],
				expertsList: [],
				list1: [{
					name: '推荐',
				}, {
					name: '水稻',
					firstColumn:'0',
				}, {
					name: '小麦',
					firstColumn:'1',
				}, {
					name: '蔬菜',
					firstColumn:'2',
				}, {
					name: '果树',
					firstColumn:'3',
				}, {
					name: '植保',
					firstColumn:'4',
				}, {
					name: '禽畜',
					firstColumn:'5',
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
					thumb: '/static/images/station/station/sg.png'
				}, {
					price: '74.1',
					thumb: '/static/images/station/station/gl.png'
				}, {
					price: '8457',
					thumb: '/static/images/station/station/sg.png'
				}, {
					price: '1442',
					thumb: '/static/images/station/station/gl.png'
				}, {
					price: '541',
					thumb: '/static/images/station/station/sg.png'
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
					'/static/images/station/station/sg.png',
					'/static/images/station/station/gl.png',
					'/static/images/station/station/sg.png',
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

<style lang="scss" >
	@import url("../../static/css/nav_bar.css");
	/* 顶部样式 */
	.index_head {
		color: azure;
		height: 100px;
		padding: 0px 15px 0px 15px;
		background: linear-gradient(#00ae67, #00ae67, #00ae67, #00ae67,#2ed573, #7bed9f, #f1f2f6);
		
	}
	.body {
		background: #dfe4ea;
		min-height: 100vh;
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
			background-color: #fff;
			padding: 5px;
			border-radius: 3px;
		}

		&__content {
			margin-left: 10px;
			flex: 2;
		}
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