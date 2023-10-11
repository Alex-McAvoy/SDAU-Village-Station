import request from '@/utils/request'

// 查询推优品详细
export function getProductById(newsId) {
  return request({
    url: '/system/products/getById/' + newsId,
    method: 'get'
  })
}
// 查询已审核的分类优品
export function getProductsByColumns(firstColumn,secondColumn) { 
  return request({
    url: '/system/products/getListByColumn/' + firstColumn+'/'+secondColumn,
    method: 'get'
  })
}