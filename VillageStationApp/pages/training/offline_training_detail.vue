<template>
	<view>
		<view class="tab_nav" style="border-radius: 10px; background-color: white;  margin:8px 15px; height: 100vh;">
			<view class="title">{{ item.title }}</view>
			<u-text color="#909090" align="center" text="管理员 | 2023-10-06 16:57" bold size="13"></u-text>
			<view class="news">
				<view class="new_img">
					<image :src="item.remark" alt="" style="width:100%;height: 200px;overflow: hidden">
				</view>
				<view class="new_text"><u-parse :content="item.content"></u-parse></view>
			</view>
			<u-tabbar :fixed="true" :placeholder="true" :safeAreaInsetBottom="true">
				<u-tabbar-item :text="reading" :icon="eye"></u-tabbar-item>
				<u-tabbar-item :text="likes" :icon="thumbup" @click="clickLikes"></u-tabbar-item>
				<u-tabbar-item :text="collect" :icon="star" @click="clickCollect"></u-tabbar-item>
			</u-tabbar>
		</view>
	</view>
</template>

<script>
	import {
		getOfflineTraining,
		addOfflineTrainingLikes,
		subOfflineTrainingLikes,
		addOfflineTrainingCollect,
		subOfflineTrainingCollect,
	} from "@/api/system/offline_training.js"
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
				getOfflineTraining(id).then(response => {
					this.item = response.data;
					this.reading = (response.data.reading + 1).toString()
					this.likes = response.data.likes.toString()
					this.collect = response.data.collect.toString()
				});
				this.loading = false;
			},
			clickLikes() {
				if (this.likesClickCount % 2 == 0) { // 点赞
					this.thumbup = '/static/images/tabbar/likes.png'
					this.likes = (parseInt(this.likes) + 1).toString()
					addOfflineTrainingLikes(this.item).then(response => {})
				} else { // 取消点赞
					this.thumbup = '/static/images/tabbar/unlikes.png'
					this.likes = (parseInt(this.likes) - 1).toString()
					subOfflineTrainingLikes(this.item).then(response => {})
				}
				this.likesClickCount += 1
			},
			clickCollect() {
				if (this.collectClickCount % 2 == 0) { // 收藏
					this.star = '/static/images/tabbar/collect.png'
					this.collect = (parseInt(this.collect) + 1).toString()
					addOfflineTrainingCollect(this.item).then(response => {})
				} else { // 取消收藏
					this.star = '/static/images/tabbar/uncollect.png'
					this.collect = (parseInt(this.collect) - 1).toString()
					subOfflineTrainingCollect(this.item).then(response => {})
				}
				this.collectClickCount += 1
			}
		}
	}
</script>

<style>
	.title {
		font-size: 21px;
		margin: 15px;
		text-align: center;
	}

	.new_img {
		display: flex;
		justify-content: center;
		margin: 15px;
	}

	.new_text {
		margin: 20px 15px 15px 15px;
		padding-bottom: 5px;
	}
</style>      