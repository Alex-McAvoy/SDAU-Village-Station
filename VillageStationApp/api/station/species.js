import request from '@/utils/request'

// 查询已审核的分类农资
export function getSpeciesListByColumn(firstColumn) {
	return request({
		url: '/system/species/getListByColumn/' + firstColumn,
		method: 'get'
	})
}

// 查询新品种详细
export function getSpeciesDetails(newsId) {
	return request({
		url: '/system/species/' + newsId,
		method: 'get'
	})
}

// 更新阅读量
export function updateSpeciesReading(data) {
	return request({
		url: '/system/species/updateReading',
		method: 'put',
		data: data
	})
}
// 更新点赞量
export function addSpeciesLikes(data) {
	return request({
		url: '/system/species/addLikes',
		method: 'put',
		data: data
	})
}
export function subSpeciesLikes(data) {
	return request({
		url: '/system/species/subLikes',
		method: 'put',
		data: data
	})
}

// 更新收藏量
export function addSpeciesCollect(data) {
	return request({
		url: '/system/species/addCollect',
		method: 'put',
		data: data
	})
}
export function subSpeciesCollect(data) {
	return request({
		url: '/system/species/subCollect',
		method: 'put',
		data: data
	})
}