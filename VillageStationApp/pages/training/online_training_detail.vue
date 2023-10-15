<template>
	<view class="body">
		<view>
			<u-loading-page :loading="loading"></u-loading-page>
		</view>
		<view>
			<u-swiper :list="video" keyName="url" :autoplay="false" height="30vh"></u-swiper>
		</view>
		<!-- 标题 -->
		<view class="content_container">
			<u--text :text="item.title" size="21" :bold="true"></u--text>
		</view>
		<!-- 时间、类别 -->
		<view class="content_container">
			<u--text :text="item.createTime" size="10"></u--text>
		</view>

		<u-tabbar :fixed="true" :placeholder="true" :safeAreaInsetBottom="true">
			<u-tabbar-item :text="reading" :icon="eye"></u-tabbar-item>
			<u-tabbar-item :text="likes" :icon="thumbup" @click="clickLikes"></u-tabbar-item>
			<u-tabbar-item :text="collect" :icon="star" @click="clickCollect"></u-tabbar-item>
		</u-tabbar>

		<!-- 介绍 -->
		<view class="content_container" style="font-size: 14px;color:#b0b0b0">
			<u-parse :content="item.content"></u-parse>
		</view>
	</view>
</template>

<script>
	import {
		getOnlineTraining,
		addOnlineTrainingLikes,
		subOnlineTrainingLikes,
		addOnlineTrainingCollect,
		subOnlineTrainingCollect,
	} from "@/api/system/online_training.js"

	import {
		addCollect,
		delCollectMultiId
	} from '@/api/system/collect.js'
	import {
		addLikes,
		delLikesMultiId
	} from '@/api/system/likes.js'

	export default {
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
				collectClickCount: 0,
				loading: false,

				video: [{ //视频展示
					url: 'https://cdn.uviewui.com/uview/resources/video.mp4',
					title: '昨夜星辰昨夜风，画楼西畔桂堂东',
					poster: 'https://cdn.uviewui.com/uview/swiper/swiper1.png'
				}],
				item: { //视频内容
					content: "内容",
					createTime: '2023-01-12',
					title: "标题",
				},
				viewList: [

				],
				favorite_number: 23,
				commentValue: '',
				userInfo: { // 用户信息
					userId: '',
					deptId: ''
				},
				status: 0, //0非收藏跳转,1收藏跳转,2 点赞跳转
			}
		},
		created() {
			this.getList();
			this.userInfo.userId = this.$store.state.user.userId
			this.userInfo.deptId = this.$store.state.user.deptId
		},
		onLoad(options) {
			this.status = options.status;
			this.newsId = options.newsId; //收藏对应的主键
			if (this.status == 1) { //从收藏跳转
				this.collectClickCount = 1;
				this.star = '/static/images/tabbar/collect.png'
			} else if (this.status == 2) { //从点赞跳转
				this.likesClickCount = 1;
				this.thumbup = '/static/images/tabbar/likes.png'
			}
		},
		methods: {
			getList() {
				this.loading = true;
				var id = getApp().globalData.item.newsId
				getOnlineTraining(id).then(response => {
					this.item = response.data;
					this.reading = (response.data.reading + 1).toString()
					this.likes = response.data.likes.toString()
					this.collect = response.data.collect.toString()

					this.change(this.item.video, this.item.remark)
					this.loading = false
				});
			},
			change(video, picture) {
				this.video[0].url = video;
				this.video[0].poster = picture;
			},

			clickLikes() {
				if (this.likesClickCount % 2 == 0) { // 点赞
					this.thumbup = '/static/images/tabbar/likes.png'
					this.likes = (parseInt(this.likes) + 1).toString()
					addOnlineTrainingLikes(this.item).then(response => {})
					this.addLikes();
				} else { // 取消点赞
					this.thumbup = '/static/images/tabbar/unlikes.png'
					this.likes = (parseInt(this.likes) - 1).toString()
					subOnlineTrainingLikes(this.item).then(response => {})
					this.delLikes();
				}
				this.likesClickCount += 1
			},
			clickCollect() {
				if (this.collectClickCount % 2 == 0) { // 收藏
					this.star = '/static/images/tabbar/collect.png'
					this.collect = (parseInt(this.collect) + 1).toString()
					addOnlineTrainingCollect(this.item).then(response => {})
					this.addCollectItem();
				} else { // 取消收藏
					this.star = '/static/images/tabbar/uncollect.png'
					this.collect = (parseInt(this.collect) - 1).toString()
					subOnlineTrainingCollect(this.item).then(response => {})
					this.delCollectItem();
				}
				this.collectClickCount += 1
			},
			addLikes() { //新增喜欢
				var data = {};
				data.userId = this.userInfo.userId;
				data.tableName = "online_training_detail"; //需要后端对应，找到真实的
				data.articleId = this.item.newsId;
				addLikes(data).then(response => {
					
				});
			},
			delLikes() { //删除喜欢
				var userid = this.userInfo.userId;
				var tablename = "online_training_detail";
				var articleid = this.item.newsId;
				delLikesMultiId(userid, tablename, articleid).then(response => {
					
				})
			},
			addCollectItem() { //新增收藏
				var data = {};
				data.userId = this.userInfo.userId;
				data.tableName = "online_training_detail"; //需要后端对应，找到真实的
				data.articleId = this.item.newsId;
				addCollect(data).then(response => {
				});
			},
			delCollectItem() { //删除收藏 
				var userid = this.userInfo.userId;
				var tablename = "online_training_detail";
				var articleid = this.item.newsId;;
				delCollectMultiId(userid, tablename, articleid).then(response => {
					
				})
			},
		},

	}
</script>

<style>
	.body {
		background-color: #fff;
		min-height: 100vh;
	}

	.backLine {
		position: absolute;
		z-index: 100;
		margin: 10px auto auto 10px
	}

	.flex-row {
		display: flex;
		flex-direction: row;
		justify-content: center;
	}

	.content_container {
		margin: 15px 10px;
	}

	.number_text {
		background: #f1f9f9;
		height: 35px;
		width: 100px;
	}

	.number_button {
		width: 150px;
		height: 35px;
	}
</style>