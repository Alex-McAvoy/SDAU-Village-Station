import request from '@/utils/request'

// 查询随时问列表
export function listFree(query) {
  return request({
    url: '/system/free/list',
    method: 'get',
    params: query
  })
}

//未审核问题
export function listFirstColums(query) {
  return request({
    url: '/system/free/getFirstColumns',
    method: 'get',
    params: query
  })
}

// export function listFirstColumn(firstColumn) {
//   return request({
//     url: '/system/free/getListByColumn/' + firstColumn,
//     method: 'get'
//   })
// }

// 修改审核
export function checkFree(data) {
  return request({
    url: '/system/free/check',
    method: 'put',
    data: data
  })
}

// 查询随时问详细
export function getFree(askFreeId) {
  return request({
    url: '/system/free/ask/' + askFreeId,
    method: 'get'
  })
}

// 新增随时问
export function addFree(data) {
  return request({
    url: '/system/free',
    method: 'post',
    data: data
  })
}

// 修改随时问
export function updateFree(data) {
  return request({
    url: '/system/free',
    method: 'put',
    data: data
  })
}

// 删除随时问
export function delFree(askFreeId) {
  return request({
    url: '/system/free/' + askFreeId,
    method: 'delete'
  })
}
