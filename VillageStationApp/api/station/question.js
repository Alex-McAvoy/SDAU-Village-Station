import request from '@/utils/request'

// 查询评论/问答列表
export function listQuestion(expertId) {
  return request({
    url: '/system/question/expert/' + expertId,
    method: 'get',
  })
}
//根据问题id获取问题
export function getoneQuestion(onequestionId) {
  return request({
    url: '/system/question/onequestion/' + onequestionId,
    method: 'get',
  })
}
//获取问题id获取评论
export function getoneQuery(onequestionId) {
  return request({
    url: '/system/question/parent/' + onequestionId,
    method: 'get'
  })
}
// 查询评论/问答详细
export function getQuestion(questionId) {
  return request({
    url: '/system/question/' + questionId,
    method: 'post'
  })
}
//新增详情评论
export function adddetailQuestion(data) {
  return request({
    url: '/system/question',
    method: 'post',
    data: data
  })
}
// 新增评论/问答
export function addQuestion(data) {
  return request({
    url: '/system/question',
    method: 'post',
    data: data
  })
}

// 修改评论/问答
export function updateQuestion(data) {
  return request({
    url: '/system/question',
    method: 'put',
    data: data
  })
}

// 删除评论/问答
export function delQuestion(questionId) {
  return request({
    url: '/system/question/' + questionId,
    method: 'delete'
  })
}