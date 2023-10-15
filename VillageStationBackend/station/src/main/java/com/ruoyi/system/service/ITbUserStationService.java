package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TbUserStation;
/**
 * 用户-驿站Service接口
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/14 21:25
 **/
public interface ITbUserStationService
{
    /**
     * 查询用户-驿站
     *
     * @param newsId 用户-驿站主键
     * @return 用户-驿站
     */
    public TbUserStation selectTbUserStationByNewsId(Long newsId);

    /**
     * 查询用户-驿站列表
     *
     * @param tbUserStation 用户-驿站
     * @return 用户-驿站集合
     */
    public List<TbUserStation> selectTbUserStationList(TbUserStation tbUserStation);

    /**
     * 新增用户-驿站
     *
     * @param tbUserStation 用户-驿站
     * @return 结果
     */
    public int insertTbUserStation(TbUserStation tbUserStation);

    /**
     * 修改用户-驿站
     *
     * @param tbUserStation 用户-驿站
     * @return 结果
     */
    public int updateTbUserStation(TbUserStation tbUserStation);

    /**
     * 批量删除用户-驿站
     *
     * @param newsIds 需要删除的用户-驿站主键集合
     * @return 结果
     */
    public int deleteTbUserStationByNewsIds(Long[] newsIds);

    /**
     * 删除用户-驿站信息
     *
     * @param newsId 用户-驿站主键
     * @return 结果
     */
    public int deleteTbUserStationByNewsId(Long newsId);

    public TbUserStation selectTbUserStationByUserId(Long userId);

}
