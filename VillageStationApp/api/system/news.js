import request from '@/utils/request'

// 查询已审核的分类专家
export function getNewsListByColumn(firstColumn, secondColumn) { 
  return request({
    url: '/system/news/getListByColumn/' + firstColumn+'/'+secondColumn,
    method: 'get'
  })
}

export function getNews(newsId) {
  return request({
    url: '/system/news/getById/' + newsId,
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