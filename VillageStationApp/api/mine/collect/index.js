import request from '@/utils/request'

// 根据用户id查询收藏列表
export function getCollectList(userId) {
	return request({
		url: '/system/collect/collectList/' + userId,
		method: 'get'
	})
}


// 通过 userid、table_name、article_id 查询收藏
export function getCollect(userId,tableName,articleId) {
  return request({
    url: '/system/collect/' + userId + "/" + tableName + "/" + articleId,
    method: 'get',
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

// 取消收藏
export function delCollect(userId, tableName, articleId) {
	return request({
		url: '/system/collect/' + userId + '/' + tableName + '/' + articleId,
		method: 'delete'
	})
}