<template>
	<view>
		<!-- 头部 -->
		<view
			style=" display: flex; align-items: center;  background-color: white; justify-content: space-between; margin-bottom: 10px;">
			<!-- 定位 -->
			<view style=" align-items: center; display:flex;">
				<image src="../../../static/images/station/freeAsk/location.png" style="width: 15px; height: 15px; margin-top: 10px;"></image>
				<span style="color:#2ed573 ; margin-left: 5px;display:flex; ">泰安</span>
			</view>
			<!-- 搜索框 -->
			<view style="width: 80%; height: 20px; margin-bottom: 20px; ">
				<u-search placeholder="搜索" v-model="keyword" actionText=""></u-search>
			</view>
		</view>
		<!-- 个人简介 -->
		<view class="album__content" style="display: flex;">
			<view>
				<image src="/static/images/station/askExperts/whg.png" mode="" style="width: 100px;height: 150px; margin-left: 5px;margin-top: 2px;shape:circle;"></image>
			</view>
			
		    <view>
				<u--text margin="0 0 4px 0"
					text="王洪刚，男， 1955年生，农学博士，教授，博士生导师。享受政府特殊津贴专家。现为山东农业大学农学院教授委员会主任，国家小麦改良中心山东（泰安）分中心主任，农业部小麦栽培生理与遗传改良重点开放实验室副主任，山东省小麦工程技术研究中心主任，国家第三届农作物品种审定委员会麦类品审专家。"bold size="5"></u--text>
				<!-- <span style="bold size: 10;">王洪刚，男， 1955年生，农学博士，教授，博士生导师。享受政府特殊津贴专家。现为山东农业大学农学院教授委员会主任，国家小麦改良中心山东（泰安）分中心主任，农业部小麦栽培生理与遗传改良重点开放实验室副主任，山东省小麦工程技术研究中心主任，国家第三届农作物品种审定委员会麦类品审专家。</span> -->
			</view>
		</view>
		<view class="u-page">
			<!-- 导航栏 -->
			<view style=" margin: 15px; border-radius: 5px; background-color: white;">
				<u-tabs :list="list1" @click="click" class="tabs" style="align-items: center;" lineColor="#2ed573"
					lineWidth="50"> </u-tabs>
			</view>
			<!-- 内容一 -->
			<view class="u-page" >
				<view class="u-demo-block">
					<view class="album__content">
						<view class="u-demo-block__content">
							<view class="album">
								<view class="album__avatar">
									<image src="/static/images/icon.jpg" mode="" style="width: 32px;height: 32px; "></image>
									<image src="../../../static/images/station/freeAsk/location.png" style="width: 15px; height: 15px;"></image>
									<span style="color:#D3D3D3;; ; margin-left: 5px;size: 5px; ">暂无地址</span>
									<u--text text="苹果在树上，还没摘就面了，还能变脆吗？" type="primary" bold size="14"></u--text>
									<u--text margin="0 0 4px 0"
										text="提高果实硬度: 一，清园配方用康纯钙镁锌。 二，施基肥配方中用矿物晶。 三，套装前喷足三次美钙镁幼果补钙。"bold size="12"></u--text>
									<u-album :urls="urls1" keyName="src2" style="margin-bottom: 8px;"></u-album>
									<span style="color: dimgrey;front-size 10px;margin-left: 10px;">2023-10-01</span>
								</view>
							</view>
						</view>
					</view>
				</view>
			</view>	
			
			<!-- 内容四 -->
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				list1: [{
					name: '专家咨询',
				},  ],
			}
		},
		methods: {
			click(item) {
				console.log('item', item);
			},

			scrolltolower() {
				this.loadmore()
			},
		}
	}
</script>

<style lang="scss">
	.album__content {
		margin: 15px;
		border-bottom: 1px solid #979797;
		border-radius: 5px;
		background-color: white;

	}

	.u-page {
		// background-color: white;
		height: 100%;
		border-radius: 5px;
		margin: 1vh;
	}

	.album {
		@include flex;
		align-items: flex-start;

		&__avatar {
			background-color: $u-bg-color;
			padding: 5px;
			border-radius: 3px;
		}

		&__content {
			// margin-left: 10px;
			flex: 1;
		}
	}
	.album__content {
		margin-top: 5px;
	}
	image {
		margin-bottom: 2vh;
		margin-left: 3vh;
	}

	::v-deep .u-tabs__wrapper__nav__item__text {
		font-size: 19px !important;
	}

	::v-deep .u-text__value {
		margin-left: 3vh !important;
		margin-top: 1vh;
	}
</style>