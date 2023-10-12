package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbNewSpeciesMapper;
import com.ruoyi.system.domain.TbNewSpecies;
import com.ruoyi.system.service.ITbNewSpeciesService;

/**
 * 新品种Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-10-05
 */
@Service
public class TbNewSpeciesServiceImpl implements ITbNewSpeciesService 
{
    @Autowired
    private TbNewSpeciesMapper tbNewSpeciesMapper;

    /**
     * 查询新品种
     * 
     * @param newsId 新品种主键
     * @return 新品种
     */
    @Override
    public TbNewSpecies selectTbNewSpeciesByNewsId(Long newsId)
    {
        return tbNewSpeciesMapper.selectTbNewSpeciesByNewsId(newsId);
    }

    /**
     * 查询新品种列表
     * 
     * @param tbNewSpecies 新品种
     * @return 新品种
     */
    @Override
    public List<TbNewSpecies> selectTbNewSpeciesList(TbNewSpecies tbNewSpecies)
    {
        return tbNewSpeciesMapper.selectTbNewSpeciesList(tbNewSpecies);
    }

    /**
     * 新增新品种
     * 
     * @param tbNewSpecies 新品种
     * @return 结果
     */
    @Override
    public int insertTbNewSpecies(TbNewSpecies tbNewSpecies)
    {
        tbNewSpecies.setCreateTime(DateUtils.getNowDate());
        return tbNewSpeciesMapper.insertTbNewSpecies(tbNewSpecies);
    }

    /**
     * 修改新品种
     * 
     * @param tbNewSpecies 新品种
     * @return 结果
     */
    @Override
    public int updateTbNewSpecies(TbNewSpecies tbNewSpecies)
    {
        tbNewSpecies.setUpdateTime(DateUtils.getNowDate());
        return tbNewSpeciesMapper.updateTbNewSpecies(tbNewSpecies);
    }

    /**
     * 批量删除新品种
     * 
     * @param newsIds 需要删除的新品种主键
     * @return 结果
     */
    @Override
    public int deleteTbNewSpeciesByNewsIds(Long[] newsIds)
    {
        return tbNewSpeciesMapper.deleteTbNewSpeciesByNewsIds(newsIds);
    }

    /**
     * 删除新品种信息
     * 
     * @param newsId 新品种主键
     * @return 结果
     */
    @Override
    public int deleteTbNewSpeciesByNewsId(Long newsId)
    {
        return tbNewSpeciesMapper.deleteTbNewSpeciesByNewsId(newsId);
    }

    @Override
    public List<TbNewSpecies> selectTbNewSpeciesByColumn(String firstColumn) {
        return tbNewSpeciesMapper.selectTbNewSpeciesByColumn(firstColumn);
    }

    @Override
    public List<TbNewSpecies> selectTbNewSpeciesFirstColumnsList(TbNewSpecies tbNewSpecies) {
        return tbNewSpeciesMapper.selectTbNewSpeciesFirstColumnsList(tbNewSpecies);
    }

    @Override
    public int updateTbNewSpeciesFirstColumns(TbNewSpecies tbNewSpecies) {
        tbNewSpecies.setUpdateTime(DateUtils.getNowDate());
        return tbNewSpeciesMapper.updateTbNewSpeciesFirstColumns(tbNewSpecies);
    }

    @Override
    public int updateReading(TbNewSpecies tbNewSpecies) {
        return tbNewSpeciesMapper.updateReading(tbNewSpecies);
    }

    @Override
    public int addLikes(TbNewSpecies tbNewSpecies) {
        return tbNewSpeciesMapper.addLikes(tbNewSpecies);
    }

    @Override
    public int addCollect(TbNewSpecies tbNewSpecies) {
        return tbNewSpeciesMapper.addCollect(tbNewSpecies);
    }
}