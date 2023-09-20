<template>
	<el-container>
		<el-header style="height:100px;padding:0px 0px 0px 0px">
			<el-row style="background: linear-gradient(#2ed573,#2ed573,#2ed573,#2ed573,#7bed9f,#f1f2f6);">
				<el-col :span="5" class="font_white">农技培训&nbsp;</div></el-col>
				<el-col :span="15">
					<el-input placeholder="请输入内容" prefix-icon="el-icon-search" v-model="input2">
					</el-input>
				</el-col>
				<el-col :span="4" class="font_white">天气</div></el-col>
			</el-row>
		</el-header>
		
		<el-main class="radius  new">
			
			<el-row>
				<el-menu :default-active="activeIndex" class="el-menu-demo flex_center"
					style="height:auto;padding:5px;flex-wrap:nowrap;overflow-x: auto;margin:-10px 0px 10px 0px"
					mode="horizontal" @select="handleSelect">
					<el-menu-item index="2">推荐</el-menu-item>
					<el-menu-item index="3">政策法规</el-menu-item>
					<el-menu-item index="4">三农资讯</el-menu-item>
					<el-menu-item index="5">科技动态</el-menu-item>
				</el-menu>
			</el-row>
			<el-row :span="24">
				<el-row>
					<el-col :span="12"><img style="width:100%"
							src="http://paper.people.com.cn/rmrb/images/2023-09/16/01/rmrb2023091601p27_b.jpg" /></el-col>
					<el-col :span="12" style="padding:5px;font-size:14px">
						<el-row :span="16">【新时代新征程新伟业——实干笃行】安徽扩外贸引外资 提高开放型经济水平</el-row>
						<el-row :span="8" style="font-size: 10px;">
							<el-col :span="8" style="color:#2ed573">政策法规</el-col>
							<el-col :span="16" style="color:#ced6e0">中国政府网</el-col>
						</el-row>
					</el-col>
				</el-row>
			</el-row>
		</el-main>
		
		<el-main class="radius  video ">
			<el-row>
				<el-col :span="2"><svg t="1694852434425" class="icon" viewBox="0 0 1024 1024" version="1.1"
						xmlns="http://www.w3.org/2000/svg" p-id="9323"
						data-spm-anchor-id="a313x.search_index.0.i11.77e73a81VQhc3c" width="23" height="23">
						<path
							d="M878.18 118.28l-732.3 0c-58.14 0-105.42 47.34-105.42 105.42l0 576.48c0 58.2 47.34 105.48 105.42 105.48l732.3 0c58.14 0 105.42-47.28 105.42-105.48l0-576.42c-0.06-58.14-47.34-105.48-105.42-105.48zM923.54 800.24c0 25.08-20.4 45.48-45.42 45.48l-732.24 0c-25.02 0-45.42-20.4-45.42-45.48l0-576.48c0-25.02 20.4-45.42 45.42-45.42l732.3 0c25.02 0 45.42 20.4 45.42 45.42l0 576.48zM181.04 264.08l661.86 0 0 61.86-661.86 0 0-61.86zM542 390.74l300.96 0 0 61.86-300.96 0 0-61.86zM542 516.08l300.96 0 0 88.74-300.96 0 0-88.74zM542 692l246.36 0 0 61.86-246.36 0 0-61.86zM181.04 391.64l285.96 0 0 362.16-285.96 0 0-362.16z"
							fill="#2ed573" p-id="9324"></path>
					</svg></el-col>
				<el-col :span="20">&nbsp;精彩视频</el-col>
				<el-col :span="2"><svg t="1694850751155" class="icon" viewBox="0 0 1024 1024" version="1.1"
						xmlns="http://www.w3.org/2000/svg" p-id="8256" width="23" height="23">
						<path
							d="M326.4 838.4l352-352c12.8-12.8 32-12.8 44.8 0l0 0c12.8 12.8 12.8 32 0 44.8l-352 352c-12.8 12.8-32 12.8-44.8 0l0 0C313.6 876.8 313.6 851.2 326.4 838.4z"
							p-id="8257" fill="#cdcdcd"></path>
						<path
							d="M678.4 531.2 326.4 185.6c-12.8-12.8-12.8-32 0-44.8l0 0C339.2 128 358.4 128 371.2 134.4l352 352c12.8 12.8 12.8 32 0 44.8l0 0C710.4 544 684.8 544 678.4 531.2z"
							p-id="8258" fill="#cdcdcd"></path>
					</svg></el-col>
			</el-row>
			<el-row>
				<el-row style="text-align: center;">
					<el-col :span="11" style="margin-right:10px;">
						<el-row :span="18">
							<img style="width: 100%;" src="../../static/images/index_video.jpg" />
						</el-row>
						<el-row :span="6">扎费特旗农业技术推</el-row>
					</el-col>
					<el-col :span="11">
						<el-row :span="18">
							<img style="width: 100%;" src="../../static/images/index_video.jpg" />
						</el-row>
						<el-row :span="6">扎费特旗农业技术推</el-row>
					</el-col>
				</el-row>
			</el-row>
		</el-main>
		

	</el-container>
</template>

<script>
	export default {
		onLoad: function() {},
		data() {
			return {
				input2: '',
				activeIndex: '1',
				activeIndex2: '1'
			}
		},
		methods: {
			handleSelect(key, keyPath) {
				console.log(key, keyPath);
			}
		}
	}
</script>

<style>
	//可以组件化样式
	.body {
		background: #dfe4ea;
	}

	.flex_center {
		//横向居中弹性盒子
		display: flex;
		flex-direction: row;
		justify-content: center;
		align-items: center;
	}

	.font_white {
		//白色字体
		color: azure;
		font-size: 18px;
	}

	.radius {
		border: 1px solid #fffff;
		border-radius: 10px;
		background-color: #ffffff;
	}

	.el-header,
	.el-footer {
		background-color: #B3C0D1;
		color: #333;
		text-align: center;
		line-height: 100px;
	}

	.el-main {
		color: #333;
		text-align: center;
		margin-left: 15px;
		margin-right: 15px;
		margin-bottom: 10px;
		font-size: 16px;
	}

	.el-row,
	.el-row>.el-col {
		margin: 0px;
	}

	.el-container:nth-child(5) .el-aside,
	.el-container:nth-child(6) .el-aside {
		line-height: 260px;
	}

	.el-container:nth-child(7) .el-aside {
		line-height: 320px;
	}

	// 单独定义
	.notify {
		margin-top: -10px;
		z-index: 10;
	}

	.notify>.el-row,
	.new>.el-row,
	.goods>.el-row {
		text-align: left;
		margin-top: 8px;
	}


	.new {
		margin-top: 10px;
	}

	//上右下左
</style>