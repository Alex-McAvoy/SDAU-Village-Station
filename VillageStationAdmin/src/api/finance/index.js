import request from '@/utils/request'// 查询金融列表
export function listFinance(query) {
  return request({
    url: '/system/finance/list',
    method: 'get',
    params: query
  })
}// 查询金融详细
export function getFinance(id) {
  return request({
    url: '/system/finance/' + id,
    method: 'get'
  })
}
//未审核
export function listFirstColums(query) {
  return request({
    url: '/system/finance/unaudited_list',
    method: 'get',
    params: query
  })
}
// 新增金融
export function addFinance(data) {
  return request({
    url: '/system/finance',
    method: 'post',
    data: data
  })
}

// 修改金融
export function updateFinance(data) {
  return request({
    url: '/system/finance',
    method: 'put',
    data: data
  })
}

// 删除金融
export function delFinance(ids) {
  return request({
    url: '/system/finance/' + ids,
    method: 'delete'
  })
}

// 修改未审核
export function checkFinance(data) {
  return request({
    url: '/system/finance/check',
    method: 'put',
    data: data
  })
}
