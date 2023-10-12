<template>
	<view>
		<!-- 头部 -->
		<view style="margin: 15px; border-radius: 10px; overflow: hidden; background-color: white;">
			<u-grid :border="false" col="4">
				<u-grid-item v-for="(item,index) in list">
					<view @click="click(item.index)">
						<u-image :customStyle="{paddingTop:20+'rpx'}" :src="item.src" :height="40" :width="30"
							style=" margin-bottom: 10px; margin-top: 10px ; display: flex;justify-content: center;align-items: center;"
							@click="click(item.dictValue)"></u-image>
						<span class="grid-text" style="color:#9f9f9f;font-size: 15px; margin:15px">{{item.title}}</span>
					</view>
				</u-grid-item>
			</u-grid>
			<u-toast ref="uToast" />
		</view>
		<!-- 详情展示 -->
		<view v-for="item in techList" @click="skip(item)">
			<view style=" margin: 15px; border-radius: 5px;  background-color: white;">
				<view>
					<view style=" margin: 15px;">
						<view>
							<view>
								<view>
									<view class="main_title">
										{{ item.title }}
									</view>
									<image :src="item.remark"
										style="width: 350px;height: 180px; padding-left: 5vh; padding-right: 5vh; ">
									</image>
									<view class="main_content"><u-parse :content="fixedSize(item.content)"></u-parse>
									
								<!-- 	<view style="display: flex; margin-top: 3vh;">
										<u--text color="#2ed573" margin="0 0 8px 0" text="学农网 "></u--text>
										<image src="../../../static/images/station/learningTechnology/see.png"
											style="width: 15px;height: 10px;margin-top: 6px;margin-left: 135px;">
										</image>
										<u--text color="#909090 " margin="0 10px 8px 2px" text="342人阅读"
											style="justify-content:end;"></u--text>
									</view> -->
	
								</view>
							</view>
						</view>
					</view>
				</view>
			</view>
		</view>
	</view>

	</view>
</template>

<script>
	import {
		getTechListByColumns,
		updateTechReading
	} from "@/api/station/tech.js"

	export default {
		data() {
			return {
				//标题
				list: [{
						src: "/static/images/station/learningTechnology/shuid.png",
						title: '水稻',
						index: '0',
					},
					{
						src: "/static/images/station/learningTechnology/xm.png",
						title: '小麦',
						index: '1',
					},
					{
						src: "/static/images/station/learningTechnology/shuc.png",
						title: '蔬菜',
						index: '2',
					},
					{
						src: "/static/images/station/learningTechnology/gs.png",
						title: '果树',
						index: '3',
					},
					{
						src: "/static/images/station/learningTechnology/zb.png",
						title: '植保',
						index: '4',
					},
					{
						src: "/static/images/station/learningTechnology/sc.png",
						title: '禽畜',
						index: '5',
					},
					{
						src: "/static/images/station/learningTechnology/nj.png",
						title: '农机',
						index: '6',
					},
					{
						src: "/static/images/station/learningTechnology/shuic.png",
						title: '水产',
						index: '7',
					},
				],
				techList: {
					title: '',
					content: '',
					remark: ''
				}
			}
		},
		created() {
			this.getList()
		},
		methods: {
			skip(item) {
				getApp().globalData.item = item;
				updateTechReading(item).then(response => {
				})
				uni.navigateTo({
					url: "tech_detail"
				})
			},
			click(index) {
				//获取作物详情
				getTechListByColumns(1, index).then(response => {
					this.techList = response.data;
					this.loading = false;
				});
			},
			getList() {
				this.loading = true;
				getTechListByColumns(1, 0).then(response => {
					this.techList = response.data;
					this.loading = false;
				});
			},
			fixedSize(content) {
				if (content != null) {
					if (content.length < 35) return content;
					else return content.substring(0, 50) + "...."
				}
				return content;
			},
		}
	}
</script>

<style lang="scss">
	@import url("../../../static/css/text.css");

	.grid-text {
		font-size: 14px;
		color: #222325;
		padding: 10rpx 0 20rpx 0rpx;
		/* #ifndef APP-PLUS */
		box-sizing: border-box;
		/* #endif */
	}

	.uni-image {
		width: 10px;
		height: 10px;
	}
</style>