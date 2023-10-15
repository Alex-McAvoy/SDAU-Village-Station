import request from '@/utils/request'

// 查询推优品详细
export function getProductById(newsId) {
  return request({
    url: '/system/products/getById/' + newsId,
    method: 'get'
  })
}
// 查询已审核的分类优品
export function getProductsBySort(firstColumn,secondColumn,sort) { 
  return request({
    url: '/system/products/getListByColumn/' + firstColumn+'/'+secondColumn+ '/' + sort,
    method: 'get'
  })
}

export function getProductsByColumns(firstColumn,secondColumn) { 
  return request({
    url: '/system/products/getListByColumn/' + firstColumn+'/'+secondColumn,
    method: 'get'
  })
}

// 更新阅读量
export function updateProductsReading(data) {
	return request({
		url: '/system/products/updateReading',
		method: 'put',
		data: data
	})
}

// 更新点赞量
export function addProductsLikes(data) {
	return request({
		url: '/system/products/addLikes',
		method: 'put',
		data: data
	})
}
export function subProductsLikes(data) {
	return request({
		url: '/system/products/subLikes',
		method: 'put',
		data: data
	})
}

// 更新收藏量
export function addProductsCollect(data) {
	return request({
		url: '/system/products/addCollect',
		method: 'put',
		data: data
	})
}
export function subProductsCollect(data) {
	return request({
		url: '/system/products/subCollect',
		method: 'put',
		data: data
	})
}

export function queryProducts(query) {
	return request({
		url: '/system/products/like/' + query,
		method: 'get',
	})
}