import request from '@/utils/request'

// 获取随时问题列表
export function listfreeAsk(query) {
  return request({
    url: '/system/free/list',
    method: 'get',
    params: query
  })
}
//新增随时问问题
export function addAskQuestion(data) {
  return request({
    url: '/system/free/',
    method: 'post',
    data: data
  })
}
//根据随时问问题id获取问题
export function getAskQuestiondetail(askquestionId) {
  return request({
    url: '/system/free/ask/' + askquestionId,
    method: 'get',
  })
}
//新增随时问问题的评论
export function addAskdetailQuestion(data) {
  return request({
    url: '/system/free/',
    method: 'post',
    data: data
  })
}
//根据随时问题id获取评论
export function getAskdetailQuery(askquestionId) {
  return request({
    url: '/system/free/parent/' + askquestionId,
    method: 'get'
  })
}