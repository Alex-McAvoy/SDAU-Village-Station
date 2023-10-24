import request from '@/utils/request'

// 查询驿站信息列表
export function listInfo(query) {
  return request({
    url: '/system/info/list',
    method: 'get',
    params: query
  })
}

// 查询驿站信息详细
export function getInfo(newsId) {
  return request({
    url: '/system/info/id/' + newsId,
    method: 'get'
  })
}

//未审核
export function listRemark(query) {
  return request({
    url: '/system/info/getFirstColumns',
    method: 'get',
    params: query
  })
}

// 修改未审核
export function checkInfo(data) {
  return request({
    url: '/system/info/check',
    method: 'put',
    data: data
  })
}

// 新增驿站信息
export function addInfo(data) {
  return request({
    url: '/system/info',
    method: 'post',
    data: data
  })
}

// 修改驿站信息
export function updateInfo(data) {
  return request({
    url: '/system/info',
    method: 'put',
    data: data
  })
}

// 删除驿站信息
export function delInfo(newsId) {
  return request({
    url: '/system/info/' + newsId,
    method: 'delete'
  })
}
