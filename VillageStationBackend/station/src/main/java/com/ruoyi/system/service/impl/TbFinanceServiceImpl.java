package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbFinanceMapper;
import com.ruoyi.system.domain.TbFinance;
import com.ruoyi.system.service.ITbFinanceService;

/**
 * 金融Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-10-09
 */
@Service
public class TbFinanceServiceImpl implements ITbFinanceService 
{
    @Autowired
    private TbFinanceMapper tbFinanceMapper;

    /**
     * 查询金融
     * 
     * @param newsId 金融主键
     * @return 金融
     */
    @Override
    public TbFinance selectTbFinanceByNewsId(Long newsId)
    {
        return tbFinanceMapper.selectTbFinanceByNewsId(newsId);
    }


    /**
     * 查询金融列表
     * 
     * @param tbFinance 金融
     * @return 金融
     */
    @Override
    public List<TbFinance> selectTbFinanceList(TbFinance tbFinance)
    {
        return tbFinanceMapper.selectTbFinanceList(tbFinance);
    }

    /**
     * 新增金融
     * 
     * @param tbFinance 金融
     * @return 结果
     */
    @Override
    public int insertTbFinance(TbFinance tbFinance)
    {
        tbFinance.setCreateTime(DateUtils.getNowDate());
        return tbFinanceMapper.insertTbFinance(tbFinance);
    }

    /**
     * 修改金融
     * 
     * @param tbFinance 金融
     * @return 结果
     */
    @Override
    public int updateTbFinance(TbFinance tbFinance)
    {
        tbFinance.setUpdateTime(DateUtils.getNowDate());
        return tbFinanceMapper.updateTbFinance(tbFinance);
    }

    /**
     * 批量删除金融
     * 
     * @param newsIds 需要删除的金融主键
     * @return 结果
     */
    @Override
    public int deleteTbFinanceByNewsIds(Long[] newsIds)
    {
        return tbFinanceMapper.deleteTbFinanceByNewsIds(newsIds);
    }

    /**
     * 删除金融信息
     * 
     * @param newsId 金融主键
     * @return 结果
     */
    @Override
    public int deleteTbFinanceByNewsId(Long newsId)
    {
        return tbFinanceMapper.deleteTbFinanceByNewsId(newsId);
    }

    @Override
    public List<TbFinance> selectTbFinanceByFirstColumn(String firstColumn, String secondColumn)
    {
        return tbFinanceMapper.selectTbFinanceByFirstColumn(firstColumn, secondColumn);
    }

    @Override
    public List<TbFinance> selectTbFinanceFirstColumnsList(TbFinance tbFinance) {
        return tbFinanceMapper.selectTbFinanceFirstColumnsList(tbFinance);
    }

    @Override
    public int updateTbFinanceFirstColumns(TbFinance tbFinance) {
        tbFinance.setUpdateTime(DateUtils.getNowDate());
        return tbFinanceMapper.updateTbFinanceFirstColumns(tbFinance);
    }
    @Override
    public int updateReading(TbFinance tbFinance) {
        return tbFinanceMapper.updateReading(tbFinance);
    }

    @Override
    public int addLikes(TbFinance tbFinance) {
        return tbFinanceMapper.addLikes(tbFinance);
    }

    @Override
    public int addCollect(TbFinance tbFinance) {
        return tbFinanceMapper.addCollect(tbFinance);
    }
}