import request from '@/utils/request'
// 更新阅读量
export function updateOnlineTrainingReading(data) {
	return request({
		url: '/system/online_training/updateReading',
		method: 'put',
		data: data
	})
}
//更新点赞量
export function addOnlineTrainingLikes(data) {
	return request({
		url: '/system/online_training/addLikes',
		method: 'put',
		data: data
	})
}
export function subOnlineTrainingLikes(data) {
	return request({
		url: '/system/online_training/subLikes',
		method: 'put',
		data: data
	})
}
// 更新收藏量
export function addOnlineTrainingCollect(data) {
	return request({
		url: '/system/online_training/addCollect',
		method: 'put',
		data: data
	})
}
export function subOnlineTrainingCollect(data) {
	return request({
		url: '/system/online_training/subCollect',
		method: 'put',
		data: data
	})
}


// 搜索
export function queryOnlineChannel(query) {
	return request({
		url: '/system/online_training/like/' + query,
		method: 'get',
	})
}


// 根据id列表查询
export function getOnlineTrainingByIds(ids) {
	return request({
		url: '/system/online_training/get_ids/' + ids,
		method: 'get',
	})
}