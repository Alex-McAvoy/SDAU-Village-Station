import request from '@/utils/request'

export function getOfflineTrainingListByColumn(firstColumn) { 
  return request({
    url: '/system/offline_training/getListByColumn/' + firstColumn,
    method: 'get'
  })
}

export function getOfflineTraining(newsId) {
  return request({
    url: '/system/offline_training/' + newsId,
    method: 'get'
  })
}

// 更新阅读量
export function updateOfflineTrainingReading(data) {
	return request({
		url: '/system/offline_training/updateReading',
		method: 'put',
		data: data
	})
}
// 更新点赞量
export function addOfflineTrainingLikes(data) {
	return request({
		url: '/system/offline_training/addLikes',
		method: 'put',
		data: data
	})
}

// 更新收藏量
export function addOfflineTrainingCollect(data) {
	return request({
		url: '/system/offline_training/addCollect',
		method: 'put',
		data: data
	})
}