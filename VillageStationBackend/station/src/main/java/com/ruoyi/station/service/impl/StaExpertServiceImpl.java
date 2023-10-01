package com.ruoyi.station.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.station.mapper.StaExpertMapper;
import com.ruoyi.station.domain.StaExpert;
import com.ruoyi.station.service.StaExpertService;
/**
 * 专家service实现类
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/1 17:53
 **/
public class StaExpertServiceImpl implements StaExpertService {
    @Autowired
    private StaExpertMapper tbAskExpertMapper;
    /**
     * 查询问专家
     *
     * @param askExpertsId 问专家主键
     * @return 问专家
     */
    @Override
    public StaExpert selectTbAskExpertByAskExpertsId(Long askExpertsId)
    {
        return tbAskExpertMapper.selectTbAskExpertByAskExpertsId(askExpertsId);
    }

    /**
     * 查询问专家列表
     *
     * @param tbAskExpert 问专家
     * @return 问专家
     */
    @Override
    public List<StaExpert> selectTbAskExpertList(StaExpert tbAskExpert)
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
    public int insertTbAskExpert(StaExpert tbAskExpert)
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
    public int updateTbAskExpert(StaExpert tbAskExpert)
    {
        tbAskExpert.setUpdateTime(DateUtils.getNowDate());
        return tbAskExpertMapper.updateTbAskExpert(tbAskExpert);
    }/**
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

}
