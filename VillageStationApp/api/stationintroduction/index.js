import request from '@/utils/request'

//根据id获取驿站介绍
export function getStationIntroduction(stationId) {
	return request({
		url: '/system/station_introduction/list/' + stationId,
		method: 'get'
	})
}
