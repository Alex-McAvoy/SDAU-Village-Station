<template>
	<view>
		<!-- 头部 -->
		<view
			style=" display: flex; align-items: center; margin: 5px; border-radius: 5px; overflow: hidden; background-color: white; justify-content: space-between;">
			<!-- 定位 -->
			<view style="margin-left: 1vh;">
				<u-icon name="home-fill" color="#3f8a45" size="20" label="泰安" labelSize="10px"></u-icon>
			</view>
			<!-- 搜索框 -->
			<view style="width: 80%;">
				<u-search placeholder="点我进行搜索" v-model="keyword"></u-search>
			</view>
		</view>
		<!-- 轮播图 -->
		<view style="margin: 5px;border-radius: 5px; overflow: hidden;">
			<u-swiper :list="list1"></u-swiper>
		</view>
		<!-- 主体内容一 -->
		<view style=" margin: 5px; border-radius: 5px;  background-color: white; margin-top: 10px; ">
			<view class="u-page">
				<view class="u-demo-block">
					<view class="u-demo-block__content">
						<view class="album">
							<view class="album__avatar">
								<image src="/static/images/icon.jpg" mode="" style="width: 32px;height: 32px; "></image>
							</view>
							<view class="album__content">
								<u--text text="苹果在树上，还没摘就面了，还能变脆吗？" type="primary" bold size="17"></u--text>
								<u--text margin="0 0 8px 0"
									text="提高果实硬度: 一，清园配方用康纯钙镁锌。 二，施基肥配方中用矿物晶。 三，套装前喷足三次美钙镁幼果补钙。"></u--text>
								<u-album :urls="urls1" keyName="src2" style="margin-bottom: 8px;"></u-album>
							</view>
						</view>
					</view>
				</view>
			</view>
		</view>
		<!-- 主体内容二 -->
		<view style=" margin: 5px; border-radius: 5px;  background-color: white; margin-top: 10px; ">
			<view class="u-page">
				<view class="u-demo-block">
					<view class="u-demo-block__content">
						<view class="album">
							<view class="album__avatar">
								<image src="/static/images/icon.jpg" mode="" style="width: 32px;height: 32px; "></image>
							</view>
							<view class="album__content">
								<u--text text="苹果在树上，还没摘就面了，还能变脆吗？" type="primary" bold size="17"></u--text>
								<u--text margin="0 0 8px 0"
									text="提高果实硬度: 一，清园配方用康纯钙镁锌。 二，施基肥配方中用矿物晶。 三，套装前喷足三次美钙镁幼果补钙。"></u--text>
								<u-album :urls="urls1" keyName="src2" style="margin-bottom: 8px;"></u-album>
							</view>
						</view>
					</view>
				</view>
			</view>
		</view>
		<!-- 主体内容三 -->
		<view style=" margin: 5px; border-radius: 5px;  background-color: white; margin-top: 10px; ">
			<view class="u-page">
				<view class="u-demo-block">
					<view class="u-demo-block__content">
						<view class="album">
							<view class="album__avatar">
								<image src="/static/images/icon.jpg" mode="" style="width: 32px;height: 32px; "></image>
							</view>
							<view class="album__content">
								<u--text text="苹果在树上，还没摘就面了，还能变脆吗？" type="primary" bold size="17"></u--text>
								<u--text margin="0 0 8px 0"
									text="提高果实硬度: 一，清园配方用康纯钙镁锌。 二，施基肥配方中用矿物晶。 三，套装前喷足三次美钙镁幼果补钙。"></u--text>
								<u-album :urls="urls1" keyName="src2" style="margin-bottom: 8px;"></u-album>
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
				keyword: '',
				list1: [
					'/static/images/orange.jpg',
					'/static/images/pitaya.jpg',
					'/static/images/banana.png',
				],
				albumWidth: 0,
				urls1: [{
					src2: '/static/images/apple.jpg',
				}],
			}
		},
		methods: {

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