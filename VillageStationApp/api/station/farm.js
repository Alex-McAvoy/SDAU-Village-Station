import request from '@/utils/request'


// 查询已审核的分类农资
export function getFarmListByColumn(firstColumn, secondColumn) { 
  return request({
    url: '/system/farm/getListByColumn/' + firstColumn+'/'+secondColumn,
    method: 'get'
  })
}

// 查询买农资详细
export function getFarm(newsId) {
  return request({
    url: '/system/farm/news/' + newsId,
    method: 'get'
  })
}

// 更新阅读量
export function updateFarmReading(data) {
	return request({
		url: '/system/farm/updateReading',
		method: 'put',
		data: data
	})
}

// 更新点赞量
export function addFarmLikes(data) {
	return request({
		url: '/system/farm/addLikes',
		method: 'put',
		data: data
	})
}
export function subFarmLikes(data) {
	return request({
		url: '/system/farm/subLikes',
		method: 'put',
		data: data
	})
}

// 更新收藏量
export function addFarmCollect(data) {
	return request({
		url: '/system/farm/addCollect',
		method: 'put',
		data: data
	})
}
export function subFarmCollect(data) {
	return request({
		url: '/system/farm/subCollect',
		method: 'put',
		data: data
	})
}
