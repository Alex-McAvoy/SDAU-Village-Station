import request from '@/utils/request'

// 查询找渠道列表
export function listChannel(query) {
  return request({
    url: '/system/channel/list',
    method: 'get',
    params: query
  })
}

// 查询找渠道详细
export function getChannel(newsId) {
  return request({
    url: '/system/channel/' + newsId,
    method: 'get'
  })
}

// 新增找渠道
export function addChannel(data) {
  return request({
    url: '/system/channel',
    method: 'post',
    data: data
  })
}

// 修改找渠道
export function updateChannel(data) {
  return request({
    url: '/system/channel',
    method: 'put',
    data: data
  })
}

// 删除找渠道
export function delChannel(newsId) {
  return request({
    url: '/system/channel/' + newsId,
    method: 'delete'
  })
}
