package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TbOtherColumns;

/**
 * 其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：Service接口
 * 
 * @author ruoyi
 * @date 2023-10-02
 */
public interface ITbOtherColumnsService 
{
    /**
     * 查询其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：
     * 
     * @param newsId 其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：主键
     * @return 其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：
     */
    public TbOtherColumns selectTbOtherColumnsByNewsId(Long newsId);
//    获取全部未审核
    List<TbOtherColumns> selectTbOtherColumnsRemarkList(TbOtherColumns tbOtherColumns);

    //获取一级栏目、二级栏目相应新闻

    List<TbOtherColumns> selectTbOtherColumnsByColumn(String firstColumn, String secondColumn);

    //获取一级栏目对应新闻
    List<TbOtherColumns> selectTbOtherColumnsByFirstColumn(String firstColumn);

    /**
     * 查询其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：列表
     * 
     * @param tbOtherColumns 其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：
     * @return 其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：集合
     */
    public List<TbOtherColumns> selectTbOtherColumnsList(TbOtherColumns tbOtherColumns);

    /**
     * 新增其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：
     * 
     * @param tbOtherColumns 其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：
     * @return 结果
     */
    public int insertTbOtherColumns(TbOtherColumns tbOtherColumns);

    /**
     * 修改其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：
     * 
     * @param tbOtherColumns 其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：
     * @return 结果
     */
    public int updateTbOtherColumns(TbOtherColumns tbOtherColumns);

    //修改remark
    public int updateTbOtherColumnsRemark(TbOtherColumns tbOtherColumns);

    /**
     * 批量删除其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：
     * 
     * @param newsIds 需要删除的其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：主键集合
     * @return 结果
     */
    public int deleteTbOtherColumnsByNewsIds(Long[] newsIds);

    /**
     * 删除其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：信息
     * 
     * @param newsId 其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：主键
     * @return 结果
     */
    public int deleteTbOtherColumnsByNewsId(Long newsId);



}
