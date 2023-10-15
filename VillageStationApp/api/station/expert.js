import request from '@/utils/request'

// 查询问专家详细
export function getExpert(askExpertsId) {
  return request({
    url: '/system/expert/id/' + askExpertsId,
    method: 'get'
  })
}


// 查询已审核的分类专家
export function getExpertListByColumn(firstColumn, dictValue) { 
  return request({
    url: '/system/expert/getListByColumn/' + firstColumn+'/'+dictValue,
    method: 'get'
  })
}

export function updateInfoReading(data) {
	return request({
		url: '/system/expert/updateReading',
		method: 'put',
		data: data
	})
}

export function queryExpert(query) {
	return request({
		url: '/system/expert/like/' + query,
		method: 'get',
	})
}