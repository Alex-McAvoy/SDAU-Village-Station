import request from '@/utils/request'

// 查询已审核的分类专家
export function getNewsListByColumn(firstColumn, secondColumn) { 
  return request({
    url: '/system/news/getListByColumn/' + firstColumn+'/'+secondColumn,
    method: 'get'
  })
}