import request from '@/utils/request'

// 查询推优品列表
export function listProducts(query) {
  return request({
    url: '/system/products/list',
    method: 'get',
    params: query
  })
}

// 查询推优品详细
export function getProducts(newsId) {
  return request({
    url: '/system/products/getById/' + newsId,
    method: 'get'
  })
}
//根据栏目推荐优品
export function getProductsByColumns(firstColumn,secondColumn) { 
  return request({
    url: '/system/products/getNewsByColumn/' + firstColumn+'/'+secondColumn,
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
