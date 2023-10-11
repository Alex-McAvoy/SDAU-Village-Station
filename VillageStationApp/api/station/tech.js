import request from '@/utils/request'


// 查询已审核的分类农技
export function getTechListByColumns(firstColumn,secondColumn) { 
  return request({
    url: '/system/tech/getListByColumn/' + firstColumn+'/'+secondColumn,
    method: 'get'
  })
}

//根据学农技id获取详情
export function getTechDetail(articleId) {
  return request({
    url: '/system/tech/article/' + articleId,
    method: 'get',
  })
}