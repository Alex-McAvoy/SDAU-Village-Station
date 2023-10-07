import request from '@/utils/request'

// 查询新品种列表
export function listSpecies(query) {
  return request({
    url: '/system/species/list',
    method: 'get',
    params: query
  })
}

// 查询新品种详细
export function getSpecies(newsId) {
  return request({
    url: '/system/species/' + newsId,
    method: 'get'
  })
}

// 新增新品种
export function addSpecies(data) {
  return request({
    url: '/system/species',
    method: 'post',
    data: data
  })
}

// 修改新品种
export function updateSpecies(data) {
  return request({
    url: '/system/species',
    method: 'put',
    data: data
  })
}

// 删除新品种
export function delSpecies(newsId) {
  return request({
    url: '/system/species/' + newsId,
    method: 'delete'
  })
}
