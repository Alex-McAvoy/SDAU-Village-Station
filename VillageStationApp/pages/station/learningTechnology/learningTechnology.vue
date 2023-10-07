<template>
	<view>
		<!-- 头部 -->
		<view style="margin: 15px; border-radius: 10px; overflow: hidden; background-color: white;">
			<u-grid :border="false" col="4">
				<u-grid-item v-for="(listItem,listIndex) in list" :key="listIndex">
					<u-icon :customStyle="{paddingTop:20+'rpx'}" :name="listItem.name" :size="22" color="#2ed573"
						@click="click(listItem.firstColumn)"></u-icon>
					<text class="grid-text">{{listItem.title}}</text>
				</u-grid-item>
			</u-grid>
			<u-toast ref="uToast" />
		</view>
		<!-- 内容一 -->
		<div v-for="onetechdetail in techdetails" :key="onetechdetail.title">
			<div style=" background-color: white;margin: 15px; border-radius: 10px;" @click="goToDetailPage(onetechdetail.articleId)">
				<div style="display: flex; margin-left: 20px; margin-top: 20px;">	
					<image src="../../../static/images/station/learningTechnology/melon.jpg" style="margin-top: 10px; border-radius: 15px; height: 100px; width: 130px;">
					</image>
					<image src="../../../static/images/station/channel/demand.jpg" style="margin-top: 10px; border-radius: 15px; height: 100px; width: 130px; margin-left: 15px;">
					</image>
				</div>
				<view style="margin-left: 20px;">
					<div type="primary" class="main_content">{{onetechdetail.content}}</div>
					<view style="display: flex; margin-top: 3vh;">
						<u--text color="#909090 " margin="0 0 8px 0" text="中国政府网 "></u--text>
						<u--text color="#909090 " margin="0 0 8px 0" text="342人阅读" style="justify-content:end;"></u--text>
					</view>
				</view>
			</div>
		</div>	
		
	</view>
</template>

<script>
	import {
		getTechdetail,
	} from "@/api/station/tech.js"

	export default {
		data() {
			return {
				//标题
				title:'',
				list: [{
						name: 'bag-fill',
						title: '水稻',
						firstColumn:'0',
					},
					{
						name: 'bookmark-fill',
						title: '小麦',
						firstColumn:'1',
					},
					{
						name: 'setting-fill',
						title: '蔬菜',
						firstColumn:'2',
					},
					{
						name: 'coupon-fill',
						title: '果树',
						firstColumn:'3',
					},
					{
						name: 'pushpin-fill',
						title: '植保',
						firstColumn:'4',
					},
					{
						name: 'grid-fill',
						title: '禽畜',
						firstColumn:'5',
					},
					{
						name: 'car-fill',
						title: '农机装备',
						firstColumn:'6',
					},
					{
						name: 'integral-fill',
						title: '水产',
						firstColumn:'7',
					},
				],
			techdetails: {
				content:'',
			}
			}
		},
		created() {
			this.click(0)
		},
		methods: {
			goToDetailPage(id) {
				// console.log(id);
				uni.navigateTo({
					url: "/pages/station/learningTechnology/techdetail?id=" + id
				});
			},
			click(firstColumn) {
				//获取作物详情
				getTechdetail(firstColumn).then(response => {
					// console.log(response)
						this.techdetails = response.data;
						// this.total = response.total;
						this.loading = false;
				});
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
	.uni-image{
		width: 10px;
		height: 10px;
	}
</style>