import request from '@/utils/request'

// 查询收藏列表
export function listCollect(query) {
	return request({
		url: '/system/collect/list',
		method: 'get',
		params: query
	})
}
// 通过user_id 查询收藏
export function listCollectByUserId(query) {
	return request({
		url: '/system/collect/collectList/' + query,
		method: 'get',
	})
}

// 查询收藏详细
export function getCollect(newsId) {
	return request({
		url: '/system/collect/' + newsId,
		method: 'get'
	})
}

// 新增收藏
export function addCollect(data) {
	return request({
		url: '/system/collect',
		method: 'post',
		data: data
	})
}

// 修改收藏
export function updateCollect(data) {
	return request({
		url: '/system/collect',
		method: 'put',
		data: data
	})
}

// 删除收藏
export function delCollect(newsId) {
	return request({
		url: '/system/collect/' + newsId,
		method: 'delete'
	})
}

// 删除收藏
export function delCollectMultiId(userid, tablename, articleid) {
	return request({
		url: '/system/collect/del_collect/' + userid + '/' + tablename + '/' + articleid,
		method: 'delete'
	})
}
//根据收藏列表获取新闻资讯
export function getNewsByIdList(idlist) {
	return request({
		url: '/system/news/get_news_idList/' + idlist,
		method: 'get',
	})
}

//根据收藏列表获取金融资讯
export function getFinanceByIdList(idlist) {
	return request({
		url: '/system/finance/get_finance_idlist/' + idlist,
		method: 'get',
	})
}

//根据收藏列表获取渠道
export function getChannelByIdList(idlist) {
	return request({
		url: '/system/channel/get_channel_idlist/' + idlist,
		method: 'get',
	})
}

//根据收藏列表获取农技
export function getTechByIdList(idlist) {
	return request({
		url: '/system/tech/get_tech_idlist/' + idlist,
		method: 'get',
	})
}
//根据收藏列表获取新品种
export function getSpeciesByIdList(idlist) {
	return request({
		url: '/system/species/get_species_idlist/' + idlist,
		method: 'get',
	})
}
//根据收藏列表获取线下培训
export function getOffline_trainingByIdList(idlist) {
	return request({
		url: '/system/offline_training/get_offlinetraining_idlist/' + idlist,
		method: 'get',
	})
}

//根据收藏列表获取买农资
export function getFarmByIdList(idlist) {
	return request({
		url: '/system/farm/get_farm_idlist/' + idlist,
		method: 'get',
	})
}
//根据收藏列表获取推优品
export function getOfflineTrainingByIdList(idlist) {
	return request({
		url: '/system/offline_training/get_offlinetraining_idlist/' + idlist,
		method: 'get',
	})
}
//根据收藏列表获取优品信息
export function getProductsByIdList(idlist) {
	var tmp = '/system/products/get_products_idlist/' + idlist 
	return request({
		url: tmp,
		method: 'get',
	})
}
//根据收藏列表获取线上培训
export function getOnline_trainingByIdList(idlist) {
  return request({
    url: '/system/online_training/get_online_training_idlist/'+idlist,
    method: 'get',
  })
}

//根据收藏列表获取驿站
export function getStationInfoByIdList(idlist) {
  return request({
    url: '/system/info/get_info_idlist/'+idlist,
    method: 'get',
  })
}