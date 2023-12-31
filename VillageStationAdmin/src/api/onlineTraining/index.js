import request from '@/utils/request'

// 查询线上培训列表
export function listTraining(query) {
  return request({
    url: '/system/online_training/list',
    method: 'get',
    params: query
  })
}

//未审核
export function trainingFirstColums(query) {
  return request({
    url: '/system/online_training/unaudited_list',
    method: 'get',
    params: query
  })
}

// 修改未审核
export function checkTraining(data) {
  return request({
    url: '/system/online_training/check',
    method: 'put',
    data: data
  })
}

// 查询线上培训详细
export function getTraining(id) {
  return request({
    url: '/system/online_training/' + id,
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
export function delTraining(ids) {
  return request({
    url: '/system/online_training/' + ids,
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

//模糊查询
export function queryList(query) { 
    return request({
      url: '/system/online_training/like/' + query,
      method: 'get'
    })
  }