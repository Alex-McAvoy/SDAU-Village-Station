<template>
	<view>
		<view style="  border-radius: 5px;  background-color: white; height: 100vh; margin: 15px;">
			<view>
				<div class="sub_title">{{item.title}}</div>
			</view>
			<view>
				<div class="sub_note">
					{{item.createTime}}
				</div>
			</view>
			<image :src="item.remark" style="width: 350px;height: 180px; padding-left: 5vh; padding-right: 5vh; ">
			</image>
			<view>
				<div class="sub_content">
					{{item.content}}
				</div>
			</view>
			<u-tabbar :fixed="true" :placeholder="true" :safeAreaInsetBottom="true">
				<u-tabbar-item :text="reading" icon="eye"></u-tabbar-item>
				<u-tabbar-item text="点赞" icon="thumb-up"></u-tabbar-item>
				<u-tabbar-item text="收藏" icon="star"></u-tabbar-item>
			</u-tabbar>
		</view>
	</view>
</template>

<script>
	import {
		getTechDetail
	} from "@/api/station/tech.js"
	export default {
		data() {
			return {
				loading: false,
				item: '',
				reading: ''
			}
		},
		created() {
			this.getList();
		},
		methods: {
			getList() {
				this.loading = true;
				var id = getApp().globalData.item.articleId
				getTechDetail(id).then(response => {
					this.item = response.data;
					this.reading = response.data.reading.toString()
					this.loading = false;
				});
				
				this.loading = false;
			},
		}
	}
</script>

<style>
	@import url("../../../static/css/text.css");
</style>