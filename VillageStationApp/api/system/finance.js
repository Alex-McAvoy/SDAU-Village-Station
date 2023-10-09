import request from '@/utils/request'

// 查询金融列表
export function listFinance(query) {
  return request({
    url: '/system/finance/list',
    method: 'get',
    params: query
  })
}

// 查询金融详细
export function getFinance(newsId) {
  return request({
    url: '/system/finance/id/' + newsId,
    method: 'get'
  })
}


// 根据firstcolumn查询金融详细
export function getfirstColumnFinance(firstColumn) {
  return request({
    url: '/system/finance/column/' + firstColumn,
    method: 'get'
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
export function delFinance(newsId) {
  return request({
    url: '/system/finance/' + newsId,
    method: 'delete'
  })
}