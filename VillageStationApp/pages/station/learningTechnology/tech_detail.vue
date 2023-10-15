<template>
	<view>
		<view style="  border-radius: 5px;  background-color: white; height: 100vh; margin: 15px;">
			<view>
				<div class="sub_title">{{item.title}}</div>
			</view>
			<view>
				<u-row style="height: 25px; margin-left: 100px;">
					<u-col span="15">
						<u--text color="#cbcbcb" :text="item.createTime"></u--text>
					</u-col>
				</u-row>
			</view>
			<image :src="item.remark" style="width: 350px;height: 180px; padding-left: 5vh; padding-right: 5vh; ">
			</image>
			<view>
				<div class="sub_content">
					{{item.content}}
				</div>
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
		getTechDetail,
		addTechLikes,
		subTechLikes,
		addTechCollect,
		subTechCollect
	} from "@/api/station/tech.js"
	import {
		addCollect,
		delCollectMultiId
	} from '@/api/system/collect.js';
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
				var id = getApp().globalData.item.articleId
				getTechDetail(id).then(response => {
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
					addTechLikes(this.item).then(response => {})
					this.addLikes();
				} else { // 取消点赞
					this.thumbup = '/static/images/tabbar/unlikes.png'
					this.likes = (parseInt(this.likes) - 1).toString()
					subTechLikes(this.item).then(response => {})
					this.delLikes();
				}
				this.likesClickCount += 1;
			},
			clickCollect() {
				if (this.collectClickCount % 2 == 0) { // 收藏
					this.star = '/static/images/tabbar/collect.png'
					this.collect = (parseInt(this.collect) + 1).toString()
					addTechCollect(this.item).then(response => {})
					this.addCollectItem()
				} else { // 取消收藏
					this.star = '/static/images/tabbar/uncollect.png'
					this.collect = (parseInt(this.collect) - 1).toString()
					subTechCollect(this.item).then(response => {})
					this.delCollectItem()
				}
				this.collectClickCount += 1
			},
			addLikes() { //新增喜欢
				var data = {};
				data.userId = this.userInfo.userId;
				data.tableName = "learningTechnology"; //需要后端对应，找到真实的
				data.articleId = this.item.articleId;
				addLikes(data).then(response => {
					
				});
			},
			delLikes() { //删除喜欢
				var userid = this.userInfo.userId;
				var tablename = "learningTechnology";
				var articleid = this.item.articleId;
				
				delLikesMultiId(userid, tablename, articleid).then(response => {
					
				})
			},
			addCollectItem() { //新增收藏
				var data = {};
				data.userId = this.userInfo.userId;
				data.tableName = "learningTechnology"; //需要后端对应，找到真实的
				data.articleId = this.item.articleId;
				addCollect(data).then(response => {
					
				});
			},
			delCollectItem() { //删除收藏 
				var userid = this.userInfo.userId;
				var tablename = "learningTechnology";
				var articleid = this.item.articleId;
				delCollectMultiId(userid, tablename, articleid).then(response => {
					
				})
			}
		}
	}
</script>

<style>
	@import url("../../../static/css/text.css");
</style>