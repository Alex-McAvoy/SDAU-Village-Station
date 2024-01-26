import request from '@/utils/request'

// 查询驿站id为sort的已审核的随时问
export function getFreeAskListByColumn(deptId) {
	return request({
		url: '/system/free/question_list/' +  deptId,
		method: 'get',
	})
}

// 查询num条驿站id为sort的已审核的随时问
export function getFreeAskListByColumnAndNum(deptId, num) {
	return request({
		url: '/system/free/question_list/' +  deptId + '/' + num,
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

//随机获取num个已审核的随时问问题
export function getAddFreeAskListByNum(num) {
	return request({
		url: '/system/free/random_question_list/' +  num,
		method: 'get',
	})
}

//根据用户id获取用户问题列表
export function getQuestionListByuserId(userId) {
	return request({
		url: '/system/free/user_question_list/' +  userId,
		method: 'get',
	})
}