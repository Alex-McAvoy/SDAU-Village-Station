<template>
	<view>
		<view>
			<u-loading-page :loading="loading"></u-loading-page>
		</view>
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
		addOfflineTrainingLikes,
		subOfflineTrainingLikes,
		addOfflineTrainingCollect,
		subOfflineTrainingCollect,
	} from "@/api/technology/offline_training/index.js"
	import {
		getOfflineTrainingDetail,
	} from "@/api/technology/index.js";
	import {
		getCollect,
		addCollect,
		delCollect
	} from '@/api/mine/collect/index.js';
	import {
		getLikes,
		addLikes,
		delLikes
	} from '@/api/mine/likes/index.js'
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
				userInfo: { // 用户信息
					userId: '',
					deptId: ''
				},
				detailId:0,
				likesStatus: 0,
				collectStatus: 0
			}
		},
		created() {
			this.getList();
			this.loading = false
			this.userInfo.userId = this.$store.state.user.userId
			this.userInfo.deptId = this.$store.state.user.deptId
			this.detailId= getApp().globalData.item.id
				Promise.all([
					getOfflineTrainingDetail(this.detailId),
					getLikes(this.userInfo.userId, "offline_training", this.detailId),
					getCollect(this.userInfo.userId, "offline_training", this.detailId),
				]).then(response => {
					this.item = response[0].data;
					this.reading = (response[0].data.reading + 1).toString()
					this.likes = response[0].data.likes.toString()
					this.collect = response[0].data.collect.toString()
					
					if(response[1].data != null) {
						this.likes_status = 1
						this.thumbup = '/static/images/tabbar/likes.png'
					}
					if(response[2].data != null) {
						this.collect_status = 1
						this.star = '/static/images/tabbar/collect.png'
					}
					this.loading = false;
				})
			
		},
		methods: {
			//获取信息
			getList() {
				this.loading = true;
				var id = getApp().globalData.item.id
				getOfflineTrainingDetail(id).then(response => {
					this.item = response.data;
					this.reading = (response.data.reading + 1).toString()
					this.likes = response.data.likes.toString()
					this.collect = response.data.collect.toString()
				});
				this.loading = false;
			},
			clickLikes() {
				if (this.likesStatus == 0) { // 点赞
					this.thumbup = '/static/images/tabbar/likes.png'
					this.likes = (parseInt(this.likes) + 1).toString()
					this.likesStatus = 1
					Promise.all([
						addOfflineTrainingLikes(this.item),
						addLikes({
							"userId":this.userInfo.userId,
							"tableName": "offline_training",
							"articleId": this.detailId
						})
					]).then(response => {
					})
				} else { // 取消点赞
					this.thumbup = '/static/images/tabbar/unlikes.png'
					this.likes = (parseInt(this.likes) - 1).toString()
					this.likesStatus = 0
					Promise.all([
						subOfflineTrainingLikes(this.item),
						delLikes(this.userInfo.userId,"offline_training",this.detailId)
					]).then(response => {
					})
				}
			},
			clickCollect() {
				if (this.collectStatus == 0) { // 收藏
					this.star = '/static/images/tabbar/collect.png'
					this.collect = (parseInt(this.collect) + 1).toString()
					this.collectStatus = 1
					Promise.all([
						addOfflineTrainingCollect(this.item),
						addCollect({
							"userId":this.userInfo.userId,
							"tableName": "offline_training",
							"articleId": this.detailId
						})
					]).then(response => {})
				} else { // 取消收藏
					this.star = '/static/images/tabbar/uncollect.png'
					this.collect = (parseInt(this.collect) - 1).toString()
					this.collectStatus = 0
					Promise.all([
						subOfflineTrainingCollect(this.item),
						delCollect(this.userInfo.userId,"offline_training",this.detailId)
					]).then(response => {})
				}
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