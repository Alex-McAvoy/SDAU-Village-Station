<template>
	<view class="body">
		<!-- 栏目标签 -->
		<view class="main_context first_main_context" style="margin-top: 15px;">
			<view v-if="onlineList.length!=0">
				<view class="news" style="height:120px;;" v-for="item in onlineList" @click="goOnlineDetail(item)">
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
	</view>
</template>

<script>
	import {
		getOnlineTrainingListTag,
		getOnlineTrainingList,
	} from "@/api/technology/index.js";
	import {
		updateOnlineTrainingReading,
	} from "@/api/technology/online_training/index.js";
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
				onlineList: [],
				// 驿站标签，默认为0
				deptTag: [0,1,2,3,4,5,6,7,8,9,10,11],
			}
		},
		created() {
			this.loading = true;
			if(this.$store.state.user.deptTag != "") {
				this.deptTag = this.$store.state.user.deptTag.split(',')
			}
			getOnlineTrainingListTag(this.deptTag, this.queryParam).then(response => {
				this.onlineList = response.rows;
				this.total = response.total;
			});
		},
		methods: {
			//根据id查询线上培训详情页
			goOnlineDetail(item) {
				//更新阅读量
				getApp().globalData.item = item;
				item.content = item.content.replace(/</g, "&lt;");
				item.content = item.content.replace(/>/g, "&gt;");
				updateOnlineTrainingReading(item).then(response => {}).finally(()=>{
					item.content = item.content.replace(/&lt;/ig,"<");
					item.content = item.content.replace(/&gt;/ig,">");
					uni.navigateTo({
						url: "/pages/technology/online_training/detail",
					})
				})
			},
			//分页
			handlePage(params) {
				this.queryParam.pageNum = params.current
				this.loading = true;
				getOnlineTrainingListTag(this.deptTag,this.queryParam).then(response => {
					this.onlineList = response.rows;
					this.total = response.total;
				});
			},
			//字符限制
			fixedSize(content) {
				// let reg = /[^\x00-\xff]/g;
				// let res = content.match(reg).join("")
				let res = content.replace(/<\/?.+?\/?>/g, '')
				return res.substring(0, 25) + "..."
			},
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