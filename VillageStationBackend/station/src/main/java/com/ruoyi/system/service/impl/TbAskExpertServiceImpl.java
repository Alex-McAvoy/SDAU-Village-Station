package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbAskExpertMapper;
import com.ruoyi.system.domain.TbAskExpert;
import com.ruoyi.system.service.ITbAskExpertService;

/**
 * 问专家Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-10-03
 */
@Service
public class TbAskExpertServiceImpl implements ITbAskExpertService 
{
    @Autowired
    private TbAskExpertMapper tbAskExpertMapper;

    /**
     * 查询问专家
     * 
     * @param askExpertsId 问专家主键
     * @return 问专家
     */
    @Override
    public TbAskExpert selectTbAskExpertByAskExpertsId(Long askExpertsId)
    {
        return tbAskExpertMapper.selectTbAskExpertByAskExpertsId(askExpertsId);
    }

    /**
     * 查询不同领域的专家
     *
     * @param  dictValue 不同领域的专家
     * @return 问专家
     */
    @Override
    public List<TbAskExpert> selectTbAskExpertByDictValue(String dictValue)
    {
        return tbAskExpertMapper.selectTbAskExpertByDictValue(dictValue);
    }


    /**
     * 查询问专家列表
     * 
     * @param tbAskExpert 问专家
     * @return 问专家
     */
    @Override
    public List<TbAskExpert> selectTbAskExpertList(TbAskExpert tbAskExpert)
    {
        return tbAskExpertMapper.selectTbAskExpertList(tbAskExpert);
    }

    /**
     * 新增问专家
     * 
     * @param tbAskExpert 问专家
     * @return 结果
     */
    @Override
    public int insertTbAskExpert(TbAskExpert tbAskExpert)
    {
        tbAskExpert.setCreateTime(DateUtils.getNowDate());
        return tbAskExpertMapper.insertTbAskExpert(tbAskExpert);
    }

    /**
     * 修改问专家
     * 
     * @param tbAskExpert 问专家
     * @return 结果
     */
    @Override
    public int updateTbAskExpert(TbAskExpert tbAskExpert)
    {
        tbAskExpert.setUpdateTime(DateUtils.getNowDate());
        return tbAskExpertMapper.updateTbAskExpert(tbAskExpert);
    }

    /**
     * 批量删除问专家
     * 
     * @param askExpertsIds 需要删除的问专家主键
     * @return 结果
     */
    @Override
    public int deleteTbAskExpertByAskExpertsIds(Long[] askExpertsIds)
    {
        return tbAskExpertMapper.deleteTbAskExpertByAskExpertsIds(askExpertsIds);
    }

    /**
     * 删除问专家信息
     * 
     * @param askExpertsId 问专家主键
     * @return 结果
     */
    @Override
    public int deleteTbAskExpertByAskExpertsId(Long askExpertsId)
    {
        return tbAskExpertMapper.deleteTbAskExpertByAskExpertsId(askExpertsId);
    }

    @Override
    public List<TbAskExpert> selectTbAskExpertByColumn(String firstColumn, String dictValue) {
        return tbAskExpertMapper.selectTbAskExpertByColumn(firstColumn, dictValue);
    }
    @Override
    public List<TbAskExpert> selectTbAskExpertFirstColumnsList(TbAskExpert tbAskExpert) {
        return tbAskExpertMapper.selectTbAskExpertFirstColumnsList(tbAskExpert);
    }

    @Override
    public int updateTbAskExpertFirstColumns(TbAskExpert tbAskExpert) {
        tbAskExpert.setUpdateTime(DateUtils.getNowDate());
        return tbAskExpertMapper.updateTbAskExpertFirstColumns(tbAskExpert);
    }

    @Override
    public List<TbAskExpert> selectTbAskExpertByLike(String query) {
        return tbAskExpertMapper.selectTbAskExpertByLike(query);
    }
}
