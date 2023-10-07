<template>
	<view class="container">
		<u-text margin="20px 0 10px 0" text="王勇--个人简介" bold size="25"></u-text>
		<view class="album">
		<view class="album__avatar">
			<image src="/static/images/station/askExperts/wy.png"
				style="margin:10px; width: 100px; height: 120px;border-radius: 8px; overflow: hidden;">
			</image>
		</view>
		</view>
		<view style="width: 100%;  border-radius: 10px;  margin-top: 2vh;">
			<u-text style="font-weight: 5px;" margin="20px 10px 10px 10px" text="1.王勇，博士，教授，博士生导师，山东省泰山学者海外特聘专家，现任生命科学学院院长。
				2.在山东农业大学农学院先后获学士、硕士学位，毕业后留校在农学院从事小麦遗传育种工作；
				3.1999年7月至9月在中国农科院品种资源研究所贾继增研究员实验室作访问学者；
				4.1999年10月至2000年10月在法国国家科学研究中心（CNRS）植物分子生物学研究所（斯特拉斯堡）作访问学者；
				5.2000年11月至2006年1月在瑞士洛桑大学植物分子生物学系攻读博士，研究磷代谢的分子机制，获植物分子生物学博士学位；
				6.2006年1月至2010年11月在美国加州大学圣地亚哥分校生物学院做博士后，主要从事植物氮素分子生物学和一氧化氮产生机理的研究。
				7.2010年11月至今在山东农业大学生命科学学院工作，主要开展植物氮素分子生物学方面的研究。" bold size="18" color="rgb(125, 125, 125)"></u-text>
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
	@import url("../../../static/css/text.css");
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