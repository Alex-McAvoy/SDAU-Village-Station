<template>
	<view>
		<view style="  border-radius: 5px;  background-color: white; height: 100vh; margin: 15px;">
			<view :model="datailList" >
				<div style="text-align: center;font-size:25px;border: 5px;margin-top: 8px;">{{datailList.title}}</div>
			</view>
			<view :model="datailList">
				<div style=" text-align: center;font-size:15px;border: 2px;color: gray;margin-top: 5px;">
					{{datailList.updateTime}}
				</div>
			</view>
			<view >
				<image :src="datailList.remark"style="width: 350px;height: 250px; margin: 15px; border-radius: 10px;" ></image>
			</view>
			<view :model="datailList">
				<div style="margin: 15px;font-size: 18px;">
					<u-parse :content="datailList.content"></u-parse>
				</div>
			</view>
		</view>
	</view>
</template>

<script>
	import {
		getProducts,
	} from "@/api/system/products";
	export default {
		data() {
			return {
				id:'', 
				datailList:{
					title:'',
					content:'',
					updateTime:'',
					remark:''
				}
			}
		},
		created() {
			this.gettail(this.id)
			// console.log(detailId)
			
		},
		onLoad(options) {
			// console.log(options)
			this.id = options.id;
			// console.log(this.id)
		},
		methods: {
			gettail(id) {
				this.loading = true;
				// console.log(detailId)
				getProducts(id).then(response => {
					// console.log(response)
							this.datailList = response.data;
					// 		// // 	// this.total = response.total;
					// 		this.loading = false;
				});
		}
	},
	}
</script>

<style>
</style>