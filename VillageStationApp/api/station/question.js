import request from '@/utils/request'

// 查询评论/问答列表
export function listQuestion(expertId, firstColumn) {
  return request({
    url: '/system/question/getListByColumn/' + expertId + '/' + firstColumn,
    method: 'get',
  })
}



//根据问题id获取问题
export function getOneQuestion(onequestionId) {
  return request({
    url: '/system/question/onequestion/' + onequestionId,
    method: 'get',
  })
}
//获取问题id获取评论
export function getOneQuery(onequestionId,firstColumn) {
  return request({
    url: '/system/question/parent/' + onequestionId + '/' + firstColumn,
    method: 'get'
  })
}
//新增详情评论
export function addComment(data) {
  return request({
    url: '/system/question',
    method: 'post',
    data: data
  })
}

// 新增问题
export function addQuestion(data) {
  return request({
    url: '/system/question',
    method: 'post',
    data: data
  })
}
