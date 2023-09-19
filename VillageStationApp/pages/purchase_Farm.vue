<template>
	<view class="u-page">
		<!-- 导航栏 -->
		<view style="border-radius: 5px; margin-bottom: 2vh; ">
			 <u-tabs :list="list1" @click="click" class="tabs" style="align-items: center;" lineColor="#1c861a" lineWidth="50"> </u-tabs>
		</view>
		<!-- 内容一 -->
		<view class="album__content">
			<u--text
					text="酶解鱼蛋白 鱼蛋白冲施肥 叶面肥 鱼肥原浆 "
					type="primary"
					bold
					size="17"
			></u--text>
			<u--text
					margin="0 0 8px 0"
					text="		1：改良土壤团粒结构，疏松土壤。 
								2：改善根部周围微环境。 
								3：促进根部生长。 "
			></u--text>
			<image
				src="/static/images/1111.jpeg"
				style="width: 150px;height: 150px; padding-top: 1vh;"
			></image>
		</view>
		<!-- 内容二 -->
		<view class="album__content" >
			<u--text
					text="酶解鱼蛋白 鱼蛋白冲施肥 叶面肥 鱼肥原浆 "
					type="primary"
					bold
					size="17"
			></u--text>
			<u--text
					margin="0 0 8px 0"
					text="		1：改良土壤团粒结构，疏松土壤。 
								2：改善根部周围微环境。 
								3：促进根部生长。 "
			></u--text>
			<image
				src="/static/images/1111.jpeg"
				style="width: 150px;height: 150px; padding-top: 1vh;"
			></image>
		</view>
		<!-- 内容三 -->
		<view class="album__content">
			<u--text
					text="酶解鱼蛋白 鱼蛋白冲施肥 叶面肥 鱼肥原浆 "
					type="primary"
					bold
					size="17"
			></u--text>
			<u--text
					margin="0 0 8px 0"
					text="		1：改良土壤团粒结构，疏松土壤。 
								2：改善根部周围微环境。 
								3：促进根部生长。 "
			></u--text>
			<image
				src="/static/images/1111.jpeg"
				style="width: 150px;height: 150px; padding-top: 1vh;"
			></image>
		</view>
		<!-- 内容四 -->
		<view class="album__content">
			<u--text
					text="酶解鱼蛋白 鱼蛋白冲施肥 叶面肥 鱼肥原浆 "
					type="primary"
					bold
					size="17"
			></u--text>
			<u--text
					margin="0 0 8px 0"
					text="		1：改良土壤团粒结构，疏松土壤。 
								2：改善根部周围微环境。 
								3：促进根部生长。 "
			></u--text>
			<image
				src="/static/images/1111.jpeg"
				style="width: 150px;height: 150px; padding-top: 1vh;"
			></image>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				list1: [{
					name: '节肥增效',
				}, {
					name: '虫害防控',
				}, {
					name: '农机装备'
				}, {
					name: '种子树苗'
				}, ],
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
.album__content{
	margin-top: 2vh;
	border-bottom: 1px solid #979797;
	
}
.u-page{
	background-color: white;
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
		 margin-left: 10px;
		 flex: 1;
	 }
}
image{
	margin-bottom: 2vh;
}
::v-deep .u-tabs__wrapper__nav__item__text{
	font-size: 19px !important;
}
</style>
