import request from '@/utils/request'

//获取已审核的分类金融信息
export function getCheckFinance(index) {
  return request({
    url: '/system/finance/category_list/'+index ,
    method: 'get',
  })
}
//查询金融详情
export function getFinanceDetail(id) {
  return request({
    url: '/system/finance/'+id ,
    method: 'get',
  })
}
// 更新阅读量
export function updateFinanceReading(data) {
	return request({
		url: '/system/finance/updateReading',
		method: 'put',
		data: data
	})
}

// 更新点赞量
export function addFinanceLikes(data) {
	return request({
		url: '/system/finance/addLikes',
		method: 'put',
		data: data
	})
}
export function subFinanceLikes(data) {
	return request({
		url: '/system/finance/subLikes',
		method: 'put',
		data: data
	})
}

// 更新收藏量
export function addFinanceCollect(data) {
	return request({
		url: '/system/finance/addCollect',
		method: 'put',
		data: data
	})
}
export function subFinanceCollect(data) {
	return request({
		url: '/system/finance/subCollect',
		method: 'put',
		data: data
	})
}

// 搜索
export function queryFinance(query) {
	return request({
		url: '/system/finance/like/' + query,
		method: 'get',
	})
}


// 根据id列表查询
export function getFinanceByIds(ids) {
	return request({
		url: '/system/finance/get_ids/' + ids,
		method: 'get',
	})
}
