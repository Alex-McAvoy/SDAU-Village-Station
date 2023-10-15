<template>
	<view>
		<!-- 顶部 搜索栏 -->
		<div class="nav_bar" style="background-color: white;">
			<u-row gutter="20" class="index_head">
				<u-col span="3">&nbsp;</u-col>
				<u-col span="7">
					<u-search :show-action="true" action-text="搜索" v-model="query" bg-color="#f2f2f2"
						margin="5px 0 5px 0" height="25px" mar @custom="search" @search="search" />
				</u-col>
			</u-row>
		</div>
		<!-- 新品种 详情-->
		<view class="nav_item">
			<view class="u-page" v-for="item in speciesList" @click="skip(item)">
				<view class="u-demo-block">
					<view class="u-demo-block__content">
						<view class="album">
							<view class="album__content">
								<view class="main_title">
									{{ item.title }}
								</view>
								<view class="main_content"><u-parse :content="fixedSize(item.content)"></u-parse></view>
								<u-album keyName="src2" style="margin-bottom: 8px;"></u-album>
								<image :src="item.remark"
									style="width: 300px;height: 150px; padding-left: 5vh; padding-right: 5vh;"></image>
							</view>
						</view>
					</view>
				</view>
			</view>
		</view>

	</view>


</template>

<script>
	import {
		querySpecies,
		getSpeciesListByColumn,
		updateSpeciesReading
	} from "@/api/station/species";

	export default {
		name: "Species",
		onLoad: function() {},
		data() {
			return {
				speciesList: [],
				current: 0,
				text: '000',
				keyword: '',
				userInfo: { // 用户信息
					userId: '',
					deptId: '',
				},
				query:'',
			}
		},
		created() {
			this.userInfo.userId = this.$store.state.user.userId
			this.userInfo.deptId = this.$store.state.user.deptId
			this.getList(this.userInfo.deptId);
		},
		methods: {
			/** 查询新品种列表 */
			getList(sort) {
				this.loading = true;
				getSpeciesListByColumn(1,sort).then(response => {
					if(response.data.length == 0) {
						this.speciesList = [{title: '',content: '该驿站暂无数据',remark:''}]
					} else {
						this.speciesList = response.data;
					}
					// this.speciesList = response.data;
					this.total = response.total;
					this.loading = false;
				});
			},
			// 多选框选中数据
			handleSelectionChange(selection) {
				this.ids = selection.map(item => item.newsId)
				this.single = selection.length !== 1
				this.multiple = !selection.length
			},
			scrolltolower() {
				this.loadmore()
			},
			//跳转详情页
			skip(item) {
				getApp().globalData.item = item;
				updateSpeciesReading(item).then(response => {
				})
				uni.navigateTo({
					url: "species_detail"
				})
			},
			fixedSize(content) {
				if (content != null) {
					if (content.length < 35) return content;
					else return content.substring(0, 35) + "...."
				}
				return content;
			},
			search(query) {
				getApp().globalData.query = query;
				uni.navigateTo({
					url: "/pages/station/query_result"
				})
			},
		}
	}
</script>
<style lang="scss">
	@import url("../../../static/css/text.css");

	.u-page {
		background-color: white;
		height: 100%;
		border-radius: 5px;
		margin: 15px;
	}

	.album {
		@include flex;
		align-items: flex-start;

		&__avatar {
			padding: 5px;
			border-radius: 3px;
		}

		&__content {
			margin-left: 10px;
			flex: 1;
		}
	}

	.album__content {
		margin-top: 5px;
	}
</style>