<template>
	<view>
		<view style="  border-radius: 5px;  background-color: white; height: 100vh; margin: 15px;">
			<view :model="techDetails">
				<div class="sub_title">{{techDetails.title}}</div>
			</view>
			<view :model="techDetails">
				<div class="sub_note">
					{{techDetails.updateTime}}
				</div>
			</view>
			
			<image :src="techDetails.remark"
				style="width: 350px;height: 180px; padding-left: 5vh; padding-right: 5vh; ">
			</image>
			<view :model="techDetails">
				<div class="sub_content">
					{{techDetails.content}}
				</div>
			</view>
		</view>
	</view>
</template>

<script>
	import {
		getTechDetail
	} from "@/api/station/tech.js";

	export default {
		data() {
			return {
				//问题id
				articleId: '',
				techItem: '',
				techDetails: {
					content: '',
					secondColumn: '',
					updateTime: ''
				}
			}
		},
		created() {
			this.getDetail(this.articleId)
		},
		onLoad(options) {
			this.articleId = getApp().globalData.techItem.articleId
		},
		methods: {
			//根据问题id获取问题
			getDetail(index) {
				this.loading = true;
				getTechDetail(index).then(response => {
					this.techDetails = response.data;
				});
			}
		}
	}
</script>

<style>
	@import url("../../../static/css/text.css");
</style>