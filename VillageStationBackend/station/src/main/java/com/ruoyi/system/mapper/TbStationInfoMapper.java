package com.ruoyi.system.mapper;

import java.util.List;

import com.ruoyi.system.domain.TbStationInfo;
import org.apache.ibatis.annotations.Param;

/**
 * 驿站信息Mapper接口
 *
 * @author ruoyi
 * @date 2023-10-09
 */
public interface TbStationInfoMapper {
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


    public List<TbStationInfo> selectTbStationInfoByColumn(String firstColumn);

    public List<TbStationInfo> selectTbStationInfoBySort(@Param("firstColumn") String firstColumn, @Param("sort") String sort);

    public List<TbStationInfo> selectTbStationInfoFirstColumnsList(TbStationInfo tbStationInfo);

    public int updateTbStationFirstColumns(TbStationInfo tbStationInfo);

    public int updateReading(TbStationInfo tbStationInfo);

    public int addLikes(TbStationInfo tbStationInfo);

    public int subLikes(TbStationInfo tbStationInfo);

    public int addCollect(TbStationInfo tbStationInfo);

    public int subCollect(TbStationInfo tbStationInfo);

    public List<TbStationInfo> selectTbStationInfoByLike(String query);

    public List<TbStationInfo>selectTbStationInfoByIdList(@Param("idList") Long[] idList);
}
