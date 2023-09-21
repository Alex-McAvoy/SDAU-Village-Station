<template>
	<view class="container">
		<u-text margin="20px 0 10px 0" text="王洪刚--个人简介" bold size="25"></u-text>
		<view class="album">
		<view class="album__avatar">
			<image src="/static/images/station/askExperts/whg.png"
				style="margin:10px; width: 100px; height: 120px;border-radius: 8px; overflow: hidden;">
			</image>
		</view>
		</view>
		<view style=" border-radius: 10px; background-color:;  margin-top: 2vh;">
			<u-text style="font-weight: 5px;" margin="20px 10px 10px 10px"
				text="王洪刚，男， 1955年生，农学博士，教授，博士生导师。享受政府特殊津贴专家。现为山东农业大学农学院教授委员会主任，国家小麦改良中心山东（泰安）分中心主任，农业部小麦栽培生理与遗传改良重点开放实验室副主任，山东省小麦工程技术研究中心主任，国家第三届农作物品种审定委员会麦类品审专家。"
				bold size="18" color="rgb(125, 125, 125)"></u-text>
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

<style lang="scss">
	.container {
		background: linear-gradient(#ededed,#f1f2f6);
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
			margin-left: 10px;
			flex: 1;
		}
	}
</style>