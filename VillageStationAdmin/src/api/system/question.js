import request from '@/utils/request'

// 查询评论/问答列表
export function listQuestion(query) {
  return request({
    url: '/system/question/list',
    method: 'get',
    params: query
  })
}

// 查询评论/问答详细
export function getQuestion(questionId) {
  return request({
    url: '/system/question/' + questionId,
    method: 'get'
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
