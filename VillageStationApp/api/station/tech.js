import request from '@/utils/request'


export function getTechdetail(title) {
  return request({
    url: '/system/tech/column/' + title,
    method: 'get'
  })
}