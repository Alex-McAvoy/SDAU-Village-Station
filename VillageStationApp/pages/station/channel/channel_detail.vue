<template>
	<view style="border-radius: 10px; background-color: white;  margin:8px 15px; height: 100vh;">
		<view class="sub_title">{{ item.title }}</view>
		<view class="sub_note">用户 | {{ item.createTime }} </view>
		<view class="news">
			<view class="new_img">
				<image :src="item.remark" alt="" style="width:100%;height: 200px;overflow: hidden">
			</view>
			<view class="sub_content"><u-parse :content="item.content"></u-parse></view>
		</view>
		<u-tabbar :fixed="true" :placeholder="true" :safeAreaInsetBottom="true">
			<u-tabbar-item :text="reading" :icon="eye"></u-tabbar-item>
			<u-tabbar-item :text="likes" :icon="thumbup" @click="clickLikes"></u-tabbar-item>
			<u-tabbar-item :text="collect" :icon="star" @click="clickCollect"></u-tabbar-item>
		</u-tabbar>
	</view>
</template>

<script>
	import {
		getChannel,
		addChannelLikes,
		subChannelLikes,
		subChannelCollect,
		addChannelCollect,
	} from "@/api/station/channel.js"
	export default {
		onLoad: function() {},
		data() {
			return {
				loading: false,
				item: '',
				reading: '',
				likes: '',
				collect: '',
				eye: '/static/images/tabbar/eye.png',
				thumbup: '/static/images/tabbar/unlikes.png',
				star: '/static/images/tabbar/uncollect.png',
				likesClickCount: 0,
				collectClickCount: 0
			}
		},
		created() {
			this.getList();
		},
		methods: {
			getList() {
				this.loading = true;
				var id = getApp().globalData.item.newsId
				getChannel(id).then(response => {
					this.item = response.data;
					this.reading = (response.data.reading + 1).toString()
					this.likes = response.data.likes.toString()
					this.collect = response.data.collect.toString()
					this.loading = false;
				});
				this.loading = false;
			},
			clickLikes() {
				if (this.likesClickCount % 2 == 0) { // 点赞
					this.thumbup = '/static/images/tabbar/likes.png'
					this.likes = (parseInt(this.likes) + 1).toString()
					addChannelLikes(this.item).then(response => {})
				} else { // 取消点赞
					this.thumbup = '/static/images/tabbar/unlikes.png'
					this.likes = (parseInt(this.likes) - 1).toString()
					subChannelLikes(this.item).then(response => {})
				}
				this.likesClickCount += 1
			},
			clickCollect() {
				if (this.collectClickCount % 2 == 0) { // 收藏
					this.star = '/static/images/tabbar/collect.png'
					this.collect = (parseInt(this.collect) + 1).toString()
					addChannelCollect(this.item).then(response => {})
				} else { // 取消收藏
					this.star = '/static/images/tabbar/uncollect.png'
					this.collect = (parseInt(this.collect) - 1).toString()
					subChannelCollect(this.item).then(response => {})
				}
				this.collectClickCount += 1
			}
		}
	}
</script>

<style>
	@import url("../../../static/css/text.css");

	.new_img {
		display: flex;
		justify-content: center;
		margin: 15px;
	}
</style>