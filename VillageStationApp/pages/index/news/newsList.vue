<template>
	<view class="body">
		<view> <!-- 栏目标签 -->
			<u-sticky bgColor="#fff">
				<u-tabs :list="list" :is-scroll="true" lineColor="#2ed573" @change="change"
					style="margin:0px 25px"></u-tabs>
			</u-sticky>
		</view>
		<view style="border-radius: 10px; background-color: white;margin:15px;">
			<view class="news" v-for="item in newsList" @click="skip(item)">
				<view class="new_img">
					<image src="/static/images/index/news_cover.png" alt=""
						style="width:100%;height: 70px;overflow: hidden">
				</view>
				<view class="new_title">{{ item.title }}</view>
				<view class="new_origin">
					<u-parse style="margin-bottom: 20px;" :content="fixedSize(item.content)"></u-parse>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	import {
		listColumns,
		getColumns,
		Columns
	} from "@/api/system/user.js";
	export default {
		onLoad: function() {},
		data() {
			return {
				newsList: [],
				current: 0,
				text: '000',
				textList: ['1', '2', '3'],
				list: [{
					name: '政策法规',
				}, {
					name: '三农资讯',
				}, {
					name: '科技动态',
				}, {
					name: '典型案例',
				}],

			}
		},
		created() {
			this.change({
				index: 0
			});
		},
		methods: {
			handleSelect(key, keyPath) {
				console.log(key, keyPath);
			},
			/** 查询其它栏目*/
			getList() {
				this.loading = true;
				listColumns(this.queryParams).then(response => {
					this.newsList = response.rows;
					console.log(this.newsList);
					this.loading = false;
				});
			},
			// 多选框选中数据
			handleSelectionChange(selection) {
				this.ids = selection.map(item => item.newsId)
				this.single = selection.length !== 1
				this.multiple = !selection.length
			},
			change(index) {
				console.log(index.index)
				this.current = index;
				//请求 firstColumn=’新闻资讯‘ secondColumn=index.name
				this.loading = true;
				Columns('新闻资讯', this.list[index.index].name).then(response => {
					this.newsList = response.rows;
					console.log(response);
					this.loading = false;
				});
			},
			fixedSize(content) {
				return content.substring(0, 25) + "...."
			},
			skip(item) {
				console.log(item);
				getApp().globalData.item = item;
				console.log(getApp().globalData.item);
				uni.navigateTo({
					url: "news_detail"
				})
			}
		}
	}
</script>

<style src="../../../static/css/index.css">
</style>
<style>
	.news {
		display: grid;
		grid-template-rows: 1fr 1fr 1fr;
		grid-template-columns: 1fr 2fr;
		grid-gap: 10px;
		height: 90px;
		font-size: 13px;
		border-top: 1px solid #ecf0f1;
		margin-bottom: 20px;
	}

	.news:nth-child(n+2) {
		margin-top: 2px;
	}

	.new_img {
		grid-row: 1/4;
		grid-column: 1/2;
		display: flex;
		flex-direction: column;
		justify-content: center;
	}

	.new_title {
		grid-row: 1/2;
		grid-column: 2/3;
		display: flex;
		flex-direction: column;
		justify-content: center;
		max-height: 70px;
		padding: 5px 0 0 0;
		font-size: 15px;
		font-weight: 200;
	}

	.new_origin {
		grid-row: 2/4;
		grid-column: 2/3;
		padding-bottom: 5px;
		margin-bottom: 20px;
	}

	.new_origin>.origin {
		color: #2ed573;
		border-radius: 3px;
		border: 1px solid #2ed573;
		margin-right: 5px;
		padding: 2px;
		font-size: 4px;
	}
</style>