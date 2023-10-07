<template>
	<view>
		<view style="  border-radius: 5px;  background-color: white; height: 100vh; margin: 15px;">
			<view :model="techdetails" >
				<div class="sub_title">{{techdetails.secondColumn}}</div>
			</view>
			<view :model="techdetails">
				<div class="sub_note">
					{{techdetails.updateTime}}
				</div>
			</view>
			<view >
				<image src="../../../static/images/index/index_video.jpg" style="width: 400px;height: 300px;" ></image>
			</view>
			<view :model="techdetails">
				<div class="sub_content">
					{{techdetails.content}}
				</div>
			</view>
		</view>
	</view>
</template>

<script>
	import {
		getTechdetail
	} from "@/api/station/learn-tech.js";

	export default {
		data() {
			return {
				//问题id
				articleId: '',
				techdetails: {
					content: '',
					secondColumn: '',
					updateTime:''
				}
			}
		},
		created() {
			this.getTechdetail1(this.articleId);
		},
		onLoad(options) {
			this.articleId = options.id;
		},
		methods: {
			//根据问题id获取问题
			getTechdetail1(articleId) {
				this.loading = true;
				getTechdetail(articleId).then(response => {
					console.log(response)
							this.techdetails = response.data;
					// 		// // 	// this.total = response.total;
					// 		this.loading = false;
				});
			},
		}
	}
</script>

<style>
	@import url("../../../static/css/text.css");
</style>