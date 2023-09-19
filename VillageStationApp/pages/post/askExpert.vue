<template>
	<view>
		<view class="container">
			<view class="module">
				<u-icon size="40" color="#25a52d" name="chat-fill"></u-icon>
				<u-text margin="10px 0px 10px 0" text="问专家" bold size="30"></u-text>
			</view>
		</view>
		<!-- 1 -->
		<div class="content" @click="goToDetailPage1">
			<view style="height: 20vh; width: 100%;  border-radius: 10px; background-color: white;  margin-top: 1vh;">
				<view class="u-page">
					<view class="u-demo-block">
						<view class="album">
							<view class="album__avatar">
								<image src="/static/whg.png"
									style="margin:10px; width: 100px; height: 120px;border-radius: 8px; overflow: hidden;">
								</image>
							</view>
							<view class="album__content">
								<u-text margin="20px 0 10px 0" text="王洪刚" bold size="25"></u-text>
								<u-text margin="20px 0 8px 0" text="曾任山东农业大学农学系系主任、农学院院长，现为农学院教授委员会主任。"
									color="rgb(169,169,169)" bold size="18"></u-text>
							</view>
						</view>
					</view>
				</view>
			</view>
		</div>
		<!-- 2 -->
		<div class="content" @click="goToDetailPage2">
			<view style="height: 20vh; width: 100%;  border-radius: 10px; background-color: white;  margin-top: 2vh;">
				<view class="u-page">
					<view class="u-demo-block">
						<view class="album">
							<view class="album__avatar">
								<image src="/static/shr.png"
									style="margin:10px; width: 100px; height: 120px;border-radius: 8px; overflow: hidden;">
								</image>
							</view>
							<view class="album__content">
								<u-text margin="20px 0 10px 0" text="束怀瑞" bold size="25"></u-text>
								<u-text margin="20px 0 8px 0" text="中国工程院院士，博士生导师，中国园艺学会常务理事" color="rgb(169,169,169)"
									bold size="18"></u-text>
							</view>
						</view>
					</view>
				</view>
			</view>
		</div>
		<!-- 3 -->
		<div class="content" @click="goToDetailPage3">
			<view style="height: 20vh; width: 100%;  border-radius: 10px; background-color: white;  margin-top: 2vh;">
				<view class="u-page">
					<view class="u-demo-block">
						<view class="album">
							<view class="album__avatar">
								<image src="/static/wy.png"
									style="margin:10px; width: 100px; height: 120px;border-radius: 8px; overflow: hidden;">
								</image>
							</view>
							<view class="album__content">
								<u-text margin="20px 0 10px 0" text="王勇" bold size="25"></u-text>
								<u-text margin="20px 0 8px 0" text="现任生命科学学院院长,主要从事植物氮素分子生物学和一氧化氮产生机理的研究."
									color="rgb(169,169,169)" bold size="18"></u-text>
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
	export default {
		data() {
			return {

			}
		},
		methods: {
			goToDetailPage1() {
				this.$router.push('/pages/post/whg');
			},
			goToDetailPage2() {
				this.$router.push('/pages/post/shr');
			},
			goToDetailPage3() {
				this.$router.push('/pages/post/wy');
			}
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
		background-color: #cfeea3;
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