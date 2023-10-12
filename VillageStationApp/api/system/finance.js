import request from '@/utils/request'


// 查询金融详细
export function getFinance(newsId) {
  return request({
    url: '/system/finance/id/' + newsId,
    method: 'get'
  })
}


// 查询已审核的分类金融
export function getFinanceListByColumn(firstColumn, secondColumn) { 
  return request({
    url: '/system/finance/getListByColumn/' + firstColumn+'/'+secondColumn,
    method: 'get'
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