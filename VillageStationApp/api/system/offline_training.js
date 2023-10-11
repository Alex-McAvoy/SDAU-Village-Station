import request from '@/utils/request'

export function getOfflineTrainingListByColumn(firstColumn) { 
  return request({
    url: '/system/offline_training/getListByColumn/' + firstColumn,
    method: 'get'
  })
}
