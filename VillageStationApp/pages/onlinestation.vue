<template>
	<view style="margin-top: 5vh;">
		<!-- 弹出框 -->
		<view>
			<u-modal :show="show" :title="title" :content='content' @confirm="confirm" @cancel="cancel"
				:showCancelButton="true"></u-modal>
		</view>

		<view style="background-color: white; margin: 15px; border-radius: 10px; padding:5px;">
			<view>
				<u-loading-page :loading="loading"></u-loading-page>
			</view>
			<view style="font-size: 18px; text-indent: 2em; line-height: 1.8; margin: 20px;">
				乡村振兴驿站是学校与乡村一线需求精准对接、引导师生服务乡村基层的重要载体。驿站旨在为师生面向“三农”开展技术指导、人才培养、成果转化、志愿服务等搭建综合性服务平台，促进师生服务乡村基层实现常态化，助力乡村振兴战略深入实施。
			</view>
		</view>
		<view style="background-color: white; margin: 15px; border-radius: 10px; padding:5px;">

			<view style="font-size: 18px; text-indent: 2em; line-height: 1.8; margin: 20px;">
				<strong>点击下方地图，选择相应区域，加入驿站。</strong>
			</view>
			<view class="box">
				<view :prop="option" @click="echarts.onClick"
					:change:prop="echarts.updateEcharts" id="echartsmap" ref="echartsmap" class="echarts"></view>
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
										<button @click="joinStation(item2.id)"
											style="font-size: 11px; width: 80px;height: 30px; background-color: #00ae67;color: white;">加入驿站</button></u-col>
								</u-col>
							</u-row>
						</view>
					</u-collapse-item>
				</view>
			</u-collapse>
		</view>
	</view>
</template>

<script>
	import {
		citytList,
		listStation,
		addUserStation,
		updateUserStation,
		getUserStation,
		updateUserProfile,
		updateDeptIdByUserId
	} from "@/api/onlinestation/index.js";

	export default {
		data() {
			return {
				show: false,
				title: '温馨提示',
				content: '是否返回首页',
				loading: false,
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
						// 	label: {
						// 		//文本
						// 		color: '#ADA',
						// 	},
						// 	itemStyle: {
						// 		//区域
						// 		areaColor: '#F60',
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
						// roam: false,
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
				},
				query: ''

			}
		},
		methods: {
			//弹框确认按钮
			confirm() {
				this.show = false;
				uni.switchTab({
					url: '/pages/index/index',
				});

			},
			cancel() {
				this.show = false;
				uni.navigateTo({
					url: '/pages/onlinestation',
				});
			},
			//获取到返回按钮
			onBackPress() {
				this.show = true;
				return true;
			},
			// 点击城市
			onViewClick(options) {
				uni.showLoading({
					title: "正在加载",
				});

				this.$emit("getClickData", options)

				this.district = []
				this.stations = []

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
			search(query) {
				getApp().globalData.query = query;
				uni.navigateTo({
					url: "/pages/station/query_result"
				})
			},
			joinStation(stationId) {
				let user = this.$store.state.user
				uni.showModal({
					title: '提示',
					content: '确认加入驿站吗？',
					success: (res) => {
						if (res.confirm) {
							getUserStation(user.userId).then(response => {
								// 设置用户信息
								this.$store.state.user.deptId = stationId
								// 存数据库
								Promise.all([
										addUserStation({
											"userId": user.userId,
											"stationId": stationId
										}),
										updateDeptIdByUserId(user.userId, stationId)
									])
									.then(response => {
										this.$store.dispatch('GetInfo').then(res => {
											this.$tab.reLaunch(
												"/pages/index/index")
										})
									})
								/*
									addUserStation({
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




			}
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
				myChart: '',
				clickData: '',
				show: false
			}
		},
		mounted() {
			let _this = this;
			// 通过nextTick异步画图
			this.$nextTick(() => {
				_this.mYChartmap()
			});
			if (typeof window.echarts === 'function') {
				this.mYChartmap()
			} else {
				// 动态引入较大类库避免影响页面展示
				const script = document.createElement('script')
				// script.src = '@/static/echarts/echarts.min.js'
				script.src = 'https://cdn.staticfile.org/echarts/4.3.0/echarts.min.js'
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

				let _this = this
				this.myChart.on('click', (params) => {
					_this.clickData = params.name
				})

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
				//this.myChart.setOption(newValue)
			},
			onClick(event, ownerInstance) {
				if (!this.clickData) {
					return
				}
				ownerInstance.callMethod('onViewClick', this.clickData)
			}
			
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
		//pointer-events: none;//值none表示鼠标事件“穿透”该元素并且指定该元素“下面”的任何东西。
		
		canvas {
			pointer-events: all;//使元素成为鼠标事件的目标
		}
	}
	
</style>