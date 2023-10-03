package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbOtherColumnsMapper;
import com.ruoyi.system.domain.TbOtherColumns;
import com.ruoyi.system.service.ITbOtherColumnsService;

import javax.annotation.Resource;

/**
 * 其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-10-02
 */
@Service
public class TbOtherColumnsServiceImpl implements ITbOtherColumnsService 
{
    @Autowired
    private TbOtherColumnsMapper tbOtherColumnsMapper;

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
    @Override
    public TbOtherColumns selectTbOtherColumnsByNewsId(Long newsId)
    {
        return tbOtherColumnsMapper.selectTbOtherColumnsByNewsId(newsId);
    }



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
         热销农产：
     */
    @Override
    public List<TbOtherColumns> selectTbOtherColumnsList(TbOtherColumns tbOtherColumns)
    {
        return tbOtherColumnsMapper.selectTbOtherColumnsList(tbOtherColumns);
    }
    //获取全部未审核新闻
    @Override
    public List<TbOtherColumns> selectTbOtherColumnsRemarkList(TbOtherColumns tbOtherColumns) {
        return tbOtherColumnsMapper.selectTbOtherColumnsRemarkList(tbOtherColumns);
    }

    //获取一级栏目、二级栏目新闻
    @Override
    public List<TbOtherColumns> selectTbOtherColumnsByColumn(String firstColumn, String secondColumn) {
        System.out.println("??"+firstColumn+" "+secondColumn);
        return tbOtherColumnsMapper.selectTbOtherColumnsByColumn(firstColumn,secondColumn);
    }

    //获取一级栏目新闻
    @Override
    public List<TbOtherColumns> selectTbOtherColumnsByFirstColumn(String firstColumn) {
        System.out.println("??"+firstColumn);
        return tbOtherColumnsMapper.selectTbOtherColumnsByColumn(firstColumn);
    }

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
    @Override
    public int insertTbOtherColumns(TbOtherColumns tbOtherColumns)
    {
        tbOtherColumns.setCreateTime(DateUtils.getNowDate());
        return tbOtherColumnsMapper.insertTbOtherColumns(tbOtherColumns);
    }

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
    @Override
    public int updateTbOtherColumns(TbOtherColumns tbOtherColumns)
    {
        tbOtherColumns.setUpdateTime(DateUtils.getNowDate());
        return tbOtherColumnsMapper.updateTbOtherColumns(tbOtherColumns);
    }

    //修改未审核
    @Override
    public int updateTbOtherColumnsRemark(TbOtherColumns tbOtherColumns) {
        tbOtherColumns.setUpdateTime(DateUtils.getNowDate());
        return tbOtherColumnsMapper.updateTbOtherColumnsRemark(tbOtherColumns);
    }

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
         热销农产：主键
     * @return 结果
     */
    @Override
    public int deleteTbOtherColumnsByNewsIds(Long[] newsIds)
    {
        return tbOtherColumnsMapper.deleteTbOtherColumnsByNewsIds(newsIds);
    }

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
    @Override
    public int deleteTbOtherColumnsByNewsId(Long newsId)
    {
        return tbOtherColumnsMapper.deleteTbOtherColumnsByNewsId(newsId);
    }
}
