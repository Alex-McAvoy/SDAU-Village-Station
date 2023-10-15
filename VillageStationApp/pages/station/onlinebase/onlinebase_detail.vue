<template>
	<view style="background-color: white;margin: 15px; border-radius: 10px;">
		<view>
			<u-loading-page :loading="loading"></u-loading-page>
		</view>
		<view class="box">
			<image src="/static/images/station/station/R-C.jpg" style="height: 350px; width: 600px;">
		</view>
		<view style=" font-size: 18px; text-indent: 2em; line-height: 1.8; margin: 30px;  white-space: pre-line;">
			乡村在线基地是一个以乡村振兴为核心的综合性服务平台，旨在推动农村经济发展和农民增收。乡村在线基地支持下列功能：
			1、农产品交易：乡村在线基地提供了一个线上交易平台；
			2、培训教育：乡村在线基地还设有培训教育板块，提供丰富的农业技术培训和农村创业教育资源；
			3、资讯服务：乡村在线基地提供全面的农业资讯服务；
			4、金融支持：乡村在线基地与金融机构合作，为农民提供金融支持和服务；
			5、社交互动：乡村在线基地也是一个社交平台，农民可以在平台上互相交流、分享经验，建立农业合作关系。
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

		}
	}
</script>

<style>
	.view_box {
		display: flex;
		align-items: center;
		justify-content: center;
		width: 100%;
		height: 100%;
	}
</style>