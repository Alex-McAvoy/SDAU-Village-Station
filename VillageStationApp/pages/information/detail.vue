<template>
	<view style="border-radius: 10px; background-color: white; margin:8px 15px;">

		<view>
			<u-loading-page :loading="loading"></u-loading-page>
		</view>

		<view class="title">{{item.title}}</view>
		<view style="color: #909090;text-align: center; size: 13;bold" bold>{{item.createBy}} | {{item.createTime}}
		</view>
		<view class="news">
			<view class="new_img">
				<image :src="item.remark" style="width:100%;height: 200px;overflow: hidden">
			</view>
			<view class="sub_content" style="text-indent: 2em; line-height: 1.8; margin: 20px; margin-top: -10px;"><u-parse :content='item.content'></u-parse></view>
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
		getCheckNewsDetails,
		addNewsLikes,
		subNewsLikes,
		addNewsCollect,
		subNewsCollect,
	} from "@/api/information/index.js"
	import {
		getCollect,
		addCollect,
		delCollect
	} from '@/api/mine/collect/index.js'
	
	import {
		getLikes,
		addLikes,
		delLikes
	} from '@/api/mine/likes/index.js'
	export default {
		onLoad: function() {},
		data() {
			return {
				detailId: '',
				loading: false,
				item: [],
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
				likeStatus: 0,
				collectStatus: 0
			}
		},
		created() {
			this.loading = true
			this.userInfo.userId = this.$store.state.user.userId
			this.userInfo.deptId = this.$store.state.user.deptId
			this.detailId = getApp().globalData.item.id
			Promise.all([
				getCheckNewsDetails(this.detailId),
				getLikes(this.userInfo.userId, "news", this.detailId),
				getCollect(this.userInfo.userId, "news", this.detailId),
			]).then(response => {
				this.item = response[0].data;
				this.reading = (response[0].data.reading + 1).toString()
				this.likes = response[0].data.likes.toString()
				this.collect = response[0].data.collect.toString()
				if(response[1].data != null) {
					this.likeStatus = 1
					this.thumbup = '/static/images/tabbar/likes.png'
				}
				if(response[2].data != null) {
					this.collectStatus = 1
					this.star = '/static/images/tabbar/collect.png'
				}
				this.loading = false;
			})
		},
		methods: {
			clickLikes() {
				if (this.likeStatus == 0) { // 点赞
					// 深复制
					let temp = JSON.parse(JSON.stringify(this.item))
					temp.content = temp.content.replace(/</g, "&lt;");
					temp.content = temp.content.replace(/>/g, "&gt;");
					
					Promise.all([
						addNewsLikes(temp),
						addLikes({
							"userId":this.userInfo.userId,
							"tableName": "news",
							"articleId": this.detailId
						})
					]).then(response => {
						this.thumbup = '/static/images/tabbar/likes.png'
						this.likes = (parseInt(this.likes) + 1).toString()
						this.likeStatus = 1
					})
				} else { // 取消点赞
					// 深复制
					let temp = JSON.parse(JSON.stringify(this.item))
					temp.content = temp.content.replace(/</g, "&lt;");
					temp.content = temp.content.replace(/>/g, "&gt;");
					
					Promise.all([
						subNewsLikes(temp),
						delLikes(this.userInfo.userId,"news",this.detailId)
					]).then(response => {
						this.thumbup = '/static/images/tabbar/unlikes.png'
						this.likes = (parseInt(this.likes) - 1).toString()
						this.likeStatus = 0
					})
				}
			},
			clickCollect() {
				if (this.collectStatus == 0) { // 收藏
					// 深复制
					let temp = JSON.parse(JSON.stringify(this.item))
					temp.content = temp.content.replace(/</g, "&lt;");
					temp.content = temp.content.replace(/>/g, "&gt;");
					
					Promise.all([
						addNewsCollect(temp),
						addCollect({
							"userId":this.userInfo.userId,
							"tableName": "news",
							"articleId": this.detailId
						})
					]).then(response => {
						this.star = '/static/images/tabbar/collect.png'
						this.collect = (parseInt(this.collect) + 1).toString()
						this.collectStatus = 1
					})
				} else { // 取消收藏
					// 深复制
					let temp = JSON.parse(JSON.stringify(this.item))
					temp.content = temp.content.replace(/</g, "&lt;");
					temp.content = temp.content.replace(/>/g, "&gt;");
					
					Promise.all([
						subNewsCollect(temp),
						delCollect(this.userInfo.userId,"news",this.detailId)
					]).then(response => {
						this.star = '/static/images/tabbar/uncollect.png'
						this.collect = (parseInt(this.collect) - 1).toString()
						this.collectStatus = 0
					})
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
</style>