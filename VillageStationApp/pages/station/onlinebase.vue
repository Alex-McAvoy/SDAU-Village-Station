<template>
	<view>
		<view class="box">
			<view @click="echarts.onClick" :prop="option" :change:prop="echarts.updateEcharts" id="echartsmap"
				class="echarts"></view>
		</view>
		<!-- 内容1 -->
		<view class="album__content" style="background-color: white; display:flex;margin: 15px;">
			<!-- 左 -->
			<view style="margin-top: 15px; margin-left: 15px;">
				<!-- 左上 -->
				<view style="margin-right: 15px;width:220px;height:20px;">
					<u--text text="江苏(姜堰)现代农业 (稻麦) 科技综合示范基地" bold size="11"></u--text>
				</view>
				<!-- 左下 -->
				<view style="margin-top: 3vh; display:flex; ">
					<view>
						<image src="../../static/images/station/onlinebase/location.png"
							style="width: 13px;height: 15px;margin-top:10px"></image>
					</view>
					<view style="margin-left: 2vh;width:150px; height:20px; margin-top:10px">
						<u--text text="泰州市农业开发区江苏红旗种业" size="10"></u--text>
					</view>

				</view>
			</view>
			<!-- 右 -->
			<view style=" margin-right: 15px;">
				<!-- 右上 -->
				<view style="margin-top: 15px;">
					<button
						style="font-size: 11px;background-color: #00ae67 ;color: white;width:80px;height: 30px;">查看详情</button>
				</view>
				<!-- 右下 -->
				<view>
					<button type="primary"
						style="font-size: 11px; margin-bottom: 15px;margin-top: 10px;width:80px;height: 30px;">去这里</button>
				</view>
			</view>


		</view>
		<!-- 内容2 -->
		<view class="album__content" style="background-color: white; display:flex;margin: 15px;">
			<!-- 左 -->
			<view style="margin-top: 15px; margin-left: 15px;">
				<!-- 左上 -->
				<view style="margin-right: 15px; width:220px; height:20px;">
					<u--text text="江苏(姜堰)现代农业 (稻麦) 科技综合示范基地" bold size="11"></u--text>
				</view>
				<!-- 左下 -->
				<view style="margin-top: 3vh; display:flex; ">
					<view>
						<image src="../../static/images/station/onlinebase/location.png"
							style="width: 13px;height: 15px;margin-top:10px"></image>
					</view>
					<view style="margin-left: 2vh; margin-top:10px;width:150px;height:20px;">
						<u--text text="泰州市农业开发区江苏红旗种业" size="10"></u--text>
					</view>

				</view>
			</view>
			<!-- 右 -->
			<view style=" margin-right: 15px;">
				<!-- 右上 -->
				<view style="margin-top: 15px;">
					<button
						style="font-size: 11px;background-color: #00ae67 ;color: white;width:80px;height: 30px;">查看详情</button>
				</view>
				<!-- 右下 -->
				<view>
					<button type="primary"
						style="font-size: 11px; margin-bottom: 15px;margin-top: 10px;width:80px;height: 30px;">去这里</button>
				</view>
			</view>
		</view>
	</view>

</template>

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
				myChart.on('click', function(params) {
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

	#echartsmap {
		width: 682rpx;
		height: 600rpx;
	}
</style>