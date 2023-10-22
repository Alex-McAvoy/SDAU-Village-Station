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
		<view class="content_container" style="font-size: 14px;color:#b0b0b0;margin-top: -60px;" >
			<u-parse :content="item.content"></u-parse>
		</view>
	</view>
</template>

<script>
	import {
		addOnlineTrainingLikes,
		subOnlineTrainingLikes,
		addOnlineTrainingCollect,
		subOnlineTrainingCollect,
	} from "@/api/technology/online_training/index.js"
	
	import {
		getOnlineTrainingDetail,
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
				collectStatus: 0,
				video: [{//视频展示
					url: '',
					poster: ''
				}],
				item: {//视频内容
					content: '',
					createTime: '',
					title: '',
					vedio: ''
				},viewList:[
					
				],favorite_number:23,
				commentValue:'',
			}
		},
		created() {
			this.getList();
			this.favorite_number = Math.floor(Math.random()*100); 
			this.loading = false
			this.userInfo.userId = this.$store.state.user.userId
			this.userInfo.deptId = this.$store.state.user.deptId
			this.detailId= getApp().globalData.item.id
				Promise.all([
					getOnlineTrainingDetail(this.detailId),
					getLikes(this.userInfo.userId, "online_training", this.detailId),
					getCollect(this.userInfo.userId, "online_training", this.detailId),
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
				getOnlineTrainingDetail(id).then(response => {
					this.item = response.data;
					this.reading = (response.data.reading + 1).toString()
					this.likes = response.data.likes.toString()
					this.collect = response.data.collect.toString()
					this.video[0].url = this.item.video;
					this.video[0].poster = this.item.remark;
					// console.log(this.item);
					this.loading = false
				});
			},
			
			addFavorite(){
				this.favorite_number++;
			},
			addComment(){ 
				this.viewList.push(this.commentValue)
				this.commentValue=''
			},	
			clickLikes() {
				if (this.likesStatus == 0) { // 点赞
					this.thumbup = '/static/images/tabbar/likes.png'
					this.likes = (parseInt(this.likes) + 1).toString()
					this.likesStatus = 1
					Promise.all([
						addOnlineTrainingLikes(this.item),
						addLikes({
							"userId":this.userInfo.userId,
							"tableName": "online_training",
							"articleId": this.detailId
						})
					]).then(response => {
					})
				} else { // 取消点赞
					this.thumbup = '/static/images/tabbar/unlikes.png'
					this.likes = (parseInt(this.likes) - 1).toString()
					this.likesStatus = 0
					Promise.all([
						subOnlineTrainingLikes(this.item),
						delLikes(this.userInfo.userId,"online_training",this.detailId)
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
						addOnlineTrainingCollect(this.item),
						addCollect({
							"userId":this.userInfo.userId,
							"tableName": "online_training",
							"articleId": this.detailId
						})
					]).then(response => {})
				} else { // 取消收藏
					this.star = '/static/images/tabbar/uncollect.png'
					this.collect = (parseInt(this.collect) - 1).toString()
					this.collectStatus = 0
					Promise.all([
						subOnlineTrainingCollect(this.item),
						delCollect(this.userInfo.userId,"online_training",this.detailId)
					]).then(response => {})
				}
			}
		},

	}
</script>

<style>
	.body{
		background-color: #fff;min-height: 100vh;
	}
	.backLine{
		position: absolute;z-index:100;margin:10px auto auto 10px
	}
	.flex-row{
		display: flex;
		flex-direction: row;
		justify-content: center;
	}
	.content_container{
		margin:15px 10px;
	} 
	.number_text{
		background: #f1f9f9;
		height: 35px;
		width: 100px;
	}
	.number_button{
		width: 150px;height:35px;
	} 
 
</style>