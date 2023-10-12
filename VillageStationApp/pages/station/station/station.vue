<template>
	<view style="">
		<view class="contain">
			<!-- 1 标题-->
			<div class="nav_bar">
				<u-row gutter="20" class="index_head">
					<u-col span="3">乡村驿站&nbsp;</u-col>
					<u-col span="7">
						<u-search :show-action="false"></u-search>
					</u-col <u-col span="2"></u-col>
				</u-row>
			</div> <!-- 2 九宫格 -->
			<!-- 九宫格 -->
			<view
				style="border-radius: 10px; background-color: white;margin:105px 15px 15px 10px;padding-top:8px;padding-bottom: 8px;">
				<u-grid :border="false" col="4">
					<u-grid-item v-for="(listItem,listIndex) in barList" :key="listIndex">
						<view @click="$goBack(2,listItem.route)">
							<u-image :customStyle="{paddingTop:20+'rpx'}" :src="listItem.src" :height="40" :width="30"
								style="display: flex;justify-content: center;align-items: center;"></u-image>
							<span class="grid-text"
								style="color:#9f9f9f;font-size: 15px; margin:15px">{{listItem.title}}</span>
						</view>
					</u-grid-item>
				</u-grid>
				<u-toast ref="uToast" />
			</view>
		</view>

		<!-- 驿站信息 -->
		<view style="border-radius: 10px; background-color: white;  margin:15px">
			<view class="askexperts-bar" style="font-size: 100px;" @click="goStationInfoList">
				<image src="/static/images/station/station/ncp.png" style="margin:8px; width:40px; height: 25px;">
				</image>
				<u-text style="font-weight: 20px;" margin="8px 0 2px 0" bold size="22" text="驿站信息"></u-text>
				<u-col span="1">
					<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;" />
				</u-col>
			</view>
			<view class="u-page" v-for="item in Array.from(Info).slice(0,2)" @click="goStationInfoDetail(item)">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image margin="30px 0px 8px 0px" :src="item.remark"
								style="margin-top: 15px;border-radius: 8px; overflow: hidden;width: 100px;height: 70px;">
							</image>
						</view>
						<view class="album__content">
							<u-text style="padding-right: 8px;" margin="20px 0px 8px 0px" :text="item.title" bold
								size="17"></u-text>
							<div>
								<view style="display: flex; margin-top:10px;">
									<u--text color="#909090 " margin="0 0 8px 0"
										:text="fixedSize(item.content)"></u--text>
								</view>
							</div>
						</view>
					</view>
				</view>
			</view>
		</view>
		
		<!-- 问专家 -->
		<view style="border-radius: 10px; background-color: white;margin:15px">
			<view class="askexperts-bar" style="font-size: 100px;" @click="goExpertList">
				<image src="/static/images/station/station/wd.png" style="margin:8px; width:30px; height: 25px;">
				</image>
				<u-text style="font-weight: 20px;" margin="8px 0 4px 0" bold size="22" text="问专家"></u-text>
				<u-col span="1">
					<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;" />
				</u-col>
			</view>
			<view class="u-page" v-for="expert in Array.from(experts).slice(0,2)">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image :src="expert.remark"
								style="margin:8px; width:100px; height: 100px;border-radius: 100%;">
							</image>
						</view>
						<view class="album__content" @click="goExpertDetail(expert.askExpertsId)">
							<view class="sub_title" margin="10px 0 20px 0" bold size="20">{{expert.expertName}}</view>
							<div style="margin-right: 10px;">
								<span
									style=" font-size:15px;font-weight: 300px; color:rgb(169,169,169)">{{fixedSize(expert.introduction)}}
								</span>
							</div>
						</view>
					</view>
				</view>
			</view>
		</view>
		
		<!-- 随时问 -->
		<view style="border-radius: 10px; background-color: white;  margin:15px;">
			<view class="askexperts-bar" @click="goFreeAsk">
				<image src="/static/images/station/station/cjwt.png" style="margin:8px; width:30px; height: 25px;">
				</image>
				<u-text style="font-weight: 20px;" margin="8px 0 8px 0" bold size="22" text="随时问"></u-text>
				<u-col span="1">
					<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;" />
				</u-col>
			</view>
			<u-gap height="10"></u-gap>
			<view class="u-page" v-for="item in Array.from(askQuestions).slice(0,2)">
				<view class="album">
					<view class="album__content">
						<view class="u-page">
							<view class="u-demo-block">
								<view class="u-demo-block__content">
									<view class="album">
										<view class="album__avatar">
											<image src="/static/images/icon.jpg" mode=""
												style="width: 32px;height: 32px; "></image>
										</view>
										<view class="album__content" @click="goFreeAskDetail(item.askFreeId)">
											<div class="ask_title">
												{{item.title}}
											</div>
											<div class="ask_content">
												{{item.content}}
											</div>
										</view>
									</view>
								</view>
							</view>
						</view>

					</view>
				</view>
			</view>
			<u-divider></u-divider>
		</view>
		
		<!-- 学农技 -->
		<view style="border-radius: 10px; background-color: white;  margin:15px">
			<view class="askexperts-bar" @click="goLearnTech">
				<image src="/static/images/station/station/ncxfy.png" style="margin:8px; width:30px; height: 25px;">
				</image>
				<u-text style="font-weight: 20px;" margin="8px 0 8px 0" bold size="22" text="学农技"></u-text>
				<u-col span="1">
					<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;" />
				</u-col>
			</view>
			<u-tabs :list="techBarList" :is-scroll="true" @click="getTechList" lineColor="#2ed573"></u-tabs>
			<view class="u-page" v-for="item in Array.from(techDetails).slice(0,2)"
				@click="goTechDetail(item)">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image margin="30px 0px 8px 0px" :src="item.remark"
								style="margin-top: 15px;border-radius: 8px; overflow: hidden;width: 100px;height: 70px;">
							</image>
						</view>
						<view class="album__content">
							<view style="padding-right: 8px;" margin="20px 0px 8px 0px" bold size="17">
								{{fixedSize(item.content)}}
							</view>
							<div>
								<view style="display: flex; margin-top:10px;">
									<u--text color="#909090 " margin="0 0 8px 0" text="中国政府网 "></u--text>
									<u--text style="justify-content: end;" color="#909090 " margin="0 10px 8px 0"
										text="256人阅读"></u--text>
								</view>
							</div>
						</view>
					</view>
				</view>
			</view>
		</view>
		
		<!-- 买农资-->
		<view style="border-radius: 10px; background-color: white;  margin:15px">
			<view class="askexperts-bar" @click="goFarm">
				<image src="/static/images/station/station/ncp.png" style="margin:8px; width:40px; height: 25px;">
				</image>
				<u-text style="font-weight: 20px;" margin="8px 0 2px 0" bold size="22" text="买农资"></u-text>
				<u-col span="1">
					<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;" />
				</u-col>
			</view>
			<u-tabs :list="farmBarList" @click="getFarmList" lineColor="#2ed573" lineWidth="60" :current="0"></u-tabs>
			<view class="u-page" v-for="item in Array.from(farmList).slice(0,2)" @click="goFarmDetail(item.newsId)">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image margin="30px 0px 8px 0px" :src="item.remark"
								style="margin-top: 15px;border-radius: 8px; overflow: hidden;width: 100px;height: 70px;">
							</image>
						</view>
						<view class="album__content">
							<u-text style="padding-right: 8px;" margin="20px 0px 8px 0px" :text="item.title" bold
								size="17"></u-text>
							<div>
								<view style="display: flex; margin-top:10px;">
									<u--text color="#909090 " margin="0 0 8px 0"
										:text="fixedSize(item.content)"></u--text>
								</view>
							</div>
						</view>
					</view>
				</view>
			</view>

		</view>
		
		<!-- 找渠道-->
		<view style="border-radius: 10px; background-color: white;  margin:15px">
			<view class="askexperts-bar" style="font-size: 100px;" @click="goChannel">
				<image src="/static/images/station/station/qdgl.png" style="margin:8px; width:30px; height: 25px;">
				</image>
				<u-text style="font-weight: 20px;" margin="8px 0 4px 0" bold size="22" text="找渠道"></u-text>
				<u-col span="1">
					<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;" />
				</u-col>
			</view>

			<u-tabs :list="channelBarList" @click="getChannelList" lineColor="#2ed573" lineWidth="60" :current="0"></u-tabs>

			<view class="u-page" v-for="item in Array.from(channelList).slice(0, 2)" @click="goChannelDetail(item)">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image margin="30px 0px 8px 0px" :src="item.remark"
								style="margin-top: 15px;border-radius: 8px; overflow: hidden;width: 100px;height: 70px;">
							</image>
						</view>
						<view class="album__content">
							<u-text style="padding-right: 8px;" margin="20px 0px 8px 0px" :text="item.title" bold
								size="17"></u-text>
							<div>
								<view style="display: flex; margin-top:10px;">
									<u--text color="#909090 " margin="0 0 8px 0"
										:text="fixedSize(item.content)"></u--text>
								</view>
							</div>
						</view>
					</view>
				</view>
			</view>

		</view>
		
		<!-- 推优品-->
		<view style="border-radius: 10px; background-color: white;  margin:15px">
			<view class="askexperts-bar" style="font-size: 100px;" @click="goProducts">
				<image src="/static/images/station/station/nl.png" style="margin:8px; width:30px; height: 25px;">
				</image>
				<u-text style="font-weight: 20px;" margin="8px 0 4px 0" bold size="22" text="推优品"></u-text>
				<u-col span="1">
					<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;" />
				</u-col>
			</view>
			<u-tabs :list="productBarList" @click="getProductList" lineColor="#2ed573" lineWidth="60" :current="0"></u-tabs>

			<view class="u-page" v-for="item in Array.from(productsList).slice(0, 2)" @click="goProductsDetail(item)">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image margin="30px 0px 8px 0px" :src="item.remark"
								style="margin-top: 15px;border-radius: 8px; overflow: hidden;width: 100px;height: 70px;">
							</image>
						</view>
						<view class="album__content">
							<u-text style="padding-right: 8px;" margin="20px 0px 8px 0px" :text="item.title" bold
								size="17"></u-text>
							<div>
								<view style="display: flex; margin-top:10px;">
									<u--text color="#909090 " margin="0 0 8px 0"
										:text="fixedSize(item.content)"></u--text>
								</view>
							</div>
						</view>
					</view>
				</view>
			</view>
		</view>
		
		<!-- 新品种-->
		<view style="border-radius: 10px; background-color: white;  margin:15px">
			<view class="askexperts-bar" style="font-size: 100px;" @click="goNewspecies">
				<image src="/static/images/station/station/zzpz.png" style="margin:8px; width:30px; height: 25px;">
				</image>
				<u-text style="font-weight: 20px;" margin="8px 0 4px 0" bold size="22" text="新品种"></u-text>
				<u-col span="1">
					<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;" />
				</u-col>
			</view>
			<view class="u-page" v-for="item in Array.from(speciesList).slice(0,2)" @click="goNewspeciesDetail(item)">
				<view class="u-demo-block">
					<view class="album">
						<view class="album__avatar">
							<image :src="item.remark"
								style="margin: 5px;width: 120px; height: 80px;border-radius: 8px; overflow: hidden;">
							</image>
						</view>
						<view class="album__content">
							<u-text style="padding-right: 8px;" margin="20px 0px 8px 0px" :text="item.title" bold
								size="17"></u-text>
							<div>
								<view style="display: flex; margin-top:10px;">
									<u--text color="#909090 " margin="0 0 8px 0"
										:text="item.content.substring(0, 20)+'...'"></u--text>
								</view>
							</div>
						</view>
					</view>
				</view>
			</view>
		</view>
		
		<!-- 在线基地-->
		<view style="border-radius: 10px; background-color: white;  margin:15px" @click="goOnlinebase">
			<view class="askexperts-bar" style="font-size: 100px;">
				<image src="/static/images/station/station/dt.png" style="margin:8px; width:30px; height: 25px;">
				</image>
				<u-text style="font-weight: 20px;" margin="8px 0 4px 0" bold size="22" text="寻驿站"></u-text>
				<u-col span="1">
					<image src="/static/images/index/arrow_right.png" style="height:20px;width:35px;" />
				</u-col>

			</view>
			<image src="/static/images/station/station/R-C.jpg" style="height: 350px; width: 400px;">
			</image>
		</view>
	</view>
