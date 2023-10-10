<template>
	<view class="box">
		<view @click="echarts.onClick" :prop="option" :change:prop="echarts.updateEcharts" id="echartsmap" class="echarts"></view>
	</view>
</template>


<script>
	export default {
		 data() {
			return {
				bjData: [],
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
						data:[
                     { name: '济南市', value:68.10},
                     { name: '青岛市', value: 79.63 },
                     { name: '德州市', value: 54.72 },
                     { name: '滨州市', value: 71.70 },
                     { name: '东营市', value: 51.42 },
                     { name: '聊城市', value: 59.49 },
                     { name: '淄博市', value: 65.13 },
                     { name: '潍坊市', value: 50.00 },
                     { name: '烟台市', value: 68.49 },
                     { name: '威海市', value: 100.00 },
                     { name: '泰安市', value: 61.31 },
                     { name: '菏泽市', value: 58.76 },
                     { name: '济宁市', value: 79.63 },
                     { name: '枣庄市', value: 75.15 },
                     { name: '临沂市', value: 59.70 },
                     { name: '日照市', value: 56.90 }
                   ],
						label: {
							//图形上的文本标签，可用于说明图形的一些数据信息
							show: true, //是否显示文本
							color: '#CCC', //文本颜色
							// fontSize: 20,
						},
						itemStyle: {
							//地图区域的多边形 图形样式。 默认样试。
							areaColor: '#2B2D3E', //地图区域的颜色。
							borderColor: '#4F87F8', //边框线
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

					//是视觉映射组件，用于进行『视觉编码』，也就是将数据映射到视觉元素（视觉通道）。
					// visualMap: {
					// 	type: 'piecewise',
					// 	pieces: [{
					// 			gt: 201,
					// 			label: '> 201',
					// 			color: '#DE5D5F',
					// 		},
					// 		{
					// 			gte: 101,
					// 			lte: 200,
					// 			label: '101 - 200',
					// 			color: '#DE7152',
					// 		},
					// 		{
					// 			gte: 10,
					// 			lte: 100,
					// 			label: '10 - 100',
					// 			color: '#E8B63C',
					// 		},
					// 		{
					// 			gte: 1,
					// 			lt: 10,
					// 			label: '1 - 9',
					// 			color: '#50A3BA',
					// 		},
					// 	],

					// 	min: 0, //最小值
					// 	max: 1000, //最大值
					// 	calculable: false, //是否显示拖拽用的手柄（手柄能拖拽调整选中范围）。
					// 	splitNumber: 4,
					// 	itemSymbol: 'circle',
					// 	piecewise: {
					// 		show: true,
					// 	},

					// 	inRange: {
					// 		color: ['#50A3BA', '#E8B63C', '#DE5D5F'], //颜色
					// 	},
					// 	show: true,
					// 	textStyle: {
					// 		color: '#fff',
					// 		fontSize: 8,
					// 	},
					// 	itemWidth: 8,
					// 	inverse: false,
					// 	precision: 0,
					// 	itemHeight: 8,
					// 	align: 'left',
					// 	textGap: 5,
					// 	showLabel: true,
					// 	itemSymbol: 'circle',
					// 	itemGap: 10,
					// },
					// legend: {  //图例组件
					// 	orient: 'vertical',
					// 	top: 'bottom',
					// 	left: 'right',
					// 	data: ['pm2.5'],
					// 	textStyle: {
					// 		color: '#fff',
					// 	},
					// },
					// series: [{
					// 	type: 'effectScatter', //样试
					// 	coordinateSystem: 'geo', //该系列使用的坐标系
					//  	data: [{
					// 	 	name: "青岛市",
					// 	 	value: [120.37, 36.0944, 110]
					// 	 }],
					// 	itemStyle: {
					// 		//样试。
					// 		normal: {
					// 			//默认样试
					// 			color: '#d6f628',
					// 		},
					// 	},
					// 	zoom: 0.1,
					// 	aspectScale: 0.1,
					// 	roam: false,
					// 	label: {
					// 		show: true,
					// 		fontSize: 10,
					// 		normal: {
					// 			show: false,
					// 		},
					// 		emphasis: {
					// 			show: true,
					// 		},
					// 	},
					// 	//标记的大小,可以设置数组或者函数返回值的形式
					// 	symbolSize: function(val) {
					// 		// return val[2] *10;
					// 		return 8
					// 	},
					// 	rippleEffect: {
					// 		//涟漪特效相关配置。
					// 		brushType: 'stroke', //波纹的绘制方式
					// 	},
					// 	hoverAnimation: true, //鼠标移入放大圆
					// }, ],
				}
			}
		},
	 methods: {}
	}
