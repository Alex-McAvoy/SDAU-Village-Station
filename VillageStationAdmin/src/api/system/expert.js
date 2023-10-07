import request from '@/utils/request'

// 查询问专家列表
export function listExpert(query) {
  return request({
    url: '/system/expert/list',
    method: 'get',
    params: query
  })
}

// 查询问专家详细
export function getExpert(askExpertsId) {
  return request({
    url: '/system/expert/' + askExpertsId,
    method: 'get'
  })
}

// 新增问专家
export function addExpert(data) {
  return request({
    url: '/system/expert',
    method: 'post',
    data: data
  })
}

// 修改问专家
export function updateExpert(data) {
  return request({
    url: '/system/expert',
    method: 'put',
    data: data
  })
}

// 删除问专家
export function delExpert(askExpertsId) {
  return request({
    url: '/system/expert/' + askExpertsId,
    method: 'delete'
  })
}
