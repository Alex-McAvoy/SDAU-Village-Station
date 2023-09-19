<template>
	<view>
			    
		<view class="u-page">
	        <view class="u-demo-block">
	            <view >
					
					 <u-tabs :list="list1" @click="click" style="align-items: center; "></u-tabs>
	            </view>
	        </view>
			 <view class="u-page">
				<view class="u-demo-block">
					<view class="u-demo-block__content">
						<view class="album">
							<view class="album__content">
								<u--text
										text="酶解鱼蛋白 鱼蛋白冲施肥 叶面肥 鱼肥原浆 "
										type="primary"
										bold
										size="17"
								></u--text>
								<u--text
										margin="0 0 8px 0"
										text="		1：改良土壤团粒结构，疏松土壤。 
													2：kuai速增加土壤微生物数量，改善根部周围微环境。 
													3：促进根部生长，特别对须根及侧根的生长具有促进作用。 "
								></u--text>
								<image
								    src="/static/images/1111.jpeg"
									style="width: 150px;height: 150px; padding-top: 1vh;"
								></image>
							</view>
						</view>
						<view class="album__content">
							<u--text
									text="酶解鱼蛋白 鱼蛋白冲施肥 叶面肥 鱼肥原浆 "
									type="primary"
									bold
									size="17"
							></u--text>
							<u--text
									margin="0 0 8px 0"
									text="		1：改良土壤团粒结构，疏松土壤，改善土壤透气性。 
												2：kuai速增加土壤微生物数量，改善根部周围微环境。 
												3：促进根部生长，特别对须根及侧根的生长具有促进作用。 "
							></u--text>
							<image
							    src="/static/images/1111.jpeg"
								style="width: 150px;height: 150px; padding-top: 1vh;"
							></image>
						</view>
						
					</view>
				</view>
			</view>
	    </view>	
	</view>
</template>

<script>
	export default {
		data() {
			return {
				list1: [{
					name: '供应',
				}, {
					name: '求购',
				}, ],

			}
		},
		methods: {
			click(item) {
			     console.log('item', item);
			},
			
			scrolltolower() {
				this.loadmore()
				},
			}
	}
</script>

<style lang="scss">

.u-page{
	background-color: white;
	height: 100vh;
	border-radius: 5px;
	margin: 1vh;
}
.album {
	@include flex;
	align-items: flex-start;

	&__avatar {
		 background-color: $u-bg-color;
		 padding: 5px;
		 border-radius: 3px;
	 }

	&__content {
		 margin-left: 10px;
		 flex: 1;
	 }
}
body, html{
	height: 100vh;
}
</style>
