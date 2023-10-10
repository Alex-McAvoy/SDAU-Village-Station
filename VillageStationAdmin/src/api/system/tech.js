import request from '@/utils/request'

// 查询学农技列表
export function listTech(query) {
  return request({
    url: '/system/tech/list',
    method: 'get',
    params: query
  })
}

// 查询学农技详细
export function getTech(articleId) {
  return request({
    url: '/system/tech//article/' + articleId,
    method: 'get'
  })
}

// 新增学农技
export function addTech(data) {
  return request({
    url: '/system/tech',
    method: 'post',
    data: data
  })
}

// 修改学农技
export function updateTech(data) {
  return request({
    url: '/system/tech',
    method: 'put',
    data: data
  })
}

// 删除学农技
export function delTech(articleId) {
  return request({
    url: '/system/tech/' + articleId,
    method: 'delete'
  })
}
