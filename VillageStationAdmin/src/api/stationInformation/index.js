import request from '@/utils/request'

// 获取驿站信息列表
export function listColumns(query) {
  return request({
    url: '/system/station_information/list',
    method: 'get',
    params: query
  })
}

// 根据驿站id获取驿站信息
export function getStationInformationByStationId(stationId, query) {
  return request({
    url: '/system/station_information/list/' + stationId,
    method: 'get',
    params: query
  })
}

//未审核
export function listColumnsRemark(query) {
  return request({
    url: '/system/station_information/unaudited_list',
    method: 'get',
    params: query
  })
}

// 根据驿站id获取未审核
export function getUnauditedListByStationId(stationId) {
  return request({
    url: '/system/station_information/unaudited_list/' + stationId,
    method: 'get'
  })
}

// 修改未审核
export function checkStation(data) {
  return request({
    url: '/system/station_information/check',
    method: 'put',
    data: data
  })
}

// 查询其它栏目详细
export function getColumns(id) { 
  return request({
    url: '/system/station_information/' + id,
    method: 'get'
  })
}

// 新增其它栏目
export function addColumns(data) {
  return request({
    url: '/system/station_information',
    method: 'post',
    data: data
  })
}

// 修改其它栏目
export function updateColumns(data) {
  return request({
    url: '/system/station_information',
    method: 'put',
    data: data
  })
}

// 删除其它栏目
export function delColumns(ids) {
  return request({
    url: '/system/station_information/' + ids,
    method: 'delete'
  })
}
