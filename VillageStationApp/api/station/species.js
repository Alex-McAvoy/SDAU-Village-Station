import request from '@/utils/request'

// 查询已审核的分类农资
export function getSpeciesListByColumn(firstColumn) {
	return request({
		url: '/system/species/getListByColumn/' + firstColumn,
		method: 'get'
	})
}

// 查询新品种详细
export function getSpeciesDetails(newsId) {
	return request({
		url: '/system/species/' + newsId,
		method: 'get'
	})
}