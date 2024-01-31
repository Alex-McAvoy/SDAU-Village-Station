<template>
	<view>
		<!-- <view>
			<u-loading-page :loading="loading"></u-loading-page>
		</view> -->
		<view class="nav_bar">
			<u-row gutter="20" class="index_head" style="padding-left: 20px;">
				<u-col class="flex_row" span="2" style="font-size: 18px;">驿站</u-col>
				<u-col span="9">
					<u-search :show-action="true" action-text="搜索" v-model="query" @custom="search" @search="search"
						:action-style="{ color: 'white' }" />
				</u-col>
				<u-col span="1"></u-col>
			</u-row>
		</view>
		<!-- 轮播框 -->
		<view style="margin-top: 105px;">
			<u-notice-bar :text=" '当前所在驿站：'+ ' ' + text1 + ' ' + text2"></u-notice-bar>
		</view>
		<!-- 驿站介绍 -->
		<view style="background-color: white;margin: 15px; border-radius: 10px; margin-top: 5px;">
			<u-row gutter="16" style="padding-left:10px;">
				<u-col span="2" style="padding-left:10px;margin-right: 8px;">
					<image src="/static/images/information/sannong.png" style="height:25px;width:25px;" />
				</u-col>
				<u-col span="9" class="bar" style="margin-left:-45px">
					<u-text style="font-weight: 20px;margin:15px;" :text="text2" bold size="22"></u-text>
				</u-col>
			</u-row>
			<view v-if="introductionList.content==''">
				<view style="display: flex; align-items: center;">
					<view
						style="font-size: 14px; text-indent: 2em; line-height: 1.8; margin: 30px; margin-top: 15px;margin-left:4px;">
						暂无驿站介绍
					</view>
				</view>
			</view>
			<view v-else>
				<view style="display: flex; align-items: center;">
					<view style="margin-left: 10px;">
						<view
							style=" font-size: 18px; text-indent: 2em; line-height: 1.8; margin: 20px; margin-top: -5px;">
							<rich-text :nodes="introductionList.content"></rich-text>
						</view>
					</view>
				</view>
			</view>
		</view>

		<!-- 驿站信息 -->
		<view class="main_context first_main_context" style="margin-top: 15px;">
			<view @click="goInformationList()">
				<u-row gutter="16">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/information/zhengce.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="驿站信息" bold size="22"></u-text>
					</u-col>
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/information/arrow.png" style="height:25px;width:25px;" />
					</u-col>
				</u-row>
			</view>
			<!-- 栏目标签 -->
			<view>
				<u-sticky bgColor="#fff">
					<u-tabs :list="newsBarList" :is-scroll="true" lineColor="#2ed573"
						@change="getInformationButton"></u-tabs>
				</u-sticky>
			</view>
			<view v-if="informationList.length!=0">
				<view style="height:120px;" v-for="item in Array.from(informationList).slice(0,2)"
					@click="goInformationDetail(item)">
					<view>
						<view style="display: flex; align-items: center;">
							<view>
								<image :src="item.remark"
									style="width: 90px; height: 90px; overflow: hidden; border-radius: 15px;"></image>
							</view>
							<view style="margin-left: 10px;">
								<u-text :text="fixedTitleSize(item.title)" bold size="15"></u-text>
								<u-text color="#909090" :text="fixedSize(item.content)"></u-text>
							</view>
						</view>
					</view>
				</view>
			</view>
			<view v-else>
				<view style="font-size: 14px; line-height: 1.8; margin: 20px;">
					暂无相关信息
				</view>
			</view>


		</view>
		<!-- 驿站随时问 -->
		<view class="main_context first_main_context" style="margin-top: 15px;">
			<view @click="goAskList()">
				<u-row gutter="16">
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="../../static/images/index/index_query.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="驿站随时问" bold
							size="22"></u-text>
					</u-col>
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/information/arrow.png" style="height:25px;width:25px;" />
					</u-col>
				</u-row>
			</view>
			<view v-if="freeList.length!=0">
				<view>
					<view class="news" style="height:120px;" v-for="oneFreeList in freeList">
						<view class="new_img">
							<image :src="allUserAvatar[oneFreeList.userId]"
								style="width:80px;height: 80px;overflow: hidden;border-radius: 50px;margin-top: 2px;">
						</view>
						<view class="new_title" style="margin-top: 20px;" @click="getoneFree(oneFreeList)">
							<u-text :text="oneFreeList.title" bold size="17"></u-text>
							<u--text color="#909090 " :text="oneFreeList.content"></u--text>
						</view>
					</view>
				</view>
			</view>
			<view v-else>
				<view style="font-size: 14px; line-height: 1.8; margin: 20px;">
					暂无相关信息
				</view>
			</view>
		</view>

		<!-- 切换驿站 -->
		<view style="background-color: white;margin: 15px; border-radius:3px;">
			<view>
				<u-row gutter="16" style="padding-left:10px;padding-top: 4px;">
					<view>
					</view>
					<u-col span="2" style="padding-left:10px;margin-right: 8px;">
						<image src="/static/images/information/keji.png" style="height:25px;width:25px;" />
					</u-col>
					<u-col span="9" class="bar" style="margin-left:-25px">
						<u-text style="font-weight: 20px;" margin="0px 0px 0px 0px" text="切换驿站" bold size="22"></u-text>
					</u-col>
				</u-row>
			</view>
			<view style="font-size: 18px; text-indent: 2em; line-height: 1.8; margin: 20px;">
				<strong>点击下方地图，选择相应区域，加入驿站。</strong>
			</view>

			<view class="box">
				<view @click="echarts.onClick" :prop="option" :change:prop="echarts.updateEcharts" id="echartsmap"
					class="echarts"></view>
			</view>

			<u-collapse accordion>
				<view v-for="(item1,index1) in district" @click="clickDistrict(item1.deptId,index1)">
					<u-collapse-item :title="item1.deptName" ref="collapse">
						<view v-for="(item2, index2) in stations[index1]" :key="index2">
							<u-row style=" border-bottom: 1px solid gainsboro; line-height: normal;">
								<u-col :span="6"
									style="margin-left: 5px;font-size: 15px;text-align: center; ">{{ item2.name }}
								</u-col>
								<u-col :span="3" style="flex-direction: column;">
									<u-col style="margin: 10px 0 10px 0;">
										<button @click="showDetail(item2.id)"
											style="font-size: 11px; width: 80px;height: 30px; background-color: #00ae67;color: white;">切换驿站</button></u-col>
								</u-col>
							</u-row>
						</view>
					</u-collapse-item>
				</view>
			</u-collapse>
		</view>
	</view>
