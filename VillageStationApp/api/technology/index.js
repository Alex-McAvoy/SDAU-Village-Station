import request from '@/utils/request'

// 查询已审核的线上培训列表
export function getOnlineTrainingList(query) {
  return request({
    url: '/system/online_training/audit_list',
    method: 'get',
	params: query
  })
}

// 根据标签查询已审核的线上培训列表
export function getOnlineTrainingListTag(sort,query) {
  return request({
    url: '/system/online_training/audit_list_tag/' + sort,
    method: 'get',
	params: query
  })
}

// 查询num个已审核的线上培训列表
export function getOnlineTrainingListLimit(num) {
  return request({
    url: '/system/online_training/audit_list/' + num,
    method: 'get',
  })
}
export function getOnlineTrainingListLimitSort(num,sort) {
  return request({
    url: '/system/online_training/audit_list/' + num + '/' + sort ,
    method: 'get',
  })
}

// 查询已审核的线下培训列表
export function getOfflineTrainingList(query) {
  return request({
    url: '/system/offline_training/audit_list',
    method: 'get',
	params: query
  })
}

// 根据标签查询已审核的线下培训列表
export function getOfflineTrainingListTag(sort,query) {
  return request({
    url: '/system/offline_training/audit_list_tag/' + sort,
    method: 'get',
	params: query
  })
}

// 查询num个已审核的线下培训列表
export function getOfflineTrainingListLimit(num) {
  return request({
    url: '/system/offline_training/audit_list/' + num,
    method: 'get',
  })
}
export function getOfflineTrainingListLimitSort(num,sort) {
  return request({
    url: '/system/offline_training/audit_list/' + num + '/' + sort ,
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