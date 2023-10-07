<template>
	<view style="border-radius: 10px; background-color: white; margin:8px 15px; height: 90%;" :model="expert">

		<view> <!-- 主体框 -->
			<u-row gutter="16">
				<u-col span="1"></u-col>
				<u-col span="5" class="expert_img">
					<image :src="expert.remark" style="width:160px;height:160px;border-radius: 10px;">
				</u-col>
				<u-col span="6" class="bar" style="margin-left:-25px">
					<view class="sub_title" style="">{{ expert.expertName }}</view>

				</u-col>
			</u-row>
		</view>

		<view class="sub_content"><strong>研究方向</strong>：{{ expert.direction }}</view>

		<view class="sub_content">{{ expert.introduction }}</view>

		<view class="sub_content">{{ expert.researchIntroduction }}</view>
	</view>
</template>


<script>
	import {
		expertList,
		listExpert,
		getExpert,
		delExpert,
		addExpert,
		updateExpert
	} from "@/api/station/expert.js";
	export default {
		onLoad: function() {},
		data() {
			return {
				loading: false,
				expert: [],
				expertId: '',
			}
		},
		created() {
			this.getList2(this.expertId);
		},
		onLoad(options) {
			this.expertId = options.id;
			// console.log(this.expertId);
			// console.log(options.id);
			// this.detail(options.id)
			// expertId=options.id
		},
		methods: {
			//根据问题id获取评论
			getList2(expertId) {
				this.loading = true;
				// console.log(expertId),
				getExpert(expertId).then(response => {
					console.log(response),
						// if(response.rows.questionId != null)
						// console.log(response),
						this.expert = response.data;
					// console.log(this.detailquestions),
					// this.total = response.total;
					this.loading = false;
				});
			},
			
		}
	}
</script>

<style>
	@import url("../../static/css/text.css");

	.new_img {
		display: flex;
		justify-content: center;
		margin: 15px;
	}

	.expert_img {
		display: flex;
		justify-content: left;
		margin: 15px;
		padding: 5px 0 0 5px;
	}

	.direction {}
</style>