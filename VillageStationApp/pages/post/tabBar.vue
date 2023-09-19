<template>
	<view>
		<view>
				<u-tabbar v-model="current" :list="list" :mid-button="true" @change="ChangBar" ></u-tabbar>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				list: [{
					"pagePath": "pages/home/home",
					iconPath: "home",
					selectedIconPath: "home-fill",
					text: '首页',
					// count: 2,
					// isDot: true,
					customIcon: false,
					},
					{
					"pagePath": "pages/Projection/Projection",
					iconPath: "photo",
					selectedIconPath: "photo-fill",
					text: '放映厅',
					customIcon: false,
					},
					{
					"pagePath": "pages/release/release",
					iconPath: "https://cdn.uviewui.com/uview/common/min_button.png",
					selectedIconPath: "https://cdn.uviewui.com/uview/common/min_button_select.png",
					text: '发布',
					midButton: true,
					customIcon: false,
					},
					{
					"pagePath": "pages/live/live",
					iconPath: "play-right",
					selectedIconPath: "play-right-fill",
					text: '直播',
					customIcon: false,
					},
					{
					"pagePath": "pages/user/user",
					"iconPath": "account",
					"selectedIconPath": "account-fill",
					"text": '我的',
					// "count": 23,
					"isDot": false,
					"customIcon": false,
					},
					],
					current: 0
			}
		},
		methods: {
			ChangBar(e) {
		                  uni.switchTab({
					url: '/' + this.list[e].pagePath
						})
		                    }
		        }

	}
</script>

<style>

</style>
