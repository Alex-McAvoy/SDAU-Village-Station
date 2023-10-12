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
				collectClickCount: 0
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
				} else { // 取消点赞
					this.thumbup = '/static/images/tabbar/unlikes.png'
					this.likes = (parseInt(this.likes) - 1).toString()
					subTechLikes(this.item).then(response => {})
				}
				this.likesClickCount += 1
			},
			clickCollect() {
				if (this.collectClickCount % 2 == 0) { // 收藏
					this.star = '/static/images/tabbar/collect.png'
					this.collect = (parseInt(this.collect) + 1).toString()
					addTechCollect(this.item).then(response => {})
				} else { // 取消收藏
					this.star = '/static/images/tabbar/uncollect.png'
					this.collect = (parseInt(this.collect) - 1).toString()
					subTechCollect(this.item).then(response => {})
				}
				this.collectClickCount += 1
			},
		}
	}
</script>

<style>
	@import url("../../../static/css/text.css");
</style>