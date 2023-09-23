<template>
	<view>
		<view class="content"
			style="height:100px;background: linear-gradient(#2ed573,#2ed573,#2ed573,#2ed573,#7bed9f,#f1f2f6);">
			<!-- 标题 -->
			<view class="contain">
				<u--text style="margin-top: 20px; margin-left:1vh;" size="20" color="#fff" text="推优品"></u--text>
				<!-- 搜索框 -->
				<view class="search-bar">
					<u-search style="margin-top: 20px;margin-left:1vh;width: 180px;"shape="round" height="40" placeholder="" :clearabled="true"
						:show-action="false"></u-search>
				</view>
				<u--text style="margin-top: 20px; margin-left: 2vh;" size="15" color="#fff" text="天气"></u--text>
			</view>
		</view>
		<!-- 轮播图 -->
		<view style="margin: 5px;border-radius: 5px; overflow: hidden;">
			<u-swiper :list="list" height="180px"></u-swiper>
		</view>
		<!-- 农产品展示 -->
		<view class="module">
			<image src="/static/images/station/station/nl.png"
				style="margin:8px 8px 0px 8px; width: 20px; height: 20px;">
			</image>
			<u-text style="font-weight: 20px;" margin="8px 0px 0px 0px" text="热销农产" bold size="20"></u-text>
		</view>
		<!-- 鲁花 -->
		<view style=" border-radius: 10px; background-color: white;  margin:15px">
			<view class="u-page">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image src="/static/images/product/lh.png"
								style="margin-top: 10px; width: 70px; height: 80px;border-radius: 8px; overflow: hidden;">
							</image>
						</view>
						<view class="album__content">
							<div>
								<span style="margin:20px 0 10px 0; font-size:20px;font-weight: 500px;">
									鲁花（山东春兴粮油集团有限公司）</span>
							</div>
							<div>
								<span
									style="margin:20px 0 8px 0; font-size:15px;font-weight: 300px; color:rgb(169,169,169)">
									鲁花是中国知名的食用油品牌，其产品包括花生油、豆油、调和油等。</span>
							</div>
						</view>
					</view>
				</view>
			</view>
		</view>
		<!-- 泰山 -->
		<view style="border-radius: 10px; background-color: white;  margin:15px">
			<view class="u-page">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image src="/static/images/product/ts.png"
								style="margin-top: 10px; width: 70px; height: 80px;border-radius: 8px; overflow: hidden;">
							</image>
						</view>
						<view class="album__content">
							<div>
								<span style="margin:20px 0 10px 0; font-size:20px;font-weight: 500px;">
									泰山（泰山集团）</span>
							</div>
							<br/>
							<div>
								<span
									style="margin:30px 0 8px 0; font-size:15px;font-weight: 300px; color:rgb(169,169,169)">
									泰山是中国著名的茶叶品牌，主要生产各类优质茶叶，如绿茶、红茶、乌龙茶等。</span>
							</div>
						</view>
					</view>
				</view>
			</view>
		</view>
		<!-- 蓝湾 -->
		<view style="border-radius: 10px; background-color: white;  margin:15px">
			<view class="u-page">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image src="/static/logo.png"
								style="margin-top: 10px; width: 70px; height: 80px;border-radius: 8px; overflow: hidden;">
							</image>
						</view>
						<view class="album__content">
							<div>
								<span style="margin:20px 0 10px 0; font-size:20px;font-weight: 500px;">
									蓝湾（山东蓝湾集团）</span>
							</div>
							<br/>
							<div>
								<span
									style="margin:30px 0 8px 0; font-size:15px;font-weight: 300px; color:rgb(169,169,169)">
									蓝湾是中国知名的水果品牌，其产品主要包括苹果、樱桃、葡萄等。</span>
							</div>
						</view>
					</view>
				</view>
			</view>
		</view>
		<!-- 优品动态 -->
		<view class="module">
			<image src="/static/images/station/station/nl.png"
				style="margin:8px 8px 0px 8px; width: 20px; height: 20px;">
			</image>
			<u-text style="font-weight: 20px;" margin="6px 0px 0px 0px" text="优品动态" bold size="20"></u-text>
		</view>
		<!-- 泰山茶 -->
		<view style="border-radius: 10px; background-color: white;  margin:15px">
			<view class="u-page">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image src="/static/images/product/cha.png"
								style="margin-top: 10px; width: 70px; height: 80px;border-radius: 8px; overflow: hidden;">
							</image>
						</view>
						<view class="album__content">
							<div>
								<span style="margin:30px 0 10px 0; font-size:20px;font-weight: 500px;">
									泰山茶</span>
							</div>
							<br/>
							<div>
								<span
									style="margin:30px 0 8px 0; font-size:15px;font-weight: 300px; color:rgb(169,169,169)">
									到2018年泰安市茶园面积4.5万亩，产量1770吨，产值达11亿，位列山东省的第三位。</span>
							</div>
						</view>
					</view>
				</view>
			</view>
		</view>
		<!-- 荣成海带 -->
		<view style="border-radius: 10px; background-color: white;  margin:15px">
			<view class="u-page">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image src="/static/images/product/hd.png"
								style="margin-top: 10px; width: 70px; height: 80px;border-radius: 8px; overflow: hidden;">
							</image>
						</view>
						<view class="album__content">
							<div>
								<span style="margin:30px 0 10px 0; font-size:20px;font-weight: 500px;">
									荣成海带</span>
							</div>
							<br/>
							<div>
								<span
									style="margin:30px 0 8px 0; font-size:15px;font-weight: 300px; color:rgb(169,169,169)">
									山东省威海市特产，中国国家地理标志产品。</span>
							</div>
						</view>
					</view>
				</view>
			</view>
		</view>
		<!-- 新城细毛山药 -->
		<view style="border-radius: 10px; background-color: white;  margin:15px">
			<view class="u-page">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image src="/static/images/product/sy.png"
								style="margin-top: 15px; width: 80px; height: 90px;border-radius: 8px; overflow: hidden;">
							</image>
						</view>
						<view class="album__content">
							<div>
								<span style="margin:30px 0 10px 0; font-size:20px;font-weight: 500px;">
									新城细毛山药</span>
							</div>
							<br/>
							<div>
								<span
									style="margin:30px 0 8px 0; font-size:15px;font-weight: 300px; color:rgb(169,169,169)">
									新城细毛山药栽培历史悠久，早在明清年间就享有盛誉。因其特殊的水土生长条件，成为山药家族中的上乘之品，并成为宫廷贡品。</span>
							</div>
						</view>
					</view>
				</view>
			</view>
		</view>
		<view style="border-radius: 10px; background-color: white;  margin:15px">
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				value1: 0,
				list: [
					'../../static/images/station/freeAsk/orange.jpg',
					'../../static/images/station/freeAsk/pitaya.jpg',
					'../../static/images/station/freeAsk/banana.png',
				],
			}
		},
		methods: {
			click1(e) {
				console.log('click1', e);
			},
			change5(name) {
				if (name === 1) return uni.$u.toast('请您先登录')
				else this.value5 = name
			},
		}
	}
</script>

<style lang="scss">
	.contain {
		display: flex;
		align-items: center;
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
			background-color:#fff;
			padding: 5px;
			border-radius: 3px;
		}

		&__content {
			margin-left: 10px;
			flex: 1;
		}
	}
</style>