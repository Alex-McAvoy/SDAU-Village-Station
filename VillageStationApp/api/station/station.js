import request from '@/utils/request'

// 查询已审核的分类农资
export function getStationListByColumn(firstColumn) {
	return request({
		url: '/system/info/getListByColumn/' + firstColumn,
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

// 更新收藏量
export function addInfoCollect(data) {
	return request({
		url: '/system/info/addCollect',
		method: 'put',
		data: data
	})
}