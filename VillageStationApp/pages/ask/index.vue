<template>
	<view>
		<view class="nav_bar">
			<u-row gutter="20" class="index_head" style="padding-left: 20px;">
				<u-col class="flex_row" span="3" style="font-size: 18px;">随时问</u-col>
				<u-col span="9">
					<u-search :show-action="true" action-text="搜索" v-model="query" @custom="search" @search="search"
						:action-style="{ color: 'white' }" />
				</u-col>
				<u-col span="1"></u-col>
			</u-row>
		</view>
		<view style="margin-top: 105px;">
			<u-notice-bar :text=" '当前所在驿站：'+ ' ' + text1 + ' ' + text2"></u-notice-bar>
		</view>
		<!-- 轮播图 -->
		<view style="margin: 15px;border-radius: 10px; overflow: hidden;background-color: white;margin-top: 5px;">
			<u-swiper :list="list"></u-swiper>
		</view>
		<!-- 主体框 -->
		<view v-for="oneQuestion in question" :key="oneQuestion.id">
			<view style="margin: 15px;border-radius: 10px; overflow: hidden;background-color: white;"
				@click="goDetail(oneQuestion)">
				<u-row>
					<u-col span="2" style="display: flex;">
						<image src="@/static/images/icon.jpg"
							style="width: 52px;height: 52px;margin: 10px ;border-radius: 15px;"></image>
					</u-col>
					<u-col span="3" style="margin-left: 10px;margin-bottom: 30px;">
						<u--text :text="oneQuestion.createBy" type="success" bold size="13">
						</u--text>
					</u-col>
					<u-col span="7">
						<u--text :text="oneQuestion.title" type="primary" bold size="17">
						</u--text>
					</u-col>
				</u-row>
				<u-row style="margin:10px">
					<u-col span="2"></u-col>
					<u-col span="10">
						<u--text :text="oneQuestion.content">
						</u--text>
					</u-col>
				</u-row>
				<u-row>
					<u-col span="6"></u-col>
					<u-col span="6" style="margin: 15x;">
						<u--text color="#909090" :text="oneQuestion.createTime">
						</u--text>
					</u-col>
				</u-row>
			</view>
		</view>

		<!-- 弹出框 -->
		<view>
			<u-modal :show="show" :title="title" @cancel="cancel" @confirm="confirm" :showCancelButton='true'>
				<div style="width: 90%;">
					<u--input placeholder="请输入标题" v-model="newQuestion.title"></u--input>
					<u--input placeholder="请输入内容" style="margin-top: 20px;" v-model="newQuestion.content"></u--input>
					<view style="margin-top: 15px;">
						<u-upload :fileList="fileList1" @afterRead="afterRead" @delete="deletePic" name="1" multiple
							:maxCount="10"></u-upload>
					</view>
				</div>
			</u-modal>
		</view>
		<!-- 弹框开关 -->
		<view @click="open">
			<u-button class="custom-style" color="#00ae67 " type="primary" shape="circle"
				style="  width: 60px; height: 60px; position: fixed;bottom: 90px;right: 30px; font-size: 50px;">＋
			</u-button>
		</view>
	</view>
</template>

<script>
	import {
		getFreeAskListByColumn,
		addFreeAsk,
	} from "@/api/ask/index.js"
	import {
		getStation
	} from "@/api/system/user.js"
	import {
		getToken
	} from "@/utils/auth"

	export default {
		data() {
			return {
				text1: '',
				text2: '',
				//新增随时问
				newQuestion: {
					title: '',
					content: '',
					userId: '',
				},
				// 问题列表
				question: [],
				userName: '',
				userAvatar: '',
				//弹出框数据
				show: false,
				title: '添加问题',
				// 轮播图
				list: [
					'../../static/images/ask/mango.jpg',
					'../../static/images/ask/strawberry.jpg',
					'../../static/images/ask/watermelon.jpg',
				],
				query: '',
				fileList1: [],
				address: "http://localhost:8080"
			}
		},
		created() {
			Promise.all([
				getStation(this.$store.state.user.deptId)
			]).then(response => {
				this.text2 = response[0].data.deptName;

				let parentId = [];
				let temp = response[0].data.ancestors.split(',')

				for (var item of temp) {
					item = parseInt(item)
					if (item != 0 && item != 100 && item != 279 && item != 280 && item != 281 && item != 282 &&
						item != 823) {
						parentId.push(item)
					}
				}

				Promise.all([
						getStation(parentId[0]),
						getStation(parentId[1])
					])
					// getStation(this.$store.state.user.deptId)
					.then(response => {
						this.text1 = response[0].data.deptName + " " + response[1].data.deptName
					})

				this.loading = false;
			})
			this.userName = this.$store.state.user.name
			this.newQuestion.userId = this.$store.state.user.userId
			this.getList(this.$store.state.user.deptId)

		},
		methods: {
			goDetail(oneQuestion) {

				let id = oneQuestion.id
				uni.navigateTo({
					url: "detail?id=" + id
				})
			},
			getList(deptId) {
				getFreeAskListByColumn(deptId).then(response => {
					this.question = response.data;
				});
			},
			confirm() {
				addFreeAsk(this.newQuestion).then(response => {
					uni.showToast({
						title: '添加成功，正在审核...',
						icon: 'none',
						//显示持续时间为 2秒
						duration: 2000
					})
					// this.getList();
					this.loading = false;
					this.show = false;
				});
			},
			open() {
				this.show = true;
			},
			cancel() {
				this.show = false;
			},
			// 查询
			search(query) {
				getApp().globalData.query = query;
				this.query = '';
				uni.navigateTo({
					url: "/pages/index/query_result"
				})
			},
			// 删除图片
			deletePic(event) {
				this[`fileList${event.name}`].splice(event.index, 1)
			},
			async afterRead(event) {

				// 当设置 mutiple 为 true 时, file 为数组格式，否则为对象格式
				let lists = [].concat(event.file)
				let fileListLen = this[`fileList${event.name}`].length
				lists.map((item) => {
					this[`fileList${event.name}`].push({
						...item,
						status: 'uploading',
						message: '上传中'
					})
				})
				for (let i = 0; i < lists.length; i++) {
					const result = await this.uploadFilePromise(lists[i].url)
					let item = this[`fileList${event.name}`][fileListLen]
					this[`fileList${event.name}`].splice(fileListLen, 1, Object.assign(item, {
						status: 'success',
						message: '',
						rl: result
					}))
					fileListLen++
				}
				//this.problemPhotos=this.fileList1;
			},
			uploadFilePromise(url) {
				let _self = this;
				return new Promise((resolve, reject) => {
					let a = uni.uploadFile({
						url: this.address + '/uploadImg/news/1',
						header: {
							Authorization: "Bearer " + getToken(),
						},
						filePath: url,
						name: 'file',
						success: (res) => {
							this.newQuestion.remark = JSON.parse(res.data).url;
							setTimeout(() => {
								resolve(JSON.parse(res.data).fileName)
							}, 1000)
						}
					});
				})
			},
		}
	}
</script>

<style>
	@import url("@/static/css/index.css");
	@import url("@/static/css/nav_bar.css");
</style>