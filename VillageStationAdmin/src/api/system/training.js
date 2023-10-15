import request from '@/utils/request'

// 查询线下培训列表
export function listTraining(query) {
  return request({
    url: '/system/offline_training/list',
    method: 'get',
    params: query
  })
}

// 查询线下培训详细
export function getTraining(newsId) {
  return request({
    url: '/system/offline_training/' + newsId,
    method: 'get'
  })
}

//未审核
export function trainingFirstColums(query) {
  return request({
    url: '/system/offline_training/getFirstColumns',
    method: 'get',
    params: query
  })
}

// 修改未审核
export function checkTraining(data) {
  return request({
    url: '/system/offline_training/check',
    method: 'put',
    data: data
  })
}

// 新增线下培训
export function addTraining(data) {
  return request({
    url: '/system/offline_training',
    method: 'post',
    data: data
  })
}

// 修改线下培训
export function updateTraining(data) {
  return request({
    url: '/system/offline_training',
    method: 'put',
    data: data
  })
}

// 删除线下培训
export function delTraining(newsId) {
  return request({
    url: '/system/offline_training/' + newsId,
    method: 'delete'
  })
}
