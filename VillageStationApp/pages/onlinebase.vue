<template>
	<view class="u-content">
		<u-parse :content="content"></u-parse>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				content: `
				<img src="/static/images/map.jpg" />
					<p>山东省农业科学院综合试验示范基地（济阳）位于济南市济阳县太平镇，距离济南院本部37公里。现有土地面积1778.07亩，于2013年11月立项建设，投资概算3.9亿元。基地突出农作物综合性科技创新和集成示范功能，以新品种创制、新技术研究和新成果新技术集成示范为核心，服务山东乃至黄淮海区域农业发展。经过几年的规划建设，初步建成设施先进、生态良好、环境优美的综合性农业科技创新示范园区。</p>
					
				`
			}
		},
	}
</script>

<style lang="scss" scoped>
    .u-content {
        padding: 24rpx;
        font-size: 30rpx;
        color: $u-content-color;
        line-height: 1.6;
		text-indent : 20px; //缩进了20px
		letter-spacing:3px; //字体间距为8px
    }
</style>
