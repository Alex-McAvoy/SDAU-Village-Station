import request from '@/utils/request'

// 查询其它栏目
      //  一级栏目              二级栏目 （在字典中设置）
      //    学农技：            水稻、小麦..
      //    买农资：           节肥增效、虫害防治..
      //    找渠道：           供应、求购..
      //    推优品：           我的优品、品牌展示..
      //    新品种：
      //    培训：              园艺培训、粮食种植..
      //    热销农产：列表
export function listColumns(query) {
  return request({
    url: '/system/news/list',
    method: 'get',
    params: query
  })
}
//未审核
export function listColumnsRemark(query) {
  return request({
    url: '/system/news/getFirstColumns',
    method: 'get',
    params: query
  })
}

// 修改未审核
export function checkNews(data) {
  return request({
    url: '/system/news/check',
    method: 'put',
    data: data
  })
}

// 查询其它栏目
      //    热销农产：详细
export function getColumns(newsId) { 
  return request({
    url: '/system/news/getById/' + newsId,
    method: 'get'
  })
}

// 新增其它栏目
      //  一级栏目              二级栏目 （在字典中设置）
      //    学农技：            水稻、小麦..
      //    买农资：           节肥增效、虫害防治..
      //    找渠道：           供应、求购..
      //    推优品：           我的优品、品牌展示..
      //    新品种：
      //    培训：              园艺培训、粮食种植..
      //    热销农产：
export function addColumns(data) {
  return request({
    url: '/system/news',
    method: 'post',
    data: data
  })
}

// 修改其它栏目
      //  一级栏目              二级栏目 （在字典中设置）
      //    学农技：            水稻、小麦..
      //    买农资：           节肥增效、虫害防治..
      //    找渠道：           供应、求购..
      //    推优品：           我的优品、品牌展示..
      //    新品种：
      //    培训：              园艺培训、粮食种植..
      //    热销农产：
export function updateColumns(data) {
  return request({
    url: '/system/news',
    method: 'put',
    data: data
  })
}

// 删除其它栏目
      //  一级栏目              二级栏目 （在字典中设置）
      //    学农技：            水稻、小麦..
      //    买农资：           节肥增效、虫害防治..
      //    找渠道：           供应、求购..
      //    推优品：           我的优品、品牌展示..
      //    新品种：
      //    培训：              园艺培训、粮食种植..
      //    热销农产：
export function delColumns(newsId) {
  return request({
    url: '/system/news/' + newsId,
    method: 'delete'
  })
}
