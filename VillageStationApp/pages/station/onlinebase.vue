<template>
	<view>
		<view class="box">
			<view @click="echarts.onClick" :prop="option" :change:prop="echarts.updateEcharts" id="echartsmap"
				class="echarts"></view>
		</view>

		<!-- <view class="content">
		        
		        <view class="echarts" :prop="option" :change:prop="echarts.updateEcharts" 
		            id="echart">
		        </view>
		       
		    </view> -->

		<!-- 内容1 -->
		<view class="album__content" style="background-color: white; display: flex; margin: 15px">
			<!-- 左 -->
			<view style="margin-top: 15px; margin-left: 15px">
				<!-- 左上 -->
				<view style="margin-right: 15px; width: 220px; height: 20px">
					<u--text text="江苏(姜堰)现代农业 (稻麦) 科技综合示范基地" bold size="11"></u--text>
				</view>
				<!-- 左下 -->
				<view style="margin-top: 3vh; display: flex">
					<view>
						<image src="../../static/images/station/onlinebase/location.png"
							style="width: 13px; height: 15px; margin-top: 10px"></image>
					</view>
					<view style="
              margin-left: 2vh;
              width: 150px;
              height: 20px;
              margin-top: 10px;
            ">
						<u--text text="泰州市农业开发区江苏红旗种业" size="10"></u--text>
					</view>
				</view>
			</view>
			<!-- 右 -->
			<view style="margin-right: 15px">
				<!-- 右上 -->
				<view style="margin-top: 15px">
					<button style="
              font-size: 11px;
              background-color: #00ae67;
              color: white;
              width: 80px;
              height: 30px;
            ">
						查看详情
					</button>
				</view>
				<!-- 右下 -->
				<view>
					<button type="primary" style="
              font-size: 11px;
              margin-bottom: 15px;
              margin-top: 10px;
              width: 80px;
              height: 30px;
            ">
						去这里
					</button>
				</view>
			</view>
		</view>
		<!-- 内容2 -->
		<view class="album__content" style="background-color: white; display: flex; margin: 15px">
			<!-- 左 -->
			<view style="margin-top: 15px; margin-left: 15px">
				<!-- 左上 -->
				<view style="margin-right: 15px; width: 220px; height: 20px">
					<u--text text="江苏(姜堰)现代农业 (稻麦) 科技综合示范基地" bold size="11"></u--text>
				</view>
				<!-- 左下 -->
				<view style="margin-top: 3vh; display: flex">
					<view>
						<image src="../../static/images/station/onlinebase/location.png"
							style="width: 13px; height: 15px; margin-top: 10px"></image>
					</view>
					<view style="
              margin-left: 2vh;
              margin-top: 10px;
              width: 150px;
              height: 20px;
            ">
						<u--text text="泰州市农业开发区江苏红旗种业" size="10"></u--text>
					</view>
				</view>
			</view>
			<!-- 右 -->
			<view style="margin-right: 15px">
				<!-- 右上 -->
				<view style="margin-top: 15px">
					<button style="
              font-size: 11px;
              background-color: #00ae67;
              color: white;
              width: 80px;
              height: 30px;
            ">
						查看详情
					</button>
				</view>
				<!-- 右下 -->
				<view>
					<button type="primary" style="
              font-size: 11px;
              margin-bottom: 15px;
              margin-top: 10px;
              width: 80px;
              height: 30px;
            ">
						去这里
					</button>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		// name: "LineEcharts",
		data() {
			return {
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
			// 动态改变配置数据
			changeOption() {},
		},
	};
</script>

<script module="echarts" lang="renderjs">
	// 将npm方式下载的echarts插件引入进来
	import * as echarts from 'echarts';
	// Vue.prototype.$echarts = echarts;
	const jsonData = require('../../static/map/ShanDong.json');

	export default {

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
			// 初始化
			mYChartmap() {
				this.myChart = echarts.init(document.getElementById('echartsmap'))
				this.myChart.setOption(this.option);
				echarts.registerMap('shandong', jsonData)

				this.myChart.on('click', function(params) {
					// console.log("111")
				})
				this.myChart.on('click', function(params) {
					const idx = params.dataIndex;
					console.log(idx, params.name, params.value);
					// to do
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
				myChart.setOption(newValue)
			},
			onClick(event, ownerInstance) {
				// 调用 service 层的方法
				ownerInstance.callMethod('onViewClick', {
					test: 'test'
				})
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