</template>

<style>
	@import url("@/static/css/index.css");
	@import url("@/static/css/nav_bar.css");
</style>
<script>
	import {
		getStationIntroduction
	} from "@/api/stationintroduction/index.js"
	import {
		getUserProfileByUserId
	} from "@/api/system/user.js"
	import {
		getFreeAskListByColumnAndNum,
	} from "@/api/ask/index.js";
	import {
		updateNewsReading
	} from "@/api/information/index.js"

	import {
		getCheckStationInformationSortListLimit,
		updateStationInformationReading
	} from "@/api/stationinformation/index.js"

	import {
		citytList,
		listStation,
		addUserStation,
		updateUserStation,
		getUserStation,
		updateUserProfile,
		updateDeptIdByUserId
	} from "@/api/onlinestation/index.js";
	import {
		getStation
	} from "@/api/system/user.js"
	import config from '@/config.js'
	export default {
		// name: "LineEcharts",
		data() {
			return {
				newsBarList: [{
					name: '资讯',
					index: 0
				}, {
					name: '金融',
					index: 1
				}, {
					name: '其他',
					index: 2
				}, ],
				allUserAvatar: {},
				freeList: [],
				informationList: [],
				// 搜索
				query: '',
				// 驿站地点
				text1: '',
				text2: '',
				// 驿站id
				stationId: '',
				// 数据显示条数
				num: 2,
				total: 0,
				myChart: '',
				city: {
					"济南市": 101,
					"青岛市": 102,
					"淄博市": 200,
					"枣庄市": 201,
					"东营市": 202,
					"烟台市": 203,
					"潍坊市": 204,
					"济宁市": 205,
					"泰安市": 206,
					"威海市": 207,
					"日照市": 208,
					"临沂市": 209,
					"德州市": 210,
					"聊城市": 211,
					"滨州市": 212,
					"菏泽市": 213
				},
				district: [],
				stations: [],
				station: [],
				introductionList: {
					content: ''
				},
				// 配置数据
				option: {
					grid: {
						show: false,
						left: '5%',
						right: '10%',
						bottom: '10%',
						top: '15%',
						containLabel: true,
					},

					//地理坐标系组件用于地图的绘制，支持在地理坐标系上绘制散点图，线集。
					//要显示散点图，必须填写这个配置
					geo: {
						show: true,
						roam: false, //是否允许鼠标滚动放大，缩小
						map: 'shandong',
						data: [],
						label: {
							//图形上的文本标签，可用于说明图形的一些数据信息
							show: true, //是否显示文本
							color: '#000000', //文本颜色
							fontSize: 8,
						},
						itemStyle: {
							//地图区域的多边形 图形样式。 默认样试。
							areaColor: '#E4DDED', //地图区域的颜色。
							borderColor: '#ffffff', //边框线
							emphasis: {
								areaColor: '#fff',
							},
						},
						// emphasis: {
						// 	//高亮状态下的多边形和标签样式。
						// 	disabled: false,
						// 	label: {
						// 		show: true ,
						// 		color: '#ADA',  //文本
						// 	},
						// 	itemStyle: {
						// 		//区域
						// 		areaColor: '#ff7505',
						// 		borderColor: '#000',  //图形的描边颜色
						// 		borderWidth :2,
						// 	},
						// },				
					},
					tooltip: {
						show: true,
						formatter: `{b0}: {c0}`
					},
					series: [{
						type: 'scatter', //样试
						coordinateSystem: 'geo', //该系列使用的坐标系
						symbol: 'triangle', //标记的图形
						symbolSize: 10, //标记的大小
						data: [
							[117.000923, 36.675807],
							[120.37, 36.0944],
							[118.047648, 36.814939],
							[117.557964, 34.856424],
							[118.66471, 37.434564],
							[121.391382, 37.489297],
							[119.107078, 36.70925],
							[116.587245, 35.415393],
							[117.129063, 36.194968],
							[122.116394, 37.509691],
							[119.461208, 35.428588],
							[118.326443, 35.065282],
							[116.307428, 37.353968],
							[115.980367, 36.456013],
							[117.847293, 37.542609],
							[115.469381, 35.246531],
						],
						itemStyle: {
							//样试。
							normal: {
								//默认样试
								color: '#00aa00',
								opacity: 0.8,
								// areaColor: '#00ff00',
							},
						},
						roam: false, //是否开启鼠标缩放和平移漫游
						// label: {
						// 	show: true,
						// 	fontSize: 10,
						// 	normal: {
						// 		show: false,
						// 	},
						emphasis: {
							// disabled:false,
							label: {
								show: false
							}
						},
						onclick: function(params) {
							// 处理点击事件的逻辑
							// console.log('1111');
						},
						// },
						// geoIndex :[120.37,36.0944],
						// symbol : 'circle',
						// symbolSize : 10,
						//标记的大小,可以设置数组或者函数返回值的形式
						// symbolSize: function(val) {
						// 	// return val[2] *10;
						// 	return 8
						// },
						rippleEffect: {
							//涟漪特效相关配置。
							// brushType: 'stroke', //波纹的绘制方式
						},
						// hoverAnimation: true, //鼠标移入放大圆
					}, ],
				}
			};
		},
		created() {
			uni.showLoading({
				title: "正在加载",
			});
			this.stationId = this.$store.state.user.deptId
			Promise.all([
				getStation(this.stationId),
				getCheckStationInformationSortListLimit(0, this.num, this.stationId),
				getFreeAskListByColumnAndNum(this.stationId, this.num),
				getStationIntroduction(this.stationId),
			]).then(response => {
				// 获取当前驿站
				this.text2 = response[0].data.deptName + '驿站';
				let parentId = [];
				let temp = response[0].data.ancestors.split(',')

				for (var item of temp) {
					item = parseInt(item)
					if (item != 0 && item != 100 && item != 279 && item != 280 && item != 281 && item != 282 &&
						item != 823) {
						parentId.push(item)
					}
				}
				// 获取驿站信息
				this.informationList = response[1].data;
				// 获取驿站随时问
				this.freeList = response[2].data;

				//获取驿站介绍
				if (response[3].rows[0] == undefined) {
					this.introductionList.content = '';
				} else {
					this.introductionList = response[3].rows[0];
				}

				if (this.freeList.length == 0) {
					Promise.all([
						getStation(parentId[0]),
						getStation(parentId[1])
					])
					.then(response => {
						this.text1 = response[0].data.deptName + " " + response[1].data.deptName
						this.loading = false;
					})
				} else {
					//遍历问题列表找出userId
					var idList = []
					for (var item in this.freeList) {
						idList.push(this.freeList[item].userId)
					}

					Promise.all([
						getStation(parentId[0]),
						getStation(parentId[1]),
						getUserProfileByUserId(idList)
					])
					.then(response => {
						this.text1 = response[0].data.deptName + " " + response[1].data.deptName
						var tmp = response[2].data;
						
						for (var item in tmp) {
							//config.baseUrl 是服务器地址
							this.allUserAvatar[tmp[item].userId] = config.baseUrl + tmp[item].avatar
						}
						this.allUserAvatar[tmp.userId] = config.baseUrl + tmp.avatar
					
						uni.hideLoading();
					})
				}
			})

		},
		methods: {
			//跳转随时问
			getoneFree(free) {
				uni.navigateTo({
					url: "/pages/station/ask_detail?id=" + free.id
				})
			},
			//跳转随时问列表
			goAskList() {
				var item = {
					"id": 0
				}
				getApp().globalData.item = item;
				uni.navigateTo({
					url: "/pages/station/ask_list",
				})
			},
			//跳转到驿站信息列表
			goInformationList() {
				var item = {
					"id": 0
				}
				getApp().globalData.item = item;
				uni.navigateTo({
					url: "/pages/station/information_list",
				})
			},
			//获取驿站信息列表
			getInformationButton(item) {
				uni.showLoading({
					title: "正在加载",
				});
				getCheckStationInformationSortListLimit(item.index, this.num, this.stationId).then(response => {
					this.informationList = response.data;
					uni.hideLoading();
				});
			},
			//跳转驿站信息详情
			goInformationDetail(item) {
				getApp().globalData.item = item
				item.content = item.content.replace(/</g, "&lt;");
				item.content = item.content.replace(/>/g, "&gt;");
				updateStationInformationReading(item).then(response => {}).finally(() => {
					item.content = item.content.replace(/&lt;/ig, "<");
					item.content = item.content.replace(/&gt;/ig, ">");
					uni.navigateTo({
						url: "/pages/station/information_detail",
					})
				})
			},
			//限制字数
			fixedSize(content) {
				// let reg = /[^\x00-\xff]/g;
				// let res = content.match(reg).join("")
				let res = content.replace(/<\/?.+?\/?>/g, '')
				return res.substring(0, 25) + "..."
			},
			fixedTitleSize(content) {
				// let reg = /[^\x00-\xff]/g;
				// let res = content.match(reg).join("")
				let res = content.replace(/<\/?.+?\/?>/g, '')
				return res.substring(0, 10) + "..."
			},
			// 点击城市
			onViewClick(options) {
				uni.showLoading({
					title: "正在加载",
				});
			
				this.district = []
				this.stations = []
				this.$emit("getClickData", options)

				let cityId = this.city[options];

				listStation({
					"parentId": cityId
				}).then(response => {
					// 获取当前市各区信息
					this.district = response.data;

					// 获取当前市各区id
					let deptIds = []
					this.district.forEach(item => {
						deptIds.push(item.deptId)
					})

					// 建立promise数组
					let promiseArr = []
					deptIds.forEach(item => {
						promiseArr.push(listStation({
							"parentId": item
						}))
					})
					
					// 获取各区的驿站信息
					Promise.all(promiseArr).then(response => {
						response.forEach(item1 => {
							let tmp = []
							item1.data.forEach(item2 => {
								tmp.push({
									"id": item2.deptId,
									"name": item2.deptName
								})
							})
							this.stations.push(tmp)
						})
						uni.hideLoading();
					})
				})

			},
			// 点击区
			clickDistrict(districtId, index) {
				this.station = this.stations[index]
			},
			showDetail(stationId) {
				let user = this.$store.state.user
				uni.showModal({
					title: '提示',
					content: '确认切换驿站吗？',
					success: (res) => {
						if (res.confirm) {
							getUserStation(user.userId).then(response => {
								// 设置用户信息
								this.$store.state.user.deptId = stationId

								// 存数据库
								Promise.all([
									updateUserStation({
										"userId": user.userId,
										"stationId": stationId
									}),
									updateDeptIdByUserId(user.userId, stationId)
								]).then(response => {
									this.$store.dispatch('GetInfo').then(res => {
										this.$tab.reLaunch(
											"/pages/station/index")
									})
								})


								/*
									// 存数据库
									updateUserStation({
										"userId": user.userId,
										"stationId": stationId
									}).then(response => {
										this.$store.dispatch('GetInfo').then(res => {
											this.$tab.reLaunch(
												"/pages/index/index")
										})
									})
								*/

							})
						} else if (res.cancel) {}
					},
				});
			},
			// 查询
			search(query) {
				getApp().globalData.query = query;
				this.query = '';
				uni.navigateTo({
					url: "/pages/index/query_result"
				})
			},

		},
	};
