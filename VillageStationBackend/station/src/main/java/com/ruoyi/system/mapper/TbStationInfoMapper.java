package com.ruoyi.system.mapper;

import java.util.List;

import com.ruoyi.system.domain.TbOtherColumns;
import com.ruoyi.system.domain.TbStationInfo;

/**
 * 驿站信息Mapper接口
 * 
 * @author ruoyi
 * @date 2023-10-09
 */
public interface TbStationInfoMapper 
{
    /**
     * 查询驿站信息
     * 
     * @param newsId 驿站信息主键
     * @return 驿站信息
     */
    public TbStationInfo selectTbStationInfoByNewsId(Long newsId);

    /**
     * 根据FirstColumn查询驿站信息
     *
     * @param firstColumn
     * @return 驿站信息
     */
    public List<TbStationInfo> selectTbStationInfoByFirstColumn(String firstColumn);



    /**
     * 查询驿站信息列表
     * 
     * @param tbStationInfo 驿站信息
     * @return 驿站信息集合
     */
    public List<TbStationInfo> selectTbStationInfoList(TbStationInfo tbStationInfo);

    //修改未审核
    public int updateTbStationInfoRemark(TbStationInfo tbStationInfo);


    //获取全部未审核驿站信息新闻
    public List<TbStationInfo> selectTbStationInfoRemarkList(TbStationInfo tbStationInfo);


    /**
     * 新增驿站信息
     * 
     * @param tbStationInfo 驿站信息
     * @return 结果
     */
    public int insertTbStationInfo(TbStationInfo tbStationInfo);

    /**
     * 修改驿站信息
     * 
     * @param tbStationInfo 驿站信息
     * @return 结果
     */
    public int updateTbStationInfo(TbStationInfo tbStationInfo);

    /**
     * 删除驿站信息
     * 
     * @param newsId 驿站信息主键
     * @return 结果
     */
    public int deleteTbStationInfoByNewsId(Long newsId);

    /**
     * 批量删除驿站信息
     * 
     * @param newsIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbStationInfoByNewsIds(Long[] newsIds);
}
