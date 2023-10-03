import request from '@/utils/request'
//测试用，需删除
export function Columns(firstColumn,secondColumn) {
  var url_ = '/system/columns/getNewsByColumn/'+firstColumn+'/'+secondColumn; 
  //alert(url_);
  return request({
    url: url_,
    method: 'get',
  })
}

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
    url: '/system/columns/list',
    method: 'get',
    params: query
  })
}
//未审核
export function listColumnsRemark(query) {
  return request({
    url: '/system/columns/getRemark',
    method: 'get',
    params: query
  })
}

// 查询其它栏目
      //  一级栏目              二级栏目 （在字典中设置）
      //    学农技：            水稻、小麦..
      //    买农资：           节肥增效、虫害防治..
      //    找渠道：           供应、求购..
      //    推优品：           我的优品、品牌展示..
      //    新品种：
      //    培训：              园艺培训、粮食种植..
      //    热销农产：详细
export function getColumns(newsId) {
  return request({
    url: '/system/columns/getById/' + newsId,
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
    url: '/system/columns',
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
    url: '/system/columns',
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
    url: '/system/columns/' + newsId,
    method: 'delete'
  })
}
