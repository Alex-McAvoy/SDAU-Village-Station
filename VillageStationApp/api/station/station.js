import request from '@/utils/request'

// 查询已审核
export function getStationListByColumn(firstColumn, sort) {
	return request({
		url: '/system/info/getListByColumn/' + firstColumn + '/' + sort,
		method: 'get'
	})
}

//获取驿站详情
export function getInfoDetail(newsId) {
	return request({
		url: '/system/info/id/' + newsId,
		method: 'get'
	})
}

// 更新阅读量
export function updateInfoReading(data) {
	return request({
		url: '/system/info/updateReading',
		method: 'put',
		data: data
	})
}
// 更新点赞量
export function addInfoLikes(data) {
	return request({
		url: '/system/info/addLikes',
		method: 'put',
		data: data
	})
}
export function subInfoLikes(data) {
	return request({
		url: '/system/info/subLikes',
		method: 'put',
		data: data
	})
}

// 更新收藏量
export function addInfoCollect(data) {
	return request({
		url: '/system/info/addCollect',
		method: 'put',
		data: data
	})
}
export function subInfoCollect(data) {
	return request({
		url: '/system/info/subCollect',
		method: 'put',
		data: data
	})
}
export function queryInfo(query) {
	return request({
		url: '/system/info/like/' + query,
		method: 'get',
	})
}
