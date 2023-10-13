<template>
	<view class="body">		
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
		
		<!-- 播放 点赞 -->
		<!-- <view class="flex-row content_container">
			<u-button class="number_button custom-style" text="播放量 20" :disabled="true"></u-button>
			<u-button @click="addFavorite" class="number_button custom-style" style="color:#c8c8c8"   :text="'点赞量 '+favorite_number" icon="thumb-up"></u-button>
		</view> -->
		<!-- 介绍 -->
		<view class="content_container" style="font-size: 14px;color:#b0b0b0">
			<u-parse :content="item.content"></u-parse>
		</view>
		
		<!-- 评论 -->
		<!-- <view class="content_container flex-row">
			<view class="" style="width: 6px;height:20px;background: #00ae67;"></view>
			<u--text text="评论" style="margin-left:5px;padding-left:10px"></u--text>
		</view> -->
		 <!-- 评论区 -->
		<!-- <view class="content_container">
			<view class="" v-show="viewList.length!=0" v-for="view in viewList">
				<u--text :text="'匿名用户:' + view " style="margin:5px auto 5px 5px;padding-bottom: 5px;border-bottom:1px solid #e5e5e5"></u--text>		
			</view>
			<view v-show="viewList.length==0">
				<u--text align="center" text="暂无评论" color="#d8d8d8"></u--text>
				<image src="@/static/images/training/comment.png" style="width:100%;max-width: 400px;height:300px;object-fit: cover;"></image>
				
			</view>
		</view> 
		<u-tabbar
			:fixed="true" 
			:placeholder="true"
			:safeAreaInsetBottom="false"
		>
			<u-input style="margin:10px 10px 10px 5px" placeholder="发表评论" v-model="commentValue"></u-input>
			<view style="display: flex;width: 150px;flex-direction: row;justify-content: center;">
				<u-icon @click="addComment" name="chat" size="28" style="margin:auto 10px auto 0px"></u-icon>
				<u-icon name="star" size="28" style="margin:auto 8px"></u-icon>
				<u-icon name="share" size="28" style="margin:auto 8px"></u-icon>
			</view>
		</u-tabbar> -->
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
	
	export default {
		data() {
			return {
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
				
				video: [{//视频展示
					url: 'https://cdn.uviewui.com/uview/resources/video.mp4',
					title: '昨夜星辰昨夜风，画楼西畔桂堂东',
					poster: 'https://cdn.uviewui.com/uview/swiper/swiper1.png'
				}],
				item: {//视频内容
					content: "内容",
					createTime: '2023-01-12',
					title: "标题",
				},viewList:[
					
				],favorite_number:23,
				commentValue:'',
			}
		},
		created() {
			this.getList();
			this.favorite_number = Math.floor(Math.random()*100); 
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
		
					this.change(this.item.video,this.item.remark) 
				});
			},
			change(video,picture) {
				this.video[0].url = video;
				this.video[0].poster = picture;
			},addFavorite(){
				this.favorite_number++;
			},addComment(){ 
				this.viewList.push(this.commentValue)
				this.commentValue=''
			},
			
			
			clickLikes() {
				if (this.likesClickCount % 2 == 0) { // 点赞
					this.thumbup = '/static/images/tabbar/likes.png'
					this.likes = (parseInt(this.likes) + 1).toString()
					addOnlineTrainingLikes(this.item).then(response => {})
				} else { // 取消点赞
					this.thumbup = '/static/images/tabbar/unlikes.png'
					this.likes = (parseInt(this.likes) - 1).toString()
					subOnlineTrainingLikes(this.item).then(response => {})
				}
				this.likesClickCount += 1
			},
			clickCollect() {
				if (this.collectClickCount % 2 == 0) { // 收藏
					this.star = '/static/images/tabbar/collect.png'
					this.collect = (parseInt(this.collect) + 1).toString()
					addOnlineTrainingCollect(this.item).then(response => {})
				} else { // 取消收藏
					this.star = '/static/images/tabbar/uncollect.png'
					this.collect = (parseInt(this.collect) - 1).toString()
					subOnlineTrainingCollect(this.item).then(response => {})
				}
				this.collectClickCount += 1
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