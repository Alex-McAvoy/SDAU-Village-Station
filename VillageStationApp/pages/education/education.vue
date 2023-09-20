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
		
		<el-main class="radius new" style="margin-top: -10px">
			<el-row>
				<el-menu :default-active="activeIndex" class="el-menu-demo flex_center"
					style="height:auto;padding:5px;flex-wrap:nowrap;overflow-x: auto;margin:-10px 0px 10px 0px"
					mode="horizontal" @select="handleSelect">
					<el-menu-item index="2">全部</el-menu-item>
					<el-menu-item index="3">园艺</el-menu-item>
					<el-menu-item index="4">植保</el-menu-item>
					<el-menu-item index="5">蔬菜</el-menu-item>
					<el-menu-item index="6">家畜</el-menu-item>
					<el-menu-item index="7">环境能源</el-menu-item>
				</el-menu>
			</el-row>
		</el-main>
		
		<el-main class="radius  video ">
			<el-row>
				<el-row style="text-align: center;">
					<el-col :span="11" style="margin-right:10px;">
						<el-row :span="18">
							<img style="width: 100%;" src="../../static/images/index/index_video.jpg" />
						</el-row>
						<el-row :span="6">扎费特旗农业技术推</el-row>
					</el-col>
					<el-col :span="11">
						<el-row :span="18">
							<img style="width: 100%;" src="../../static/images/index/index_video.jpg" />
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
	.new {
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