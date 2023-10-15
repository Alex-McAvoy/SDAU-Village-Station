import request from '@/utils/request'

// 查询线上培训列表
export function listOnlineTraining(query) {
  return request({
    url: '/system/online_training/list',
    method: 'get',
    params: query
  })
}

// 查询线上培训详细
export function getOnlineTraining(newsId) {
  return request({
    url: '/system/online_training/' + newsId,
    method: 'get'
  })
}

// 新增线上培训
export function addTraining(data) {
  return request({
    url: '/system/online_training',
    method: 'post',
    data: data
  })
}

// 修改线上培训
export function updateTraining(data) {
  return request({
    url: '/system/online_training',
    method: 'put',
    data: data
  })
}

// 删除线上培训
export function delTraining(newsId) {
  return request({
    url: '/system/training/' + newsId,
    method: 'delete'
  })
}
//培训视频文件上传测试
export function addTrainingVideo() { 
  return request({
    url: '/uploadVideo',
    method: 'post'
  })
}

// 更新阅读量
export function updateOnlineTrainingReading(data) {
	return request({
		url: '/system/online_training/updateReading',
		method: 'put',
		data: data
	})
}
// 更新点赞量
export function addOnlineTrainingLikes(data) {
	return request({
		url: '/system/online_training/addLikes',
		method: 'put',
		data: data
	})
}
export function subOnlineTrainingLikes(data) {
	return request({
		url: '/system/online_training/subLikes',
		method: 'put',
		data: data
	})
}

// 更新收藏量
export function addOnlineTrainingCollect(data) {
	return request({
		url: '/system/online_training/addCollect',
		method: 'put',
		data: data
	})
}
export function subOnlineTrainingCollect(data) {
	return request({
		url: '/system/online_training/subCollect',
		method: 'put',
		data: data
	})
}

export function queryOnlineChannel(query) {
	return request({
		url: '/system/online_training/like/' + query,
		method: 'get',
	})
}