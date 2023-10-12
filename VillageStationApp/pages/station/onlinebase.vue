<template>
	<view>
		<view class="box">
			<view @click="echarts.onClick" :prop="option" :change:prop="echarts.updateEcharts" id="echartsmap"
				class="echarts"></view>
		</view>

		<!-- 内容1 -->
<div style="background-color: white;  border-radius: 15px; margin: 40px; border: 1px solid gainsboro;">
			<div v-for="oneCity in city" :key="oneCity.id">
				<u-collapse @change="change(oneCity)" style="background-color: white; margin: 15px;">
					<u-collapse-item :title="oneCity.deptName" >
						<view v-for="oneStation in station" :key="oneStation.id">
							<u-row  style=" margin-bottom: 10px;border-bottom: 1px solid gainsboro; border-radius: 10px;">
								<u-col :span="6" style="margin-left: 5px;font-size: 15px;text-align: center; ">{{oneStation.deptName}} </u-col>
								  <u-col :span="3" style="flex-direction: column;">
								    <u-col  style="margin-bottom: 10px;"><button style="font-size: 11px; width: 80px;height: 30px; background-color: #00ae67;color: white;">查看详情</button></u-col>
								    <u-col style="margin-bottom: 5px;"><button style=" font-size: 11px;width: 80px;height: 30px; background-color: #00ae67;color: white;">想去这里</button></u-col>
								  </u-col>
								
							</u-row>
							
						</view>
					</u-collapse-item>
				</u-collapse>
			</div>
		</div>
	</view>
</template>

<script>
	import {
		citytList,
		listStation
	} from "@/api/station/onlinebase.js";
	export default {
		// name: "LineEcharts",
		data() {
			return {
				total:0,
				
				myChart: '',
				mp: {
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
					"菏泽市": 213,
				},
				city: [],
				// 配置数据
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
							color: '#CCC', //文本颜色
							// fontSize: 20,
						},
						itemStyle: {
							//地图区域的多边形 图形样式。 默认样试。
							areaColor: '#00aa00', //地图区域的颜色。
							borderColor: '#ffff00', //边框线
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
								color: '#d6f628',
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
							console.log('1111');
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

		methods: {
			change(oneCity) {
				listStation({
					"parentId": oneCity.deptId
				}).then(response => {
					// console.log(oneCity.deptId)
					// console.log(response)
					this.station = response.data;
			
					// this.loading = false;
				});
			},
			// 动态改变配置数据
			changeOption() {},						
			onViewClick(options) {
				
				this.$emit("getClickData",options)
				console.log(options)
				let cityId = this.mp[options];
					listStation({
						"parentId": cityId
					}).then(response => {
						this.city = response.data;
						console.log(this.city)
					})
				
			}
		},
	};
</script>

<script module="echarts" lang="renderjs">
	// 将npm方式下载的echarts插件引入进来
	import * as echarts from 'echarts';
	// Vue.prototype.$echarts = echarts;
	const jsonData = require('../../static/map/ShanDong.json');
	
	export default {
			data() {
				return {
					clickData:'111'
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
				script.src = '../../static/echarts/echarts.min.js'
				script.onload = this.mYChartmap.bind(this)
				document.head.appendChild(script)

			}
		},

		methods: {
			
						
			// change(oneCity) {
			// 	listStation({
			// 		"parentId": oneCity.deptId
			// 	}).then(response => {
			// 		// console.log(oneCity.deptId)
			// 		// console.log(response)
			// 		this.station = response.data;
			
			// 		// this.loading = false;
			// 	});
			// },
			// 初始化
			mYChartmap() {
				this.myChart = echarts.init(document.getElementById('echartsmap'))
				this.myChart.setOption(this.option);
				echarts.registerMap('shandong', jsonData)

				this.myChart.on('click',(params) => {
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
				if(!this.clickData){
					return
				}
				ownerInstance.callMethod('onViewClick',this.clickData)
				
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
::v-deep.u-collapse-item__content__text {
		height:auto  !important;
	}
::v-deep.u-collapse-item__content {
		height:auto  !important;
	}
::v-deep.u-collapse-item {
		height:auto  !important;
	}
::v-deep.u-collapse {
		height:auto  !important;
	}
	
::v-deep	.content-class{
	height: auto !important;
}
 ::v-deep.u-row{
 	height: auto !important;
 }

::v-deep.u-col{
	height: auto !important;
}
::v-deep.u-col-6{
	height: auto !important;
}

::v-deep.u-col-3{
	height: auto !important;
}
</style>