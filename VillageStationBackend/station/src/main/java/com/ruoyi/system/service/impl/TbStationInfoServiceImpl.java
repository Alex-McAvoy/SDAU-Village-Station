package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.system.domain.TbOtherColumns;
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
     * 根据FirstColumn查询驿站信息
     *
     * @param firstColumn 驿站信息主键
     * @return 驿站信息
     */
    @Override
    public List<TbStationInfo> selectTbStationInfoByFirstColumn(String firstColumn)
    {
        return tbStationInfoMapper.selectTbStationInfoByFirstColumn(firstColumn);
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

    //修改未审核
    @Override
    public int updateTbStationInfoRemark(TbStationInfo tbStationInfo) {
        tbStationInfo.setUpdateTime(DateUtils.getNowDate());
        return tbStationInfoMapper.updateTbStationInfoRemark(tbStationInfo);
    }

    //获取全部未审核站信息
    @Override
    public List<TbStationInfo> selectTbStationInfoRemarkList(TbStationInfo tbStationInfo) {
        return tbStationInfoMapper.selectTbStationInfoRemarkList(tbStationInfo);
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
}
