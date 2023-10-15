<template>
	<view>
		<view>
			<u-loading-page :loading="loading"></u-loading-page>
		</view>
		<view class="tab_nav" style="border-radius: 10px; background-color: white;  margin:8px 15px; height: 100vh;">
			<view class="title">{{ item.title }}</view>
			<view style="color: #909090;text-align: center; size: 13;bold" bold>{{item.createBy}} | {{item.createTime}}
			</view>
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
		getFinance,
		subFinanceLikes,
		addFinanceLikes,
		addFinanceCollect,
		subFinanceCollect,
	} from "@/api/system/finance.js"
	import{
			addCollect,
			delCollectMultiId
		} from '@/api/system/collect.js'
		import{
			addLikes,
			delLikesMultiId
		} from '@/api/system/likes.js'
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
				collectClickCount: 0,
				userInfo: { // 用户信息
									userId: '',
									deptId: ''
								},
								status: 0, //0非收藏跳转,1收藏跳转,2 点赞跳转
			}
		},
		created() {
			this.getList(this.newsId);
			this.userInfo.userId = this.$store.state.user.userId
						this.userInfo.deptId = this.$store.state.user.deptId
		},onLoad(options) {
			this.status = options.status;
			this.newsId = options.newsId;//收藏对应的主键
			if(this.status==1){//从收藏跳转
				this.collectClickCount =1;
				this.star = '/static/images/tabbar/collect.png'
			}else if(this.status == 2){//从点赞跳转
				this.likesClickCount = 1;
				this.thumbup =  '/static/images/tabbar/likes.png'
			}
		},
		methods: {
			getList() {
				this.loading = true;
				var id = getApp().globalData.item.newsId
				getFinance(id).then(response => {
					this.item = response.data;
					this.reading = (response.data.reading + 1).toString()
					this.likes = response.data.likes.toString()
					this.collect = response.data.collect.toString()
					this.loading = false;
				});
			},clickLikes() {
				if (this.likesClickCount % 2 == 0) { // 点赞
					this.thumbup = '/static/images/tabbar/likes.png'
					this.likes = (parseInt(this.likes) + 1).toString()
					addFinanceLikes(this.item).then(response => {})
					this.addLikes();
				} else { // 取消点赞
					this.thumbup = '/static/images/tabbar/unlikes.png'
					this.likes = (parseInt(this.likes) - 1).toString()
					subFinanceLikes(this.item).then(response => {})
					this.delLikes();
				}
				this.likesClickCount += 1
			},
			clickCollect() {
				if (this.collectClickCount % 2 == 0) { // 收藏
					this.star = '/static/images/tabbar/collect.png'
					this.collect = (parseInt(this.collect) + 1).toString()
					addFinanceCollect(this.item).then(response => {})
					this.addCollectItem();
				} else { // 取消收藏
					this.star = '/static/images/tabbar/uncollect.png'
					this.collect = (parseInt(this.collect) - 1).toString()
					subFinanceCollect(this.item).then(response => {})
					this.delCollectItem();
				}
				this.collectClickCount += 1
			},addLikes(){//新增喜欢
				var data ={};
				data.userId = this.userInfo.userId;
				data.tableName = "finance_detail";//需要后端对应，找到真实的
				data.articleId = this.item.newsId; 
				addLikes(data).then(response => {
					
				});
			},delLikes(){//删除喜欢
				var userid = this.userInfo.userId;
				var tablename="finance_detail";
				var articleid=this.item.newsId; 
				delLikesMultiId(userid,tablename,articleid).then(response=>{
				})
			},addCollectItem(){//新增收藏
				var data ={};
				data.userId = this.userInfo.userId;
				data.tableName = "finance_detail";//需要后端对应，找到真实的
				data.articleId = this.item.newsId; 
				addCollect(data).then(response => {
				});
			},delCollectItem(){//删除收藏 
				var userid = this.userInfo.userId;
				var tablename= "finance_detail";
				var articleid=this.item.newsId;;
				delCollectMultiId(userid,tablename,articleid).then(response=>{
				})
			},
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
		letter-spacing: 0.07em;
		line-height: 1.30em;
	}
</style>