package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbLearnTechMapper;
import com.ruoyi.system.domain.TbLearnTech;
import com.ruoyi.system.service.ITbLearnTechService;

/**
 * 学农技Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-10-05
 */
@Service
public class TbLearnTechServiceImpl implements ITbLearnTechService 
{
    @Autowired
    private TbLearnTechMapper tbLearnTechMapper;

    /**
     * 查询学农技二级列表(类型)
     *
     * @param firstColumn 农技一级列表(类型)
     * @return 学农技
     */
    @Override
    public List<TbLearnTech> selectTbLearnTechByFirstColumn(String firstColumn)
    {
        return tbLearnTechMapper.selectTbLearnTechByFirstColumn( firstColumn );
    }

    /**
     * 查询学农技
     * 
     * @param articleId 学农技主键
     * @return 学农技
     */
    @Override
    public TbLearnTech selectTbLearnTechByArticleId(Long articleId)
    {
        return tbLearnTechMapper.selectTbLearnTechByArticleId(articleId);
    }

    /**
     * 查询学农技列表
     * 
     * @param tbLearnTech 学农技
     * @return 学农技
     */
    @Override
    public List<TbLearnTech> selectTbLearnTechList(TbLearnTech tbLearnTech)
    {
        return tbLearnTechMapper.selectTbLearnTechList(tbLearnTech);
    }

    /**
     * 新增学农技
     * 
     * @param tbLearnTech 学农技
     * @return 结果
     */
    @Override
    public int insertTbLearnTech(TbLearnTech tbLearnTech)
    {
        tbLearnTech.setCreateTime(DateUtils.getNowDate());
        return tbLearnTechMapper.insertTbLearnTech(tbLearnTech);
    }

    /**
     * 修改学农技
     * 
     * @param tbLearnTech 学农技
     * @return 结果
     */
    @Override
    public int updateTbLearnTech(TbLearnTech tbLearnTech)
    {
        tbLearnTech.setUpdateTime(DateUtils.getNowDate());
        return tbLearnTechMapper.updateTbLearnTech(tbLearnTech);
    }

    /**
     * 批量删除学农技
     * 
     * @param articleIds 需要删除的学农技主键
     * @return 结果
     */
    @Override
    public int deleteTbLearnTechByArticleIds(Long[] articleIds)
    {
        return tbLearnTechMapper.deleteTbLearnTechByArticleIds(articleIds);
    }

    /**
     * 删除学农技信息
     * 
     * @param articleId 学农技主键
     * @return 结果
     */
    @Override
    public int deleteTbLearnTechByArticleId(Long articleId)
    {
        return tbLearnTechMapper.deleteTbLearnTechByArticleId(articleId);
    }
}
