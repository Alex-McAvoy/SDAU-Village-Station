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
    url: '/system/dept/list_station',
    method: 'get',
    params: query
  })
}

// 查询用户-驿站详细
export function getUserStation(userId) {
  return request({
    url: '/system/user_station/' + userId,
    method: 'get'
  })
}

// 新增用户-驿站
export function addUserStation(data) {
  return request({
    url: '/system/user_station',
    method: 'post',
    data: data
  })
}


// 修改用户-驿站
export function updateUserStation(data) {
  return request({
    url: '/system/user_station',
    method: 'put',
    data: data
  })
}
// 修改用户个人信息
export function updateUserProfile(data) {
  return request({
    url: '/system/user/profile',
    method: 'put',
    data: data
  })
}
