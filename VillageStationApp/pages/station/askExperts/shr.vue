<template>
	<view class="container">
		<u-text margin="20px 0 10px 0" text="束怀瑞--个人简介" bold size="25"></u-text>
		<view class="album">
		<view class="album__avatar">
			<image src="/static/images/station/askExperts/shr.png"
				style="margin:10px; width: 100px; height: 120px;border-radius: 8px; overflow: hidden;">
			</image>
		</view>
		</view>
		<view style="width: 100%;  border-radius: 10px;  margin-top: 2vh;">
			<u-text style="font-weight: 5px;" margin="20px 10px 10px 10px" text="1.束怀瑞，1929年9月26日出生于山东淄博，果树学专家，中国工程院院士，山东农业大学教授、博士生导师。
					2.1950年束怀瑞从山东农学院毕业后留校任教；
					3.1953年加入中国共产党；
					4.1956年担任山东农学院副系主任（任期至1987年）；
					5.1957年前往北京农业大学苏联果树专家研究班学习；
					6.1984年担任山东农业大学教务处长（至1990年）；
					7.1998年担任山东省苹果工程技术研究中心主任；
					8.2001年当选为中国工程院院士；
					9.2008年担任国家苹果工程技术研究中心主任；
					10.2009年获得何梁何利基金科学与技术进步奖。
					11.束怀瑞长期从事教学、科研工作，对果树根系生物学、果树碳、氮营养有较深入研究。" bold size="18" color="rgb(125, 125, 125)"></u-text>
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