</template>
<script>
	import {
		UList,
		UAvatar,
		UText,
		UIcon,
	} from 'uview-ui';
	import {
		getStationListByColumn,
		updateInfoReading
	} from "@/api/station/station.js";
	import {
		getExpertListByColumn
	} from "@/api/station/expert.js";
	import {
		getFreeAskListByColumn
	} from "@/api/station/freeAsk.js";
    import {
		getTechListByColumns,
		updateTechReading
	} from "@/api/station/tech.js";
    import {
		getFarmListByColumn,
		updateFarmReading
	} from "@/api/station/farm";
	import {
		getChannelListByColumns,
		updateChannelReading
	} from "@/api/station/channel";
	import {
		getProductsByColumns,
		updateProductsReading
	} from "@/api/station/products";
	import {
		getSpeciesListByColumn,
		updateSpeciesReading
	} from "@/api/station/species";

	export default {
		components: {
			UList,
			UAvatar,
			UText,
			UIcon,
		},
		data() {
			return {
				barList: [{ //导航栏
						src: "/static/images/station/station/wd.png",
						title: '问专家',
						route: '/pages/station/askExperts/askExpert'
					},
					{
						src: "/static/images/station/station/cjwt.png",
						title: '随时问',
						route: '/pages/station/freeAsk/freeAsk'
					},
					{
						src: "/static/images/station/station/ncxfy.png",
						title: '学农技',
						route: '/pages/station/learningTechnology/learningTechnology'
					},
					{
						src: "/static/images/station/station/ncp.png",
						title: '买农资',
						route: '/pages/station/farm/purchaseFarm'
					},
					{
						src: "/static/images/station/station/qdgl.png",
						title: '找渠道',
						route: '/pages/station/channel/channel'
					},
					{
						src: "/static/images/station/station/nl.png",
						title: '推优品',
						route: '/pages/station/products/products'
					},
					{
						src: "/static/images/station/station/zzpz.png",
						title: '新品种',
						route: '/pages/station/newsSpecies/newspecies'
					},
					{
						src: "/static/images/station/station/dt.png",
						title: '寻驿站',
						route: '/pages/station/onlinebase'
					},
				],
				Info: { // 驿站信息
					title: '',
					content: '',
					secondColumn: '',
				},
				experts: [ // 专家
					{	askExpertsId:'1',
						dicValue:'2',
						direction:'果树栽培生理研究，果树特色资源分子生物学研究',
						firstColumn:'1',
						researchIntroduction:'束怀瑞教授从事果树教学科研及推广60年。长期深入生产一线，熟悉我国果树生产和生产技能实际，提出了“沃土养根壮树，提高贮藏营养水平为主的优质丰产技术体系”。从五十年代开始研究苹果根系生物学，发现果树根系具有功能补偿结构特征，提出了“局部效应、界面效应、冗余节能、结构及周年补偿”的观点，开发了多项配套技术，其中发明的“地膜覆盖穴贮肥水技术”，被国家科委列为重点项目在17个省市推广470万亩。“平原地起垅沟草制”、“界面培养基质诱导生根” 等技术对解决果树的逆境早衰等效果极为显著。在国内较早开展果树栽培生理研究，对苹果碳氮营养物质运转、分配、贮藏再利用规律的研究1989年获国家教委科技进步二等奖，提出的“看碳施氮、以氮促碳、养根壮树、优质丰产”的论点对生产起到很大指导作用；提出的苹果三大主枝主干疏层形、枝类组成、枝组概念、优质丰产合理树体结构及调控措施等，成为苹果整形修剪的经典一直沿用至今。在学科建设中注重学科交叉借鉴，将数学、化学等引进果树学，开发果树优质丰产生物数学模型，组织开展果树特色资源分子生物学研究，建立了无融合生殖、矮化砧种子繁殖体系研究。主持的“山东省百万亩苹果幼树优质丰产综合技术研究”，开发108万亩，三年由亩产100公斤/亩提高到1010公斤，取得巨大经济效益，并深入研究根系生物学与根际环境，推广果园覆盖，起垅沟草制，苹果内源激素周年发生规律，农药残毒分析等专题。',
						updateTime:'2023-19-12 17:50:49',
						expertName: '束怀瑞',
						introduction: '中国工程院院士，博士生导师，中国园艺学会常务理事',
						remark: 'http://36.138.166.17:9000/test/species/shr_1696686150476.png',
					},
					{   askExpertsId:'272001',
						dicValue:'0',
						direction:'小麦生理生态与高产优质栽培技术',
						firstColumn:'1',
						researchIntroduction:'长期从事小麦栽培理论与技术的研究和实践，系统研究了小麦产量、品质生理和高产优质栽培技术，提出了以氮肥后移为关键技术的小麦高产优质栽培技术体系，被农业部定为我国小麦生产主推技术，在黄淮海麦区推广，经济效益和社会效益显著。注重理论与实践相结合，主持“小麦衰老生理与超高产栽培技术”课题获2001年国家科技进步二等奖（第1位完成人），“小麦品质生理与优质高产栽培技术”课题获2006年国家科技进步二等奖（第1位完成人），“优质小麦无公害标准化生产关键技术研究与示范推广” 课题获2010年山东省科学技术二等奖（第1位完成人），参加“冬小麦精播高产栽培的理论与技术”课题获1992年国家科技进步二等奖（第4位完成人）。在国内外学术刊物发表论文247篇，主编与参编了编著20部。',
						updateTime:'2023-10-08 01:24:57',
						expertName: '于振文',
						introduction: '教授，中国工程院院士，博硕导师。兼任农业部小麦专家指导组组长，中国作物学会小麦栽培学组组长，山东省农业专家顾问团小麦分团团长，第九、十、十一届全国政协委员。',
						remark: 'http://36.138.166.17:9000/test/species/yuzhenwen_1696699468500.jpg',
						},
				],
				askQuestions: { // 随时问
					title: '',
					content: '',
				},
				techBarList: [{ //学农技导航栏
						name: '水稻',
						index: '0',
					}, {
						name: '小麦',
						index: '1',
					}, {
						name: '蔬菜',
						index: '2',
					}, {
						name: '果树',
						index: '3',
					}, {
						name: '植保',
						index: '4',
					}, {
						name: '禽畜',
						index: '5',
					},
					{
						name: '农机',
						index: '6',
					},
					{
						name: '水产',
						index: '7',
					},
				],
				techDetails: { //学农技
					content: '',
					remark: '',
				},
				farmBarList: [{ //买农资导航栏
						index: 0,
						name: "节肥增效"
					}, {
						index: 1,
						name: "虫害防控"
					}, {
						index: 2,
						name: "农机装备"
					}, {
						index: 3,
						name: "种子树苗"
				}],
				farmList: { // 买农资
					remark: '',
					title: '',
					content: ''
				}, 
				channelBarList: [{ //找渠道导航栏
						index: 0,
						name: '供应'
					}, {
						index: 1,
						name: "求购"
					}
				],
				channelList: { // 找渠道
					remark: '',
					title: '',
					content: ''
				}, 
				productBarList: [{ //推优品导航栏
						name: '优品品类',
						index: 0
					}, {
						name: "优品品牌",
						index: 1
					},
				],
				productsList: { // 推优品
					remark: '',
					title: '',
					content: ''
				}, 
				speciesList: { //新品种
					remark: '',
					title: '',
					content: ''
				}
			}
		},
		created() {
			this.getStationList();
			//this.getExpertList();
			this.getFreeAskList();
			this.getTechList({index:0});
			this.getFarmList({index:0});
			this.getChannelList({index:0});
			this.getProductList({index:0});
			this.getSpeciesList();
		},
		methods: {
			//获取驿站信息列表
			getStationList() {
				this.loading = true;
				getStationListByColumn(1).then(response => {
					this.Info = response.data;
					this.loading = false;
				});
			},
			//跳转驿站信息列表页
			goStationInfoList(){
				uni.navigateTo({
					url: "/pages/station/station/station_info_list"
				});
			},
			//跳转驿站信息详情页
			goStationInfoDetail(item) {
				getApp().globalData.item = item;
				updateInfoReading(item).then(response => {
				})
				uni.navigateTo({
					url: "/pages/station/station/station_info_detail"
				})
			},
			//获取专家列表
			getExpertList() {
				this.loading = true;
				getExpertListByColumn(1,2).then(response => {
					this.experts = response.data;
					this.loading = false;
				});
			},
			//跳转问专家
			goExpertList() {
				uni.navigateTo({
					url: "/pages/station/askExperts/askExpert"
				})
			},
			//跳转专家详情页面
			goExpertDetail(id) {
				uni.navigateTo({
					url: "/pages/station/askExperts/expert_detail?id=" + id
				});
			},
			//获取随时问列表
			getFreeAskList() {
				this.loading = true;
				getFreeAskListByColumn(1).then(response => {
					this.askQuestions = response.data;
					this.loading = false;
				});
			},
			//跳转随时问
			goFreeAsk() {
				uni.navigateTo({
					url: "/pages/station/freeAsk/freeAsk"
				})
			},
			//跳转随时问详情页
			goFreeAskDetail(id) {
				uni.navigateTo({
					url: "/pages/station/freeAsk/freeAskDetail?id=" + id
				});
			},
			//获取学农技列表
			getTechList(item) {
				getTechListByColumns(1,item.index).then(response => {
					this.techDetails = response.data;
					this.total = response.total;
					this.loading = false;
				});
			},
			//跳转学农技
			goLearnTech() {
				uni.navigateTo({
					url: "/pages/station/learningTechnology/learningTechnology"
				})
			},
			//跳转学农技详情页
			goTechDetail(item) {
				getApp().globalData.item = item;
				updateTechReading(item).then(response => {
				})
				uni.navigateTo({
					url: "/pages/station/learningTechnology/tech_detail"
				});
			},
			//获取买农资列表
			getFarmList(item) {
				getFarmListByColumn(1, item.index).then(response => {
					this.farmList = response.data;
					this.total = response.total;
					this.loading = false;
				});
			},			
			//跳转买农资
			goFarm() {
				uni.navigateTo({
					url: "/pages/station/farm/purchaseFarm"
				})
			},
			//跳转买农资详情页
			goFarmDetail(id) {
				updateFarmReading({newsId: id}).then(response => {
				})
				uni.navigateTo({
					url: "/pages/station/farm/farm_detail?id=" + id
				});
			},
			//获取找渠道列表
			getChannelList(item) {
				getChannelListByColumns(1,item.index).then(response => {
					this.channelList = response.rows;
					this.total = response.total;
					this.loading = false;
				});
			},
			//跳转到找渠道
			goChannel() {
				uni.navigateTo({
					url: "/pages/station/channel/channel"
				})
			},
			//跳转到找渠道详情页
			goChannelDetail(item) {
				getApp().globalData.item = item;
				updateChannelReading(item).then(response => {
				})
				uni.navigateTo({
					url: "/pages/station/channel/channel_detail"
				})
			},
			//获取推优品列表
			getProductList(item) {
				getProductsByColumns(1, item.index).then(response => {
					this.productsList = response.data;
					this.loading = false;
				});
			},
			//跳转到推优品
			goProducts() {
				uni.navigateTo({
					url: "/pages/station/products/products"
				})
			},
			//跳转到推优品详情页
			goProductsDetail(item) {
				getApp().globalData.item = item;
				updateProductsReading(item).then(response => {
				})
				uni.navigateTo({
					url: "/pages/station/products/products_detail"
				})
			},
			//获取新品种列表
			getSpeciesList() {
				this.loading = true;
				getSpeciesListByColumn(1).then(response => {
					this.speciesList = response.data;
					this.total = response.total;
					this.loading = false;
				});
			},
			//跳转到新品种
			goNewspecies() {
				uni.navigateTo({
					url: "/pages/station/newsSpecies/newspecies"
				})
			},
			//跳转到新品种详情页
			goNewspeciesDetail(item) {
				getApp().globalData.item = item;
				updateSpeciesReading(item).then(response => {
				})
				uni.navigateTo({
					url: "/pages/station/newsSpecies/species_detail"
				})
			},
			//跳转到寻驿站
			goOnlinebase() {
				uni.navigateTo({
					url: "/pages/station/onlinebase"
				})
			},
			// 控制显示文本长度
			fixedSize(content) {
				return content.substring(0, 25) + "..."
			}
		}
	}
