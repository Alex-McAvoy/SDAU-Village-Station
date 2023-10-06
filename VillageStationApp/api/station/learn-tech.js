import request from '@/utils/request'

//根据学农技id获取详情
export function getTechdetail(articleId) {
  return request({
    url: '/system/tech/article/' + articleId,
    method: 'get',
  })
}