import request from '@/utils/request'

// 查询随时问列表
export function listFree(query) {
  return request({
    url: '/system/free/list',
    method: 'get',
    params: query
  })
}

// 查询随时问详细
export function getFree(askFreeId) {
  return request({
    url: '/system/free/ask/' + askFreeId,
    method: 'get'
  })
}

// 新增随时问
export function addFree(data) {
  return request({
    url: '/system/free',
    method: 'post',
    data: data
  })
}

// 修改随时问
export function updateFree(data) {
  return request({
    url: '/system/free',
    method: 'put',
    data: data
  })
}

// 删除随时问
export function delFree(askFreeId) {
  return request({
    url: '/system/free/' + askFreeId,
    method: 'delete'
  })
}
