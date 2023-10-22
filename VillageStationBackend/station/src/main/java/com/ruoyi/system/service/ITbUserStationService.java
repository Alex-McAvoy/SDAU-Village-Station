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
     * 新增用户-驿站信息
     * @param tbUserStation 用户-驿站对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 17:39:33
     */
    public int insertTbUserStation(TbUserStation tbUserStation);

    /**
     * 通过用户id，修改用户-驿站信息
     * @param tbUserStation 用户-驿站对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 17:40:00
     */
    public int updateTbUserStation(TbUserStation tbUserStation);

    /**
     * 通过用户id，获取用户-驿站信息
     * @param userId 用户id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 17:40:00
     */
    public TbUserStation selectTbUserStationByUserId(Long userId);

}
