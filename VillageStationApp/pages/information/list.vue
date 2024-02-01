<template>
	<view class="main_context first_main_context" style="margin-top: 15px;">
		<view v-if="news.length!=0">
			<view class="news" style="height:120px;;" v-for="item in Array.from(news)" @click="goNewsDetail(item)">
				<view class="new_img">
					<image :src="item.remark" style="width:90px;height: 90px;overflow: hidden;border-radius: 15px;">
				</view>
				<view class="new_title" style="margin-top: 50px;">
					<u-text :text="item.title" bold size="17"></u-text>
					<u--text color="#909090 " :text="fixedSize(item.content)"></u--text>
				</view>
			</view>
		</view>
		<view v-else>
			<view style="font-size: 14px; line-height: 1.8; margin: 20px;">
				暂无相关信息
			</view>
		</view>
		<uni-pagination
				:total="total" 
				:current="queryParam.pageNum"
				:page-size="queryParam.pageSize"
				@change="handlePage">
		</uni-pagination>
	</view>
</template>

<script>
	import uniPagination from "@/uni_modules/uni-pagination/components/uni-pagination/uni-pagination.vue"
	import {
		getCheckNewsListTag,
		updateNewsReading,
	} from "@/api/information/index.js"
	export default {
		data() {
			return {
				// 总数据条数
				total: '',
				// 当前信息类型
				index: 0,
				// 分页查询数据
				queryParam: {
					pageNum: 1,
					pageSize: 10,
					title: null,
					content: null,
					audit: null,
					secondColumn: null,
					sort: null
				},
				item: '',
				news: {
					title: '',
					content: '',
					remark: '',
					createTime: '',
				},
				// 驿站标签，默认为0
				deptTag: [0,1,2,3,4,5,6,7,8,9,10,11],
			}
		},

		created() {
			this.loading = true;
			this.item = getApp().globalData.item
			if(this.$store.state.user.deptTag != "") {
				this.deptTag = this.$store.state.user.deptTag.split(',')
			}
			getCheckNewsListTag(this.item.id,this.deptTag, this.queryParam).then(response => {
				this.news = response.rows;
				this.total = response.total;
				this.loading = false;
			});
		},
		methods: {
			handlePage(params) {
				this.queryParam.pageNum = params.current
				this.loading = true;
				getCheckNewsListTag(this.item.id,this.deptTag,this.queryParam).then(response => {
					this.news = response.rows;
					this.total = response.total;
					this.loading = false;
				});
			},
			//限制字数
			fixedSize(content) {
				// let reg = /[^\x00-\xff]/g;
				// let res = content.match(reg).join("")
				let res = content.replace(/<\/?.+?\/?>/g, '')
				return res.substring(0, 25) + "..."
			},
			//跳转新闻详情
			goNewsDetail(item) {
				getApp().globalData.item = item;
				item.content = item.content.replace(/</g, "&lt;");
				item.content = item.content.replace(/>/g, "&gt;");
				updateNewsReading(item).then(response => {}).finally(()=>{
					item.content = item.content.replace(/&lt;/ig,"<");
					item.content = item.content.replace(/&gt;/ig,">");
					uni.navigateTo({
						url: "/pages/information/detail",
					})
				})
			},
		}
	}
</script>

<style>
	@import url("@/static/css/index.css");
	@import url("@/static/css/nav_bar.css");
	
	.video_list {
	
		height: 170px;
		margin-top: 10px;
	}
	
	.video_img {
		max-height: 170px;
	}
</style>