package com.ruoyi.system.service;

import java.util.List;

import com.ruoyi.system.domain.TbStationInfo;

/**
 * 驿站信息Service接口
 * 
 * @author ruoyi
 * @date 2023-10-09
 */
public interface ITbStationInfoService 
{
    /**
     * 查询驿站信息
     * 
     * @param newsId 驿站信息主键
     * @return 驿站信息
     */
    public TbStationInfo selectTbStationInfoByNewsId(Long newsId);

    /**
     * 查询驿站信息列表
     * 
     * @param tbStationInfo 驿站信息
     * @return 驿站信息集合
     */
    public List<TbStationInfo> selectTbStationInfoList(TbStationInfo tbStationInfo);

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
     * 批量删除驿站信息
     * 
     * @param newsIds 需要删除的驿站信息主键集合
     * @return 结果
     */
    public int deleteTbStationInfoByNewsIds(Long[] newsIds);

    /**
     * 删除驿站信息信息
     * 
     * @param newsId 驿站信息主键
     * @return 结果
     */
    public int deleteTbStationInfoByNewsId(Long newsId);

    public List<TbStationInfo> selectTbStationInfoByColumn(String firstColumn);

    public List<TbStationInfo> selectTbStationInfoBySort(String firstColumn,String sort);

    List<TbStationInfo> selectTbStationInfoFirstColumnsList(TbStationInfo tbStationInfo);

    public int updateTbStationFirstColumns(TbStationInfo tbStationInfo);

    public int updateReading(TbStationInfo tbStationInfo);

    public int addLikes(TbStationInfo tbStationInfo);

    public int subLikes(TbStationInfo tbStationInfo);

    public int addCollect(TbStationInfo tbStationInfo);

    public int subCollect(TbStationInfo tbStationInfo);

    public List<TbStationInfo> selectTbStationInfoByLike(String query);

    //通过id列表来查询
    public List<TbStationInfo> selectTbStationInfoByIdList(Long[] idList);
}
