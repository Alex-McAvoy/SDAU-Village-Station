<template>
	<view>
		<view
			style=" display: flex; align-items: center;  background-color: white; justify-content: space-between; margin-bottom: 10px;">
			<!-- 定位 -->
			<view style="margin-left: 1vh; align-items: center; margin-bottom: 10px;">
				<image src="../../static/images/station/onlinebase/location.png" style="width: 15px; height: 15px;"></image>
				<span style="color:#2ed573 ; margin-left: 5px; ">泰安</span>
			</view>
			<!-- 搜索框 -->
			<view style="width: 80%; height: 20px; margin-bottom: 20px; ">
				<u-search placeholder="搜索" v-model="keyword" actionText=""></u-search>
			</view>
		</view>

		<!-- 新品种 绿色超级稻-->
		<view style=" margin: 15px; border-radius: 5px;  background-color: white; margin-top: 10px; ">
			<view class="u-page">
				<view class="u-demo-block">
					<view class="u-demo-block__content">
						<view class="album">
							<view class="album__content">
								<u--text text="绿色超级稻" type="primary" bold size="17"></u--text>
								<u--text margin="0 0 8px 0"
				text="绿色超级稻是由中国科学院院士、华中农业大学作物遗传改良国家重点实验室主任张启发教授提出的，是指在高产优质的基础上同时兼有多种病虫害的抗性、肥料的高效吸收利用、以及较强的抗旱性或抗逆性等绿色性状的水稻新品种。绿色超级稻”的培育和推广应用，将实现水稻生产中“少打农药、少施化肥、节水抗旱、优质高产”的目标。"></u--text>
								<u-album :urls="urls1" keyName="src2" style="margin-bottom: 8px;"></u-album>
								<image src="../../static/images/station/newspecies/newPaddy.jpg" style="width: 300px;height: 150px; padding-left: 5vh; padding-right: 5vh;"></image>
							</view>
						</view>
					</view>
				</view>
			</view>
		</view>
		

		<!-- 新品种：抗赤霉病高产小麦 -->
		<view style=" margin: 15px; border-radius: 5px;  background-color: white; margin-top: 10px; ">
			<view class="u-page">
				<view class="u-demo-block">
					<view class="u-demo-block__content">
						<view class="album">
							<view class="album__content">
								<u--text text="抗赤霉病高产小麦新品种“扬麦33号" type="primary" bold size="17"></u--text>
								<u--text margin="0 0 8px 0"
				text="由江苏里下河地区农业科学研究所小麦研究室主任高德荣科研团队，通过不懈努力，采取分子育种技术，在国内首次成功选育出高抗赤霉病、抗白粉病的“双抗”高产新品种——扬麦33号.扬麦33赤霉病抗性突出，同时兼抗白粉病等，综合性状优良，实现了抗赤霉病与高产协同遗传改良的重大突破，这种具有“双抗”高产小麦新品种，对于解决我国小麦严重病害问题意义重大。"></u--text>								<u-album :urls="urls1" keyName="src2" style="margin-bottom: 8px;"></u-album>
<image src="../../static/images/station/newspecies/newwheat.jpg" style="width: 300px;height: 150px; padding-left: 5vh; padding-right: 5vh; "></image>
							</view>
						</view>
					</view>
				</view>
			</view>
		</view>
		
				
		
		<!-- 新品种 中棉113-->
		<view style=" margin: 15px; border-radius: 5px;  background-color: white; margin-top: 10px; ">
			<view class="u-page">
				<view class="u-demo-block">
					<view class="u-demo-block__content">
						<view class="album">
							<view class="album__content">
								<u--text text="棉花品种-中棉113" type="primary" bold size="17"></u--text>
								<u--text margin="0 0 8px 0"
								text="中棉113于2019年在甘肃审定，2020年引种到新疆示范种植。生育期113-115天，单铃重5.0-5.5克，衣分45%；抗枯萎病、耐黄萎病；纤维长度31.5mm，断裂比强度31.7cN/tex，马克隆值4.0左右，整齐度指数85.1%，纺纱均匀性指数166。该品种成功突破了早熟、高产、优质、高衣分难以协同改良的技术瓶颈，早熟、高品质特性划时代推动风险棉区宜棉化、优棉化，扩大北疆植棉边界至北纬47°，已成为确保北疆地区高品质棉花稳定供应、且超越“澳棉”品质标准的“芯片品种”。"></u--text>
								<u-album :urls="urls1" keyName="src2" style="margin-bottom: 8px;"></u-album>
								<image src="../../static/images/station/newspecies/newcotton.jpg" style="width: 300px;height: 150px; padding-left: 5vh; padding-right: 5vh;"></image>
							</view>
						</view>
					</view>
				</view>
			</view>
		</view>
		
		<!-- 新品种 杂粮新品种-->
		<view style=" margin: 15px; border-radius: 5px;  background-color: white; margin-top: 10px; ">
			<view class="u-page">
				<view class="u-demo-block">
					<view class="u-demo-block__content">
						<view class="album">
							<view class="album__content">
								<u--text text="杂粮新品种" type="primary" bold size="17"></u--text>
								<u--text margin="0 0 8px 0"
												text="中国农科院选育出了中谷系列谷子、中绿系列绿豆、中红系列红小豆等杂粮新品种，其中“中谷2”米质达到国家一级米标准，成为山东“龙山小米”、新疆“疏勒小米”等品牌小米的主开发品种。"></u--text>
								<u-album :urls="urls1" keyName="src2" style="margin-bottom: 8px;"></u-album>
								<image src="../../static/images/station/newspecies/newgrains.jpg" style="width: 300px;height: 150px; padding-left: 5vh;padding-right: 5vh; "></image>
							</view>
						</view>
					</view>
				</view>
			</view>
		</view>
		
	</view>


</template>

<script>
	export default {
		data() {
			return {

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
	.album {
		@include flex;
		align-items: flex-start;

		&__avatar {
			padding: 5px;
			border-radius: 3px;
		}

		&__content {
			margin-left: 10px;
			flex: 1;
		}
	}

	.album__content {
		margin-top: 5px;
	}
</style>

	// ::v-deep .u-tabs__wrapper__nav__item__text {
	// 	font-size: 19px !important;
	// }

	// ::v-deep .u-text__value--primary {
	// 	color: #2ed573 !important;
	// }
