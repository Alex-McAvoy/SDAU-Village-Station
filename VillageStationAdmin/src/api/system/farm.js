import request from '@/utils/request'

// 查询买农资列表
export function listFarm(query) {
  return request({
    url: '/system/farm/list',
    method: 'get',
    params: query
  })
}

// 查询买农资详细
export function getFarm(newsId) {
  return request({
    url: '/system/farm/news/' + newsId,
    method: 'get'
  })
}

// 新增买农资
export function addFarm(data) {
  return request({
    url: '/system/farm',
    method: 'post',
    data: data
  })
}

// 修改买农资
export function updateFarm(data) {
  return request({
    url: '/system/farm',
    method: 'put',
    data: data
  })
}

// 删除买农资
export function delFarm(newsId) {
  return request({
    url: '/system/farm/' + newsId,
    method: 'delete'
  })
}