</script>
<script module="echarts" lang="renderjs">

	const jsonData = require('../../static/map/ShanDong.json');
	var myChart
	export default {
		mounted() {
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
			mYChartmap() {
				myChart = echarts.init(document.getElementById('echartsmap'))
				echarts.registerMap('shandong', jsonData)
				var option = {
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
						label: {
							//图形上的文本标签，可用于说明图形的一些数据信息
							show: true, //是否显示文本
							color: '#00ffff', //文本颜色
							fontSize: 10,
						},
						itemStyle: {
							//地图区域的多边形 图形样式。 默认样试。
							areaColor: '#00aa00', //地图区域的颜色。
							borderColor: '#4F87F8', //边框线
							
						},
						emphasis: {
							//高亮状态下的多边形和标签样式。
							label: {
								//文本
								color: '#aa6c02',
								fontSize: 14,
							},
							
							itemStyle: {
								//区域
								areaColor: '#aa4400',
							},
						},
					},
					//是视觉映射组件，用于进行『视觉编码』，也就是将数据映射到视觉元素（视觉通道）。
					// visualMap: {
					// 	type: 'piecewise',
					// 	pieces: [{
					// 			gt: 201,
					// 			label: '> 201',
					// 			color: '#DE5D5F',
					// 		},
					// 		{
					// 			gte: 101,
					// 			lte: 200,
					// 			label: '101 - 200',
					// 			color: '#DE7152',
					// 		},
					// 		{
					// 			gte: 10,
					// 			lte: 100,
					// 			label: '10 - 100',
					// 			color: '#E8B63C',
					// 		},
					// 		{
					// 			gte: 1,
					// 			lt: 10,
					// 			label: '1 - 9',
					// 			color: '#50A3BA',
					// 		},
					// 	],

					// 	min: 0, //最小值
					// 	max: 1000, //最大值
					// 	calculable: false, //是否显示拖拽用的手柄（手柄能拖拽调整选中范围）。
					// 	splitNumber: 4,
					// 	itemSymbol: 'circle',
					// 	piecewise: {
					// 		show: true,
					// 	},

					// 	inRange: {
					// 		color: ['#50A3BA', '#E8B63C', '#DE5D5F'], //颜色
					// 	},

					// 	show: true,

					// 	textStyle: {
					// 		color: '#fff',
					// 		fontSize: 8,
					// 	},
					// 	itemWidth: 8,
					// 	inverse: false,
					// 	precision: 0,
					// 	itemHeight: 8,
					// 	align: 'left',
					// 	textGap: 5,
					// 	showLabel: true,
					// 	itemSymbol: 'circle',
					// 	itemGap: 10,
					// },
					// legend: {
					// 	orient: 'vertical',
					// 	top: 'bottom',
					// 	left: 'right',
					// 	data: ['pm2.5'],
					// 	textStyle: {
					// 		color: '#fff',
					// 	},
					// },
					series: [{
						type: 'scatter', //样试
						coordinateSystem: 'geo', //该系列使用的坐标系
						data: [
							[117.000923,36.675807],
							[120.37, 36.0944],
							[118.047648,36.814939],
							[117.557964,34.856424],
							[118.66471,37.434564],
							[121.391382,37.489297],
							[119.107078,36.70925],
							[116.587245,35.415393],
							[117.129063,36.194968],
							[122.116394,37.509691],
							[119.461208,35.428588],
							[118.326443,35.065282],
							[116.307428,37.353968],
							[115.980367,36.456013],
							[117.847293,37.542609],
							[115.469381,35.246531],
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
				myChart.setOption(option)
				
				
				myChart.on('click', function(params) {
					console.log("111")
				})
				myChart.on('click', function (params) {
				            const idx = params.dataIndex;
				            console.log(idx, params.name, params.value);
				            // to do
				        })
			
				
			},
			updateEcharts(newValue, oldValue, ownerInstance, instance) {
				// 监听 service 层数据变更
				// console.log("111")
				echarts.registerMap('shandong', jsonData)
				myChart.setOption(newValue)
			},
			onClick(event, ownerInstance) {
				// 调用 service 层的方法
				ownerInstance.callMethod('onViewClick', {
					test: 'test'
				})
			},
			
			
			
		}
	}
</script>

<style scoped>
	#echartsmap {
		width: 682rpx;
		height: 600rpx;
	}
</style>

