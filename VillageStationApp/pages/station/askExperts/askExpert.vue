<template>
	<view>
		<div>
			<view style="border-radius: 10px; background-color: white;margin:15px;padding-top:8px;padding-bottom: 8px;">
				<u-grid :border="false" col="4">
					<u-grid-item v-for="(listItem,listIndex) in list" :key="listIndex">
						<view >
							<u-image :customStyle="{paddingTop:20+'rpx'}" :src="listItem.src" :height="40" :width="30"
								style=" margin-bottom: 10px; margin-top: 10px ; display: flex;justify-content: center;align-items: center;"></u-image>
							<span class="grid-text"
								style="color:#9f9f9f;font-size: 15px; margin:15px">{{listItem.title}}</span>
						</view>
					</u-grid-item>
				</u-grid>
				<u-toast ref="uToast" />
			</view>
		</div>

		<!-- 1 -->
		<div class="content" v-for="expert in experts" :key="expert.id">
			<view style=" border-radius: 10px; background-color: white;margin:15px;"
				@click="goToDetailPage1(expert.askExpertsId)">
				<view class="u-page">
					<view class="u-demo-block">
						<view class="album">
							<view class="album__avatar">
								<image src="/static/images/station/askExperts/whg.png"
									style="margin:10px; width: 100px; height: 120px;border-radius: 8px; overflow: hidden;">
								</image>
							</view>
							<view class="album__content">
								<div style="margin: 20px 0 10px 0; size: 25px;">
									{{expert.expertName}}
								</div>
								<div style="margin:20px 0 8px 0 ; color:rgb(169,169,169) ;">
									{{expert.introduction}}
								</div>
							</view>
						</view>
					</view>
				</view>
			</view>
		</div>

	</view>
	</view>
</template>

<script>
	import {
		listExpert,
		getExpert,
		delExpert,
		addExpert,
		updateExpert
	} from "@/api/station/expert.js";

	export default {
		data() {
			return {
				list: [{
						src: "/static/images/station/askExperts/nx.png",
						title: '农学',
						// route: '/pages/station/askExperts/askExpert'
					},
					{
						src: "/static/images/station/askExperts/lx.png",
						title: '林学',
						// route: '/pages/station/freeAsk'
					},
					{
						src: "/static/images/station/askExperts/yy.png",
						title: '园艺',
						// route: '/pages/station/learningTechnology'
					},
					{
						src: "/static/images/station/askExperts/dw.png",
						title: '动物',
						// route: '/pages/station/purchaseFarm'
					},
					{
						src: "/static/images/station/askExperts/xx.png",
						title: '信息',
						// route: '/pages/station/channel'
					},
					{
						src: "/static/images/station/askExperts/nj.png",
						title: '农机',
						// route: '/pages/station/products'
					},
					{
						src: "/static/images/station/askExperts/zb.png",
						title: '植保',
						// route: '/pages/station/newspecies'
					},
					{
						src: "/static/images/station/askExperts/sk.png",
						title: '食科',
						// route: '/pages/station/onlinebase'
					},
				],
				experts: {
					expertName: '',
					introduction: ''
				}
			}
		},
		created() {
			this.getList();
		},
		methods: {
			//获取专家列表
			getList() {
				this.loading = true;
				listExpert(this.queryParams).then(response => {
					this.experts = response.rows;
					// this.total = response.total;
					this.loading = false;
				});
			},
			goToDetailPage1(id) {
				uni.navigateTo({
					url: "/pages/station/askExperts/shr?id=" + id
				})
				// this.$router.push(`/pages/station/askExperts/shr`);
			},
		}
	}
</script>

<style lang="scss">
	.container {
		display: flex;
		justify-content: center;
		/* 水平居中 */
		align-items: center;
		/* 垂直居中 */
		display: flex;
		/* 将容器设置为弹性布局 */
		align-items: center;
		/* 垂直居中对齐图标和文本 */
	}

	.module {
		display: inline-flex;
		flex-direction: row;
		align-items: center;
	}

	.album {
		@include flex;
		align-items: flex-start;

		&__avatar {
			background-color: #fff;
			padding: 5px;
			border-radius: 3px;
		}

		&__content {
			margin-left: 10px;
			flex: 1;
		}
	}
</style>