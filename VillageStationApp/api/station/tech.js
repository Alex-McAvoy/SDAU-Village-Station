import request from '@/utils/request'


// 查询已审核的分类农技
export function getTechListByColumns(firstColumn,secondColumn) { 
  return request({
    url: '/system/tech/getListByColumn/' + firstColumn+'/'+secondColumn,
    method: 'get'
  })
}

//根据学农技id获取详情
export function getTechDetail(articleId) {
  return request({
    url: '/system/tech/article/' + articleId,
    method: 'get',
  })
}

// 更新阅读量
export function updateTechReading(data) {
	return request({
		url: '/system/tech/updateReading',
		method: 'put',
		data: data
	})
}
// 更新点赞量
export function addTechLikes(data) {
	return request({
		url: '/system/tech/addLikes',
		method: 'put',
		data: data
	})
}

// 更新收藏量
export function addTechCollect(data) {
	return request({
		url: '/system/tech/addCollect',
		method: 'put',
		data: data
	})
}