package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TbFindChannel;

/**
 * 找渠道Service接口
 * 
 * @author ruoyi
 * @date 2023-10-05
 */
public interface ITbFindChannelService 
{
    /**
     * 查询找渠道
     * 
     * @param newsId 找渠道主键
     * @return 找渠道
     */
    public TbFindChannel selectTbFindChannelByNewsId(Long newsId);

    /**
     * 查询找渠道列表
     * 
     * @param tbFindChannel 找渠道
     * @return 找渠道集合
     */
    public List<TbFindChannel> selectTbFindChannelList(TbFindChannel tbFindChannel);

    /**
     * 新增找渠道
     * 
     * @param tbFindChannel 找渠道
     * @return 结果
     */
    public int insertTbFindChannel(TbFindChannel tbFindChannel);

    /**
     * 修改找渠道
     * 
     * @param tbFindChannel 找渠道
     * @return 结果
     */
    public int updateTbFindChannel(TbFindChannel tbFindChannel);

    /**
     * 批量删除找渠道
     * 
     * @param newsIds 需要删除的找渠道主键集合
     * @return 结果
     */
    public int deleteTbFindChannelByNewsIds(Long[] newsIds);

    /**
     * 删除找渠道信息
     * 
     * @param newsId 找渠道主键
     * @return 结果
     */
    public int deleteTbFindChannelByNewsId(Long newsId);

    List<TbFindChannel> selectTbFindChannelListByColumn(String firstColumn, String secondColumn);

    List<TbFindChannel> selectTbFindChannelFirstColumnsList(TbFindChannel tbFindChannel);

    public int updateTbFindChannelFirstColumns(TbFindChannel tbFindChannel);

    public int updateReading(TbFindChannel tbFindChannel);

    public int addLikes(TbFindChannel tbFindChannel);

    public int subLikes(TbFindChannel tbFindChannel);

    public int addCollect(TbFindChannel tbFindChannel);

    public int subCollect(TbFindChannel tbFindChannel);
}
