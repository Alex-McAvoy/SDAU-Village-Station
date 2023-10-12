package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbStationInfoMapper;
import com.ruoyi.system.domain.TbStationInfo;
import com.ruoyi.system.service.ITbStationInfoService;

/**
 * 驿站信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-10-09
 */
@Service
public class TbStationInfoServiceImpl implements ITbStationInfoService 
{
    @Autowired
    private TbStationInfoMapper tbStationInfoMapper;

    /**
     * 查询驿站信息
     * 
     * @param newsId 驿站信息主键
     * @return 驿站信息
     */
    @Override
    public TbStationInfo selectTbStationInfoByNewsId(Long newsId)
    {
        return tbStationInfoMapper.selectTbStationInfoByNewsId(newsId);
    }

    /**
     * 查询驿站信息列表
     * 
     * @param tbStationInfo 驿站信息
     * @return 驿站信息
     */
    @Override
    public List<TbStationInfo> selectTbStationInfoList(TbStationInfo tbStationInfo)
    {
        return tbStationInfoMapper.selectTbStationInfoList(tbStationInfo);
    }

    /**
     * 新增驿站信息
     * 
     * @param tbStationInfo 驿站信息
     * @return 结果
     */
    @Override
    public int insertTbStationInfo(TbStationInfo tbStationInfo)
    {
        tbStationInfo.setCreateTime(DateUtils.getNowDate());
        return tbStationInfoMapper.insertTbStationInfo(tbStationInfo);
    }

    /**
     * 修改驿站信息
     * 
     * @param tbStationInfo 驿站信息
     * @return 结果
     */
    @Override
    public int updateTbStationInfo(TbStationInfo tbStationInfo)
    {
        tbStationInfo.setUpdateTime(DateUtils.getNowDate());
        return tbStationInfoMapper.updateTbStationInfo(tbStationInfo);
    }

    /**
     * 批量删除驿站信息
     * 
     * @param newsIds 需要删除的驿站信息主键
     * @return 结果
     */
    @Override
    public int deleteTbStationInfoByNewsIds(Long[] newsIds)
    {
        return tbStationInfoMapper.deleteTbStationInfoByNewsIds(newsIds);
    }

    /**
     * 删除驿站信息信息
     * 
     * @param newsId 驿站信息主键
     * @return 结果
     */
    @Override
    public int deleteTbStationInfoByNewsId(Long newsId)
    {
        return tbStationInfoMapper.deleteTbStationInfoByNewsId(newsId);
    }


    @Override
    public List<TbStationInfo> selectTbStationInfoByColumn(String firstColumn)
    {
        return tbStationInfoMapper.selectTbStationInfoByColumn(firstColumn);
    }

    @Override
    public List<TbStationInfo> selectTbStationInfoFirstColumnsList(TbStationInfo tbStationInfo) {
        tbStationInfo.setUpdateTime(DateUtils.getNowDate());
        return tbStationInfoMapper.selectTbStationInfoFirstColumnsList(tbStationInfo);
    }

    @Override
    public int updateTbStationFirstColumns(TbStationInfo tbStationInfo) {
        return tbStationInfoMapper.updateTbStationFirstColumns(tbStationInfo);
    }

    @Override
    public int updateReading(TbStationInfo tbStationInfo) {
        return tbStationInfoMapper.updateReading(tbStationInfo);
    }

}
