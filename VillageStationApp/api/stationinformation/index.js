import request from '@/utils/request'

//获取已审核的分类驿站信息
export function getCheckStationInformationList(category) {
	return request({
		url: '/system/station_information/category_list/' + category,
		method: 'get',
	})
}
//获取num条已审核的分类驿站信息
export function getCheckStationInformationListLimit(category, num) {
	return request({
		url: '/system/station_information/category_list/' + category + '/' + num,
		method: 'get',
	})
}

//获取驿站号为sort的已审核的分类驿站信息
export function getCheckStationInformationSortList(category, sort, query) {
	return request({
		url: '/system/station_information/category_sort_list/' + category + '/' + sort,
		method: 'get',
		params: query
	})
}

//获取num条驿站号为sort的已审核的分类驿站信息
export function getCheckStationInformationSortListLimit(category, num, sort) {
	return request({
		url: '/system/station_information/category_sort_list/' + category + '/' + num + '/' + sort,
		method: 'get',
	})
}

//根据id获取驿站信息详细信息
export function getCheckStationInformationDetails(id) {
	return request({
		url: '/system/station_information/' + id,
		method: 'get'
	})
}
// 更新阅读量
export function updateStationInformationReading(data) {
	return request({
		url: '/system/station_information/updateReading',
		method: 'put',
		data: data
	})
}

// 更新点赞量
export function addStationInformationLikes(data) {
	return request({
		url: '/system/station_information/addLikes',
		method: 'put',
		data: data
	})
}
export function subStationInformationLikes(data) {
	return request({
		url: '/system/station_information/subLikes',
		method: 'put',
		data: data
	})
}

// 更新收藏量
export function addStationInformationCollect(data) {
	return request({
		url: '/system/station_information/addCollect',
		method: 'put',
		data: data
	})
}
export function subStationInformationCollect(data) {
	return request({
		url: '/system/station_information/subCollect',
		method: 'put',
		data: data
	})
}


// 搜索
export function queryStationInformation(query) {
	return request({
		url: '/system/station_information/like/' + query,
		method: 'get',
	})
}


// 根据id列表查询
export function getStationInformationByIds(ids) {
	return request({
		url: '/system/station_information/get_ids/' + ids,
		method: 'get',
	})
}

