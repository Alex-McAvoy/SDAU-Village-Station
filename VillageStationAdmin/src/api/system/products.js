import request from '@/utils/request'

// 查询推优品列表
export function listProducts(query) {
  return request({
    url: '/system/products/list',
    method: 'get',
    params: query
  })
}
//未审核
export function listFirstColums() {
  return request({
    url: '/system/products/getFirstColumns',
    method: 'get',
  })
}

// 修改审核
export function checkProducts(data) {
  return request({
    url: '/system/products/check',
    method: 'put',
    data: data
  })
}

// 查询推优品详细
export function getProducts(newsId) {
  return request({
    url: '/system/products/getById/' + newsId,
    method: 'get'
  })
}

// 新增推优品
export function addProducts(data) {
  return request({
    url: '/system/products',
    method: 'post',
    data: data
  })
}

// 修改推优品
export function updateProducts(data) {
  return request({
    url: '/system/products',
    method: 'put',
    data: data
  })
}

// 删除推优品
export function delProducts(newsId) {
  return request({
    url: '/system/products/' + newsId,
    method: 'delete'
  })
}
