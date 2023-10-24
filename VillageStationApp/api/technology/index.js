import request from '@/utils/request'

// 查询线上培训列表
export function getOnlineTrainingList() {
  return request({
    url: '/system/online_training/audit_list',
    method: 'get',
  })
}

// 查询线下培训列表
export function getOfflineTrainingList() {
  return request({
    url: '/system/offline_training/audit_list',
    method: 'get',
  })
}




// 根据id查询线上培训详细
export function getOnlineTrainingDetail(id) {
  return request({
    url: '/system/online_training/' + id,
    method: 'get'
  })
}

// 根据id查询线下培训详细
export function getOfflineTrainingDetail(id) {
  return request({
    url: '/system/offline_training/' + id,
    method: 'get'
  })
}




//培训视频文件上传测试
export function addTrainingVideo() { 
  return request({
    url: '/uploadVideo',
    method: 'post'
  })
}


export function queryOnlineChannel(query) {
	return request({
		url: '/system/online_training/like/' + query,
		method: 'get',
	})
}