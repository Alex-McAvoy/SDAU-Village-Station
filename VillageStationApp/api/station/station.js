import request from '@/utils/request'

// 查询已审核的分类农资
export function getStationListByColumn(firstColumn) { 
  return request({
    url: '/system/info/getListByColumn/' + firstColumn,
    method: 'get'
  })
}
//获取驿站详情
export function getInfoDetail(newsId) {
  return request({
  url: '/system/info/id/' + newsId,
    method: 'get'
  })
}
