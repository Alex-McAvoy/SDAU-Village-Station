<template>
	<el-container>
		<el-header style="height:100px;padding:0px 0px 0px 0px">
			<el-row style="background: linear-gradient(#2ed573,#2ed573,#2ed573,#2ed573,#7bed9f,#f1f2f6);">
				<el-col :span="5" class="font_white">乡村驿站&nbsp;</div></el-col>
				<el-col :span="15">
					<el-input placeholder="请输入内容" prefix-icon="el-icon-search" v-model="input2">
					</el-input>
				</el-col>
				<el-col :span="4" class="font_white">天气</div></el-col>
			</el-row>
		</el-header>
		<el-main class="radius notify main_margin">
			<el-row>
				<el-col :span="2"><svg t="1694849938332" class="icon" viewBox="0 0 1024 1024" version="1.1"
						xmlns="http://www.w3.org/2000/svg" p-id="7182" width="23" height="23">
						<path
							d="M888.37 698.15c-33.83-36.33-97.11-91.01-97.11-270.13 0.08-132.57-93.96-246.54-224.13-271.64V119.9c0-30.95-25.09-56.03-56.03-56.03s-56.03 25.09-56.03 56.03v36.48c-130.17 25.1-224.21 139.07-224.13 271.64 0 179.1-63.29 233.77-97.11 270.13a54.742 54.742 0 0 0-14.72 38.1c0 30.95 25.09 56.03 56.03 56.03H847.24c30.95 0.16 56.16-24.79 56.33-55.74v-0.3a54.68 54.68 0 0 0-15.07-38.01l-0.13-0.08z m-651.03 10c37.16-48.95 77.77-130.14 77.97-279.1v-1c0-108.31 87.8-196.11 196.11-196.11s196.11 87.8 196.11 196.11v1c0.21 148.99 40.82 230.03 77.97 279.1H237.34z m274 252.24c61.89 0 112.06-50.17 112.06-112.06H399.27c0 61.88 50.17 112.06 112.07 112.06z"
							p-id="7183" fill="#2ed573"></path>
					</svg></el-col>
				<el-col :span="20">&nbsp;即时通知</el-col>
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
				<el-col :span="20" style="font-size:14px;">一条即时通知信息，点击可查看更多</el-col>
				<el-col :span="4">12:23</el-col>
			</el-row>
			<el-row>
				<el-col :span="20" style="font-size:14px;">一条即时通知信息，点击可查看更多</el-col>
				<el-col :span="4">12:23</el-col>
			</el-row>
		</el-main>
		<el-main class="radius  new">
			<el-row>
				<el-col :span="2"><svg t="1694852434425" class="icon" viewBox="0 0 1024 1024" version="1.1"
						xmlns="http://www.w3.org/2000/svg" p-id="9323"
						data-spm-anchor-id="a313x.search_index.0.i11.77e73a81VQhc3c" width="23" height="23">
						<path
							d="M878.18 118.28l-732.3 0c-58.14 0-105.42 47.34-105.42 105.42l0 576.48c0 58.2 47.34 105.48 105.42 105.48l732.3 0c58.14 0 105.42-47.28 105.42-105.48l0-576.42c-0.06-58.14-47.34-105.48-105.42-105.48zM923.54 800.24c0 25.08-20.4 45.48-45.42 45.48l-732.24 0c-25.02 0-45.42-20.4-45.42-45.48l0-576.48c0-25.02 20.4-45.42 45.42-45.42l732.3 0c25.02 0 45.42 20.4 45.42 45.42l0 576.48zM181.04 264.08l661.86 0 0 61.86-661.86 0 0-61.86zM542 390.74l300.96 0 0 61.86-300.96 0 0-61.86zM542 516.08l300.96 0 0 88.74-300.96 0 0-88.74zM542 692l246.36 0 0 61.86-246.36 0 0-61.86zM181.04 391.64l285.96 0 0 362.16-285.96 0 0-362.16z"
							fill="#2ed573" p-id="9324"></path>
					</svg></el-col>
				<el-col :span="20">&nbsp;新闻咨询</el-col>
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
		<el-main class="radius  goods ">
			<el-row>
				<el-col :span="2"><svg t="1694852434425" class="icon" viewBox="0 0 1024 1024" version="1.1"
						xmlns="http://www.w3.org/2000/svg" p-id="9323"
						data-spm-anchor-id="a313x.search_index.0.i11.77e73a81VQhc3c" width="23" height="23">
						<path
							d="M878.18 118.28l-732.3 0c-58.14 0-105.42 47.34-105.42 105.42l0 576.48c0 58.2 47.34 105.48 105.42 105.48l732.3 0c58.14 0 105.42-47.28 105.42-105.48l0-576.42c-0.06-58.14-47.34-105.48-105.42-105.48zM923.54 800.24c0 25.08-20.4 45.48-45.42 45.48l-732.24 0c-25.02 0-45.42-20.4-45.42-45.48l0-576.48c0-25.02 20.4-45.42 45.42-45.42l732.3 0c25.02 0 45.42 20.4 45.42 45.42l0 576.48zM181.04 264.08l661.86 0 0 61.86-661.86 0 0-61.86zM542 390.74l300.96 0 0 61.86-300.96 0 0-61.86zM542 516.08l300.96 0 0 88.74-300.96 0 0-88.74zM542 692l246.36 0 0 61.86-246.36 0 0-61.86zM181.04 391.64l285.96 0 0 362.16-285.96 0 0-362.16z"
							fill="#2ed573" p-id="9324"></path>
					</svg></el-col>
				<el-col :span="20">&nbsp;热销农产</el-col>
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
						<el-row :span="17">
							<img style="width: 100%;" src="../static/images/index_goods.jpg" />
						</el-row>
						<el-row :span="3">土豆</el-row>
						<el-row :span="4" style="color:#2ed573">1800/吨</el-row>
					</el-col>
					<el-col :span="11">
						<el-row :span="17">
							<img style="width: 100%;" src="../static/images/index_goods.jpg" />
						</el-row>
						<el-row :span="3" class="common_text_size">土豆</el-row>
						<el-row :span="4" style="color: #2ed573;" class="common_text_size">1800/吨</el-row>
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
							<img style="width: 100%;" src="../static/images/index_video.jpg" />
						</el-row>
						<el-row :span="6">扎费特旗农业技术推</el-row>
					</el-col>
					<el-col :span="11">
						<el-row :span="18">
							<img style="width: 100%;" src="../static/images/index_video.jpg" />
						</el-row>
						<el-row :span="6">扎费特旗农业技术推</el-row>
					</el-col>
				</el-row>
			</el-row>
		</el-main>
		<el-main class="radius  query ">
			<el-row>
				<el-col :span="2"><svg t="1694852434425" class="icon" viewBox="0 0 1024 1024" version="1.1"
						xmlns="http://www.w3.org/2000/svg" p-id="9323"
						data-spm-anchor-id="a313x.search_index.0.i11.77e73a81VQhc3c" width="23" height="23">
						<path
							d="M878.18 118.28l-732.3 0c-58.14 0-105.42 47.34-105.42 105.42l0 576.48c0 58.2 47.34 105.48 105.42 105.48l732.3 0c58.14 0 105.42-47.28 105.42-105.48l0-576.42c-0.06-58.14-47.34-105.48-105.42-105.48zM923.54 800.24c0 25.08-20.4 45.48-45.42 45.48l-732.24 0c-25.02 0-45.42-20.4-45.42-45.48l0-576.48c0-25.02 20.4-45.42 45.42-45.42l732.3 0c25.02 0 45.42 20.4 45.42 45.42l0 576.48zM181.04 264.08l661.86 0 0 61.86-661.86 0 0-61.86zM542 390.74l300.96 0 0 61.86-300.96 0 0-61.86zM542 516.08l300.96 0 0 88.74-300.96 0 0-88.74zM542 692l246.36 0 0 61.86-246.36 0 0-61.86zM181.04 391.64l285.96 0 0 362.16-285.96 0 0-362.16z"
							fill="#2ed573" p-id="9324"></path>
					</svg></el-col>
				<el-col :span="20">&nbsp;热心提问</el-col>
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
				<el-row>
					<el-col :span="2">
						<svg t="1694867945753" class="icon" viewBox="0 0 1024 1024" version="1.1"
							xmlns="http://www.w3.org/2000/svg" p-id="4051" width="25" height="25">
							<path
								d="M512 162.909091c-192.791273 0-349.090909 156.299636-349.090909 349.090909s156.299636 349.090909 349.090909 349.090909c192.791273 0 349.090909-156.299636 349.090909-349.090909S704.791273 162.909091 512 162.909091zM349.044364 726.667636 305.617455 726.667636 305.617455 370.269091l43.426909 0L349.044364 726.667636zM331.962182 303.476364l25.925818-23.179636c16.663273 15.778909 38.632727 37.888 65.908364 66.373818L394.24 372.549818C368.174545 342.248727 347.415273 319.208727 331.962182 303.476364zM450.420364 605.277091l0 25.925818L408.948364 631.202909 408.948364 441.669818l197.073455 0 0 163.653818L450.420364 605.323636zM711.493818 660.759273c0 43.938909-19.874909 65.908364-59.531636 65.908364-25.786182 0-50.594909-0.325818-74.565818-0.930909-1.210182-9.076364-3.630545-21.364364-7.261091-36.817455 25.134545 1.815273 49.384727 2.746182 72.750545 2.746182 22.109091 0 33.186909-11.822545 33.186909-35.467636L676.072727 348.578909 451.537455 348.578909 451.537455 324.654545l260.002909 0L711.540364 660.759273zM451.863273 580.375273l119.994182 0L571.857455 465.082182 451.863273 465.082182 451.863273 580.375273z"
								fill="#2ed573" p-id="4052" data-spm-anchor-id="a313x.search_index.0.i0.72ec3a81FRHxAN"
								class="selected"></path>
						</svg>
					</el-col>
					<el-col :span="22">李子出现黑斑，周边有水印是什么原因?</el-col>

				</el-row>
				<el-row>


					<el-col :span="2">
						<svg t="1694868139359" class="icon" viewBox="0 0 1024 1024" version="1.1"
							xmlns="http://www.w3.org/2000/svg" p-id="5172" width="15" height="15">
							<path
								d="M0 170.24A170.197333 170.197333 0 0 1 170.24 0h683.52A170.197333 170.197333 0 0 1 1024 170.24v683.52A170.197333 170.197333 0 0 1 853.76 1024H170.24A170.197333 170.197333 0 0 1 0 853.76V170.24z m246.016-4.992l22.314667-38.656-66.986667-38.656L85.333333 288.853333l66.986667 38.613334 49.024-84.906667h73.216l60.330667 135.509333 70.656-31.445333-46.336-104.064h151.466666V165.248H246.058667z m388.864 77.354667h64.341333l60.330667 135.509333 70.656-31.445333-46.336-104.064h152.192V165.248h-256.512l23.808-41.258667L636.373333 85.333333l-116.010666 200.96 66.986666 38.656 47.530667-82.346666z m-505.258667 392.106666l149.077334-86.016v41.941334h464.042666v-41.941334l149.034667 86.058667 38.698667-66.986667-419.754667-241.621333-419.754667 241.621333 38.656 66.986667z m210.346667-121.429333l170.752-98.56 170.709333 98.56H339.968z m441.429333 154.709333H240V938.666667h77.354667v-38.656h386.688V938.666667h77.354666v-270.677334z m-77.354666 77.312v77.354667H317.354667v-77.354667h386.688z"
								fill="#ff4757" p-id="5173" data-spm-anchor-id="a313x.search_index.0.i6.72ec3a81FRHxAN"
								class="selected"></path>
						</svg>
					</el-col>
					<el-col :span="22">李子出现黑斑，周边有水印是什么原因?</el-col>
				</el-row>
			</el-row>

		</el-main>

		</el-main>
		<el-main class="radius  load">
			<el-row>
				<el-col :span="2"><svg t="1694852434425" class="icon" viewBox="0 0 1024 1024" version="1.1"
						xmlns="http://www.w3.org/2000/svg" p-id="9323"
						data-spm-anchor-id="a313x.search_index.0.i11.77e73a81VQhc3c" width="23" height="23">
						<path
							d="M878.18 118.28l-732.3 0c-58.14 0-105.42 47.34-105.42 105.42l0 576.48c0 58.2 47.34 105.48 105.42 105.48l732.3 0c58.14 0 105.42-47.28 105.42-105.48l0-576.42c-0.06-58.14-47.34-105.48-105.42-105.48zM923.54 800.24c0 25.08-20.4 45.48-45.42 45.48l-732.24 0c-25.02 0-45.42-20.4-45.42-45.48l0-576.48c0-25.02 20.4-45.42 45.42-45.42l732.3 0c25.02 0 45.42 20.4 45.42 45.42l0 576.48zM181.04 264.08l661.86 0 0 61.86-661.86 0 0-61.86zM542 390.74l300.96 0 0 61.86-300.96 0 0-61.86zM542 516.08l300.96 0 0 88.74-300.96 0 0-88.74zM542 692l246.36 0 0 61.86-246.36 0 0-61.86zM181.04 391.64l285.96 0 0 362.16-285.96 0 0-362.16z"
							fill="#2ed573" p-id="9324"></path>
					</svg></el-col>
				<el-col :span="20">&nbsp;惠民贷款</el-col>
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
				<img src="../static/images/farmers_load.png" style="width:100%" />
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