package com.ruoyi.system.service.impl;
import java.util.List;

import com.ruoyi.system.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbUserStationMapper;
import com.ruoyi.system.domain.TbUserStation;
import com.ruoyi.system.service.ITbUserStationService;

/**
 * 用户-驿站Service业务层处理
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/14 21:26
 **/
@Service
public class TbUserStationServiceImpl implements ITbUserStationService
{
    @Autowired
    private ISysUserService iSysUserService;

    @Autowired
    private TbUserStationMapper tbUserStationMapper;

    /**
     * 新增用户-驿站信息
     * @param tbUserStation 用户-驿站对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 17:39:33
     */
    @Override
    public int insertTbUserStation(TbUserStation tbUserStation)
    {
        return tbUserStationMapper.insertTbUserStation(tbUserStation);
    }

    /**
     * 通过用户id，修改用户-驿站信息
     * @param tbUserStation 用户-驿站对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 17:40:00
     */
    @Override
    public int updateTbUserStation(TbUserStation tbUserStation)
    {
        return tbUserStationMapper.updateTbUserStation(tbUserStation);
    }


    /**
     * 通过用户id，获取用户-驿站信息
     * @param userId 用户id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 17:40:00
     */
    @Override
    public TbUserStation selectTbUserStationByUserId(Long userId)
    {
        return tbUserStationMapper.selectTbUserStationByUserId(userId);
    }

}
