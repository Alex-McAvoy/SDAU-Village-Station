import request from '@/utils/request'

// 查询问专家列表
export function selectoffinetrainlist(query) {
  return request({
    url: '/system/training/list',
    method: 'get',
    params: query
  })
}