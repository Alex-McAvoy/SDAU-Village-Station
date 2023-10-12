import request from '@/utils/request'


// 查询已审核的分类农资
export function getFarmListByColumn(firstColumn, secondColumn) { 
  return request({
    url: '/system/farm/getListByColumn/' + firstColumn+'/'+secondColumn,
    method: 'get'
  })
}

// 查询买农资详细
export function getFarm(newsId) {
  return request({
    url: '/system/farm/news/' + newsId,
    method: 'get'
  })
}

export function updateFarmReading(data) {
	return request({
		url: '/system/farm/updateReading',
		method: 'put',
		data: data
	})
}

