import request from '@/utils/request'

//获取已审核的分类新闻信息
export function getCheckNewsList(category, query) {
	return request({
		url: '/system/news/category_list/' + category,
		method: 'get',
		params: query
	})
}

//获取已审核的分类新闻信息
export function getCheckNewsListTag(category,sort, query) {
	return request({
		url: '/system/news/category_tag_list/' + category + '/'+ sort,
		method: 'get',
		params: query
	})
}

//获取num条已审核的分类新闻信息
export function getCheckNewsListLimit(category, num) {
	return request({
		url: '/system/news/category_list/' + category + '/' + num,
		method: 'get',
	})
}
export function getCheckNewsListLimitSort(category, num,sort) {
	return request({
		url: '/system/news/category_list/' + category + '/' + num + '/' + sort ,
		method: 'get',
	})
}

//根据id获取新闻详细信息
export function getCheckNewsDetails(id) {
	return request({
		url: '/system/news/' + id,
		method: 'get'
	})
}
// 更新阅读量
export function updateNewsReading(data) {
	return request({
		url: '/system/news/updateReading',
		method: 'put',
		data: data
	})
}

// 更新点赞量
export function addNewsLikes(data) {
	return request({
		url: '/system/news/addLikes',
		method: 'put',
		data: data
	})
}
export function subNewsLikes(data) {
	return request({
		url: '/system/news/subLikes',
		method: 'put',
		data: data
	})
}

// 更新收藏量
export function addNewsCollect(data) {
	return request({
		url: '/system/news/addCollect',
		method: 'put',
		data: data
	})
}
export function subNewsCollect(data) {
	return request({
		url: '/system/news/subCollect',
		method: 'put',
		data: data
	})
}


// 搜索
export function queryNews(query) {
	return request({
		url: '/system/news/like/' + query,
		method: 'get',
	})
}


// 根据id列表查询
export function getNewsByIds(ids) {
	return request({
		url: '/system/news/get_ids/' + ids,
		method: 'get',
	})
}

