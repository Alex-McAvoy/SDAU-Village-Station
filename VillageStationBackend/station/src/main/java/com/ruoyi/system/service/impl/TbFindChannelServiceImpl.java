package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbFindChannelMapper;
import com.ruoyi.system.domain.TbFindChannel;
import com.ruoyi.system.service.ITbFindChannelService;

/**
 * 找渠道Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-10-05
 */
@Service
public class TbFindChannelServiceImpl implements ITbFindChannelService 
{
    @Autowired
    private TbFindChannelMapper tbFindChannelMapper;

    /**
     * 查询找渠道
     * 
     * @param newsId 找渠道主键
     * @return 找渠道
     */
    @Override
    public TbFindChannel selectTbFindChannelByNewsId(Long newsId)
    {
        return tbFindChannelMapper.selectTbFindChannelByNewsId(newsId);
    }

    /**
     * 查询找渠道列表
     * 
     * @param tbFindChannel 找渠道
     * @return 找渠道
     */
    @Override
    public List<TbFindChannel> selectTbFindChannelList(TbFindChannel tbFindChannel)
    {
        return tbFindChannelMapper.selectTbFindChannelList(tbFindChannel);
    }

    /**
     * 新增找渠道
     * 
     * @param tbFindChannel 找渠道
     * @return 结果
     */
    @Override
    public int insertTbFindChannel(TbFindChannel tbFindChannel)
    {
        tbFindChannel.setCreateTime(DateUtils.getNowDate());
        return tbFindChannelMapper.insertTbFindChannel(tbFindChannel);
    }

    /**
     * 修改找渠道
     * 
     * @param tbFindChannel 找渠道
     * @return 结果
     */
    @Override
    public int updateTbFindChannel(TbFindChannel tbFindChannel)
    {
        tbFindChannel.setUpdateTime(DateUtils.getNowDate());
        return tbFindChannelMapper.updateTbFindChannel(tbFindChannel);
    }

    /**
     * 批量删除找渠道
     * 
     * @param newsIds 需要删除的找渠道主键
     * @return 结果
     */
    @Override
    public int deleteTbFindChannelByNewsIds(Long[] newsIds)
    {
        return tbFindChannelMapper.deleteTbFindChannelByNewsIds(newsIds);
    }

    /**
     * 删除找渠道信息
     * 
     * @param newsId 找渠道主键
     * @return 结果
     */
    @Override
    public int deleteTbFindChannelByNewsId(Long newsId)
    {
        return tbFindChannelMapper.deleteTbFindChannelByNewsId(newsId);
    }

    @Override
    public List<TbFindChannel> selectTbFindChannelListByColumn(String firstColumn) {
        return tbFindChannelMapper.selectTbFindChannelListByColumn(firstColumn);
    }
}
