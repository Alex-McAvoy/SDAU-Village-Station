package com.ruoyi.system.service.impl;
import java.util.List;
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
    private TbUserStationMapper tbUserStationMapper;

    /**
     * 查询用户-驿站
     *
     * @param newsId 用户-驿站主键
     * @return 用户-驿站
     */
    @Override
    public TbUserStation selectTbUserStationByNewsId(Long newsId)
    {
        return tbUserStationMapper.selectTbUserStationByNewsId(newsId);
    }

    /**
     * 查询用户-驿站列表
     *
     * @param tbUserStation 用户-驿站
     * @return 用户-驿站
     */
    @Override
    public List<TbUserStation> selectTbUserStationList(TbUserStation tbUserStation)
    {
        return tbUserStationMapper.selectTbUserStationList(tbUserStation);
    }

    /**
     * 新增用户-驿站
     *
     * @param tbUserStation 用户-驿站
     * @return 结果
     */
    @Override
    public int insertTbUserStation(TbUserStation tbUserStation)
    {
        return tbUserStationMapper.insertTbUserStation(tbUserStation);
    }

    /**
     * 修改用户-驿站
     *
     * @param tbUserStation 用户-驿站
     * @return 结果
     */
    @Override
    public int updateTbUserStation(TbUserStation tbUserStation)
    {
        return tbUserStationMapper.updateTbUserStation(tbUserStation);
    }

    /**
     * 批量删除用户-驿站
     *
     * @param newsIds 需要删除的用户-驿站主键
     * @return 结果
     */
    @Override
    public int deleteTbUserStationByNewsIds(Long[] newsIds)
    {
        return tbUserStationMapper.deleteTbUserStationByNewsIds(newsIds);
    }

    /**
     * 删除用户-驿站信息
     *
     * @param newsId 用户-驿站主键
     * @return 结果
     */
    @Override
    public int deleteTbUserStationByNewsId(Long newsId)
    {
        return tbUserStationMapper.deleteTbUserStationByNewsId(newsId);
    }

    @Override
    public TbUserStation selectTbUserStationByUserId(Long userId)
    {
        return tbUserStationMapper.selectTbUserStationByUserId(userId);
    }

}
