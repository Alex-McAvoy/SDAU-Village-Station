import request from '@/utils/request'

// 根据用户id查询点赞列表
export function getLikesList(userId) {
  return request({
    url: '/system/likes/likeList/' + userId,
    method: 'get',
  })
}

// 通过 userid、table_name、article_id 查询收藏
export function getLikes(userId,tableName,articleId) {
  return request({
    url: '/system/likes/' + userId + "/" + tableName + "/" + articleId,
    method: 'get',
  })
}

// 新增点赞
export function addLikes(data) {
	return request({
		url: '/system/likes',
		method: 'post',
		data: data
	})
}

// 取消点赞
export function delLikes(userId, tableName, articleId) {
	return request({
		url: '/system/likes/' + userId + '/' + tableName + '/' + articleId,
		method: 'delete'
	})
}