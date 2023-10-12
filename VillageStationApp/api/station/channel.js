import request from '@/utils/request'


// 查询已审核的分类渠道
export function getChannelListByColumns(firstColumn,secondColumn) { 
  return request({
    url: '/system/channel/getListByColumn/' + firstColumn+'/'+secondColumn,
    method: 'get'
  })
}

// 查询找渠道详细
export function getChannel(newsId) {
  return request({
    url: '/system/channel/' + newsId,
    method: 'get'
  })
}

// 新增找渠道
export function addChannel(data) {
  return request({
    url: '/system/channel',
    method: 'post',
    data: data
  })
}

// 修改找渠道
export function updateChannel(data) {
  return request({
    url: '/system/channel',
    method: 'put',
    data: data
  })
}

// 删除找渠道
export function delChannel(newsId) {
  return request({
    url: '/system/channel/' + newsId,
    method: 'delete'
  })
}

// 更新阅读量
export function updateChannelReading(data) {
	return request({
		url: '/system/channel/updateReading',
		method: 'put',
		data: data
	})
}

// 更新点赞量
export function addChannelLikes(data) {
	return request({
		url: '/system/channel/addLikes',
		method: 'put',
		data: data
	})
}

// 更新收藏量
export function addChannelCollect(data) {
	return request({
		url: '/system/channel/addCollect',
		method: 'put',
		data: data
	})
}