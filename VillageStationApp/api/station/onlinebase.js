import request from '@/utils/request'


//根据市查询区

export function citytList(cityId) {
  return request({
      url: '/system/dept/' + cityId,
      method: 'get'
  })
}

export function listStation(query) {
  return request({
    url: '/system/dept/list',
    method: 'get',
    params: query
  })
}