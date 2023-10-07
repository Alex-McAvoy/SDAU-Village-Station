package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbPurchaseFarmMapper;
import com.ruoyi.system.domain.TbPurchaseFarm;
import com.ruoyi.system.service.ITbPurchaseFarmService;

/**
 * 买农资Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-10-06
 */
@Service
public class TbPurchaseFarmServiceImpl implements ITbPurchaseFarmService 
{
    @Autowired
    private TbPurchaseFarmMapper tbPurchaseFarmMapper;


    /**
     * 查询买农资一级列表(类型)
     *
     * @param firstColumn  农资一级列表(类型)
     * @return 买农资
     */
    @Override
    public List<TbPurchaseFarm> selectTbPurchaseFarmByFirstColumn(String firstColumn)
    {
        return tbPurchaseFarmMapper.selectTbPurchaseFarmByFirstColumn(firstColumn);
    }



    /**
     * 查询买农资
     * 
     * @param newsId 买农资主键
     * @return 买农资
     */
    @Override
    public TbPurchaseFarm selectTbPurchaseFarmByNewsId(Long newsId)
    {
        return tbPurchaseFarmMapper.selectTbPurchaseFarmByNewsId(newsId);
    }

    /**
     * 查询买农资列表
     * 
     * @param tbPurchaseFarm 买农资
     * @return 买农资
     */
    @Override
    public List<TbPurchaseFarm> selectTbPurchaseFarmList(TbPurchaseFarm tbPurchaseFarm)
    {
        return tbPurchaseFarmMapper.selectTbPurchaseFarmList(tbPurchaseFarm);
    }

    /**
     * 新增买农资
     * 
     * @param tbPurchaseFarm 买农资
     * @return 结果
     */
    @Override
    public int insertTbPurchaseFarm(TbPurchaseFarm tbPurchaseFarm)
    {
        tbPurchaseFarm.setCreateTime(DateUtils.getNowDate());
        return tbPurchaseFarmMapper.insertTbPurchaseFarm(tbPurchaseFarm);
    }

    /**
     * 修改买农资
     * 
     * @param tbPurchaseFarm 买农资
     * @return 结果
     */
    @Override
    public int updateTbPurchaseFarm(TbPurchaseFarm tbPurchaseFarm)
    {
        tbPurchaseFarm.setUpdateTime(DateUtils.getNowDate());
        return tbPurchaseFarmMapper.updateTbPurchaseFarm(tbPurchaseFarm);
    }

    /**
     * 批量删除买农资
     * 
     * @param newsIds 需要删除的买农资主键
     * @return 结果
     */
    @Override
    public int deleteTbPurchaseFarmByNewsIds(Long[] newsIds)
    {
        return tbPurchaseFarmMapper.deleteTbPurchaseFarmByNewsIds(newsIds);
    }

    /**
     * 删除买农资信息
     * 
     * @param newsId 买农资主键
     * @return 结果
     */
    @Override
    public int deleteTbPurchaseFarmByNewsId(Long newsId)
    {
        return tbPurchaseFarmMapper.deleteTbPurchaseFarmByNewsId(newsId);
    }
}