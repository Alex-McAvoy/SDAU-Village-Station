<template>
	<view class="body">
		
		<view style="border-radius: 10px; background-color: white;margin:15px;">
			<view class="news" v-for="item in train" @click="skip(item)">
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
		selectoffinetrainlist,
	} from "@/api/system/offinetrain.js";
	export default {
		onLoad: function() {},
		data() {
			return {
			train: [
				
			],
			}
		},
		created() {
			this.getList({
				index: 0
			});
		},
		methods: {
			handleSelect(key, keyPath) {
				console.log(key, keyPath);
			},
			
			getList() {
				this.loading = true;
				selectoffinetrainlist(this.queryParams).then(response => {
					this.train = response.rows
					console.log(response);
					this.loading = false;
				});
			},
			offinetraindetail(id){
				console.log(id)
				uni.navigateTo({
					url: "/pages/education/education_detail?id=" + id
				})
				
			},
			fixedSize(content) {
				return content.substring(0, 25) + "...."
			},
			skip(item) {
				console.log(item);
				getApp().globalData.item = item;
				console.log(getApp().globalData.item);
				uni.navigateTo({
					url: "education_detail"
				})
			}
		}
	}
</script>


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