</script>

<script module="echarts" lang="renderjs">
	// 将npm方式下载的echarts插件引入进来
	import * as echarts from 'echarts';
	// Vue.prototype.$echarts = echarts;
	const jsonData = require('@/static/map/ShanDong.json');

	export default {
		data() {
			return {
				clickData: '111'
			}
		},
		mounted() {
			let that = this;
			// 通过nextTick异步画图
			this.$nextTick(() => {
				that.mYChartmap()
			});

			if (typeof window.echarts === 'function') {
				this.mYChartmap()
			} else {
				// 动态引入较大类库避免影响页面展示
				const script = document.createElement('script')
				script.src = '@/static/echarts/echarts.min.js'
				script.onload = this.mYChartmap.bind(this)
				document.head.appendChild(script)

			}
		},

		methods: {
			// 初始化
			mYChartmap() {
				this.myChart = echarts.init(document.getElementById('echartsmap'))
				this.myChart.setOption(this.option);
				echarts.registerMap('shandong', jsonData)

				this.myChart.on('click', (params) => {
					// console.log("111")
					// console.log(params.name)
					this.clickData = params.name
					// console.log(this.clickData)
				})

				// this.myChart.on('click', (params) => {
				// 	let cityId = this.mp[params.name];
				// 	// console.log(cityId)
				// 	// listStation({
				// 	// 	"parentId": cityId
				// 	// }).then(response => {
				// 	// 	this.city = response.data;
				// 	// 	console.log(this.city)
				// 	// })
				// })



				// 这里是用于窗口变化时的自适应，利用的是echarts自带的resize方法
				window.addEventListener('resize', () => {
					this.myChart.resize()
				});
			},
			// 监听配置数据变化，并重新渲染
			updateEcharts(newValue, oldValue, ownerInstance, instance) {
				if (this.myChart) {
					this.myChart.setOption(newValue);
				}
				echarts.registerMap('shandong', jsonData)
				myChart.setOption(newValue)
			},
			onClick(event, ownerInstance) {
				// console.log(this.clickData)
				if (!this.clickData) {
					return
				}
				ownerInstance.callMethod('onViewClick', this.clickData)

				// 调用 service 层的方法
				// ownerInstance.callMethod('onViewClick', {
				// 	test: 'test'
				// })
			},
		},



	}
</script>

<style lang="scss" scoped>
	.album__content {
		width: 350px;
		height: 100px;
	}

	.u-content {
		padding: 24rpx;
		font-size: 30rpx;
		color: $u-content-color;
		line-height: 1.6;
		text-indent: 20px; //缩进了20px
		letter-spacing: 3px; //字体间距为8px
	}

	.view_box {
		display: flex;
		align-items: center;
		justify-content: center;
		width: 100%;
		height: 100%;
	}

	.echarts {
		width: 100%;
		height: 500rpx;
	}
</style>