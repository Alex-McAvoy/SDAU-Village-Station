<template>
	<view style="border-radius: 10px; background-color: white; margin:8px 15px; height: 100vh;" :model="farms">
		 <view class="title">{{ farms.title }}</view>
		 <u-text color="#909090" align="center" text="管理员 | 2023-10-06 16:57" bold size="13"></u-text>
		<view class="news">
			<view class="new_img">
				<image src="/static/images/station/newspecies/newPaddy.jpg" alt=""
					style="width:100%;height: 200px;overflow: hidden">
			</view>
			<view class="new_text"><u-parse :model="farms">{{ farms.content }}</u-parse></view>
		</view>
	</view>
</template>

<script>
	import { listFarm, getFarm, getInfo} from "@/api/station/farm";
	export default {
		onLoad: function() {},
		data() {
			return {
				loading: false,
				farms:{
				title: '',
				content: '',
				},
				newsId:'',
			}
		},
		created() {
		    this.getList2(this.newsId); 
		}, 
		onLoad(options) {
			this.newsId = options.id;
			// console.log(this.expertId);
			// console.log(options.id);
			// this.detail(options.id)
			// expertId=options.id
		},
		methods: {
			//根据问题id获取评论
			getList2(newsId) {
				this.loading = true;
				console.log(newsId),
				getFarm(newsId).then(response => {
					console.log(response),
					// if(response.rows.questionId != null)
						// console.log(response),
						this.farms = response.data;
						 // console.log(this.detailquestions),
					// this.total = response.total;
					this.loading = false;
				});
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
	}
</style>
