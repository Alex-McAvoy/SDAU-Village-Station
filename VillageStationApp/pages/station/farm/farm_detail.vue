<template>
	<view style="border-radius: 10px; background-color: white; margin:8px 15px; height: 100vh;" :model="farms">
		 <view class="sub_title">{{ farms.title }}</view>
		 <view class="sub_note">管理员 | 2023-10-06 16:57</view>
		<view class="news">
			<view class="new_img">
				<image src="/static/images/station/newspecies/newPaddy.jpg" alt=""
					style="width:100%;height: 200px;overflow: hidden">
			</view>
			<view class="sub_content"><u-parse :model="farms">{{ farms.content }}</u-parse></view>
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
	@import url("../../../static/css/text.css");
	.new_img {
		display: flex;
		justify-content: center;
		margin: 15px;
	}
</style>
