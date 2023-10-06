<template>
	<view>
		<!-- 1 -->
		<div class="content" v-for="expert in experts" :key="expert.id">
			<view style=" border-radius: 10px; background-color: white;margin:15px;"  @click="goToDetailPage1(expert.askExpertsId)">
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
				       url:"/pages/station/askExperts/shr?id="+id
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