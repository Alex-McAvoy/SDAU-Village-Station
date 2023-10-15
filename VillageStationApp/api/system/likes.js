import request from '@/utils/request'

// 通过user_id 查询喜欢
export function listCollectByUserId(query) {
  return request({
    url: '/system/likes/likeList/'+query,
    method: 'get',
  })
}

// 新增喜欢
export function addLikes(data) {
	return request({
		url: '/system/likes',
		method: 'post',
		data: data
	})
}

// 删除喜欢
export function delLikesMultiId(userid, tablename, articleid) {
	return request({
		url: '/system/likes/del_likes/' + userid + '/' + tablename + '/' + articleid,
		method: 'delete'
	})
}