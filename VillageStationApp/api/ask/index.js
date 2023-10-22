import request from '@/utils/request'

// 查询已审核的随时问
export function getFreeAskListByColumn(deptId) {
	return request({
		url: '/system/free/question_list/' +  deptId,
		method: 'get',
	})
}

//新增随时问
export function addFreeAsk(data) {
  return request({
    url: '/system/free',
    method: 'post',
    data: data
  })
}

//根据随时问问题id获取问题
export function getAskQuestionDetail(questionId) {
  return request({
    url: '/system/free/' + questionId,
    method: 'get',
  })
}


//根据随时问题id获取评论
export function getAskQuestionReview(askquestionId) {
  return request({
    url: '/system/free/parent/' + askquestionId,
    method: 'get'
  })
}

export function queryAskFree(query) {
	return request({
		url: '/system/free/like/' + query,
		method: 'get',
	})
}