</script>
<style src="../../../static/css/text.css"></style>
<style>
	/* 导航栏字体样式 */
	::v-deep .u-tabs__wrapper__nav__item__text {
		font-size: 19px !important;
	}

	.tab_nav {
		display: flex;
		justify-content: center;
		align-items: center;
		border-radius: 10px;
		background-color: white;
		margin: 8px 15px
	}

	.tab_nav .navTitle {
		height: 90rpx;
		line-height: 90rpx;
		width: 100%;
		text-align: center;
		font-size: 32rpx;
		font-family: Alibaba PuHuiTi;
		color: #333;
	}
</style>
<style lang="scss">
	@import url("../../../static/css/nav_bar.css");

	/* 顶部样式 */
	.index_head {
		color: azure;
		height: 100px;
		padding: 0px 15px 0px 15px;
		background: linear-gradient(#00ae67, #00ae67, #00ae67, #00ae67, #2ed573, #7bed9f, #f1f2f6);

	}

	.body {
		background: #dfe4ea;
		min-height: 100vh;
	}

	.container {
		display: flex;
		align-items: center;
	}

	.askexperts-bar {
		display: flex;
		align-items: center;
	}

	.album {
		@include flex;
		align-items: flex-start;

		&__avatar {
			background-color: #fff;
			padding: 5px;
			border-radius: 3px;
		}

		&__content {
			margin-left: 10px;
			flex: 2;
		}
	}

	::v-deep .u-tabs__wrapper__nav__item__text {
		font-size: 19px !important;
	}

	.scroll-list {
		@include flex(column);

		&__goods-item {
			margin-right: 20px;

			&__image {
				width: 60px;
				height: 60px;
				border-radius: 4px;
			}

			&__text {
				color: #f56c6c;
				text-align: center;
				font-size: 12px;
				margin-top: 5px;
			}
		}

		&__show-more {
			background-color: #fff0f0;
			border-radius: 3px;
			padding: 3px 6px;
			@include flex(column);
			align-items: center;

			&__text {
				font-size: 12px;
				width: 12px;
				color: #f56c6c;
				line-height: 16px;
			}
		}
	}
</style>