import request from '@/utils/request'

// 查询线下培训列表
export function listTraining(query) {
  return request({
    url: '/system/training/list',
    method: 'get',
    params: query
  })
}

// 查询线下培训详细
export function getTraining(newsId) {
  return request({
    url: '/system/training/' + newsId,
    method: 'get'
  })
}

//未审核
export function trainingFirstColums(query) {
  return request({
    url: '/system/training/getFirstCloumn',
    method: 'get',
    params: query
  })
}


// 新增线下培训
export function addTraining(data) {
  return request({
    url: '/system/training',
    method: 'post',
    data: data
  })
}

// 修改线下培训
export function updateTraining(data) {
  return request({
    url: '/system/training',
    method: 'put',
    data: data
  })
}

// 删除线下培训
export function delTraining(newsId) {
  return request({
    url: '/system/training/' + newsId,
    method: 'delete'
  })
}
