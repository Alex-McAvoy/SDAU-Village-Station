<template>
	<view class="body">
		<!-- 栏目标签 -->
		<view>
			<u-sticky bgColor="#fff">
				<u-tabs :list="financeBarList" :is-scroll="true" lineColor="#2ed573" @click="getFinanceListButton"
					style="margin:0px 25px"></u-tabs>
			</u-sticky>
		</view>
		<view style="border-radius: 10px; background-color: white;margin:15px;">
			<view v-if="financeNewsList.length!=0">
				<view class="news" v-for="item in financeNewsList" @click="goFinanceDetail(item)">
					<view class="new_img">
						<image :src="item.remark" alt="" style="width:100%;height: 70px;overflow: hidden">
					</view>
					<view class="new_title">{{ item.title }}</view>
					<view class="new_origin">
						<u-parse style="margin-bottom: 20px;" :content="fixedSize(item.content)"></u-parse>
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
	import uniPagination from "@/uni_modules/uni-pagination/components/uni-pagination/uni-pagination.vue"
	import {
		getCheckFinance,
		getCheckFinanceTag,
		getFinanceDetail,
		updateFinanceReading,
	} from "@/api/finance/index.js";

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
					pageSize: 5,
					title: null,
					content: null,
					audit: null,
					secondColumn: null,
					sort: null
				},
				loading: false,
				financeBarList: [{
					name: ' 金融助农 ',
					index: 0
				}, {
					name: ' 业务新闻 ',
					index: 1
				}, {
					name: ' 相关案例 ',
					index: 2
				}, ],
				financeList: [],
				financeNewsList: [],
				// 驿站标签，默认为0
				deptTag: [0,1,2,3,4,5,6,7,8,9,10,11],
			}
		},
		created() {
			if(this.$store.state.user.deptTag != "") {
				this.deptTag = this.$store.state.user.deptTag.split(',')
			}
			this.getFinanceListButton({ "index": 0 })
		},
		methods: {
			// 处理分页
			handlePage(params) {
				this.queryParam.pageNum = params.current
				this.loading = true;
				getCheckFinanceTag(this.index,this.deptTag,this.queryParam).then(response => {
					this.financeNewsList = response.rows;
					this.total = response.total;
					this.loading = false;
				});
			},
			//获取金融分类资讯列表
			getFinanceListButton(item) {
				this.loading = true;
				this.queryParam.pageNum = 1
				this.index = item.index;
				getCheckFinanceTag(this.index,this.deptTag,this.queryParam).then(response => {
					this.financeNewsList = response.rows;
					this.total = response.total;
					this.loading = false;
				});
			},
			//跳转金融资讯详情
			goFinanceDetail(item) {
				getApp().globalData.item = item;
				item.content = item.content.replace(/</g, "&lt;");
				item.content = item.content.replace(/>/g, "&gt;");
				updateFinanceReading(item).then(response => {}).finally(()=>{
					item.content = item.content.replace(/&lt;/ig,"<");
					item.content = item.content.replace(/&gt;/ig,">");
					uni.navigateTo({
						url: "/pages/finance/detail"
					})
				})
			},
			//限制字符个数
			fixedSize(content) {
				// let reg = /[^\x00-\xff]/g;
				// let res = content.match(reg).join("")
				let res = content.replace(/<\/?.+?\/?>/g, '')
				return res.substring(0, 25) + "..."
			},


		}
	}
</script>

<style src="../../static/css/index.css">
</style>
<style>
	.news {
		display: grid;
		grid-template-rows: 1fr 1fr 1fr;
		grid-template-columns: 1fr 2fr;
		grid-gap: 10px;
		height: 109px;
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