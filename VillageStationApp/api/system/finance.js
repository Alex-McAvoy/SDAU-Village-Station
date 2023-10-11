import request from '@/utils/request'


// 查询金融详细
export function getFinance(newsId) {
  return request({
    url: '/system/finance/id/' + newsId,
    method: 'get'
  })
}


// 查询已审核的分类金融
export function getExpertListByColumn(firstColumn, secondColumn) { 
  return request({
    url: '/system/finance/getListByColumn/' + firstColumn+'/'+secondColumn,
    method: 'get'
  })
}
