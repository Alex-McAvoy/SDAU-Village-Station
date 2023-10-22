import request from '@/utils/request'

// 查询其它栏目
export function listColumns(query) {
  return request({
    url: '/system/news/list',
    method: 'get',
    params: query
  })
}
//未审核
export function listColumnsRemark(query) {
  return request({
    url: '/system/news/unaudited_list',
    method: 'get',
    params: query
  })
}

// 修改未审核
export function checkNews(data) {
  return request({
    url: '/system/news/check',
    method: 'put',
    data: data
  })
}

// 查询其它栏目详细
export function getColumns(id) { 
  return request({
    url: '/system/news/' + id,
    method: 'get'
  })
}

// 新增其它栏目
export function addColumns(data) {
  return request({
    url: '/system/news',
    method: 'post',
    data: data
  })
}

// 修改其它栏目
export function updateColumns(data) {
  return request({
    url: '/system/news',
    method: 'put',
    data: data
  })
}

// 删除其它栏目
export function delColumns(ids) {
  return request({
    url: '/system/news/' + ids,
    method: 'delete'
  })
}
