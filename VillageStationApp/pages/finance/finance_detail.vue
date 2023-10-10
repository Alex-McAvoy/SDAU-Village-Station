<template>
	<view style="border-radius: 10px; background-color: white; margin:8px 15px; height: 90%;" :model="finance">

		<view> <!-- 主体框 -->  
				 
					<view >{{ finance.title }}</view>  
					<view >{{ finance.content }}</view> 
				
					<image :src="finance.remark" style="width:160px;height:160px;border-radius: 10px;"/>
		</view>
 
	</view>
</template>


<script>
	import {
		listFinance,
		getFinance,
		addFinance,
		updateFinance,
		delFinance,
		getfirstColumnFinance,
	} from "@/api/system/finance.js";
	
	export default {
		onLoad: function() {},
		data() {
			return {
				loading: false,
				finance: [],
				firstColumn: '',
			}
		},
		created() {
			this.getList2();
		}, 
		methods: {
			//根据问题id获取评论
			getList2() { 
				this.loading = true; 
				this.finance =getApp().globalData.item;
				console.log(getApp().globalData.item)
			 
			},
			
		}
	}
</script>

<style>
	@import url("../../static/css/text.css"); 

	.finance_img {
		display: flex;
		justify-content: center;
		margin: 15px;
	}

	.finance_img {
		display: flex;
		justify-content: left;
		margin: 15px;
		padding: 5px 0 0 5px;
	} 
	
</style>