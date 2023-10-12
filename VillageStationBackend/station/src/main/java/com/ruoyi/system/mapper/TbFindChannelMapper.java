package com.ruoyi.system.mapper;

import java.util.List;

import com.ruoyi.system.domain.TbFindChannel;
import org.apache.ibatis.annotations.Param;

/**
 * 找渠道Mapper接口
 *
 * @author ruoyi
 * @date 2023-10-05
 */
public interface TbFindChannelMapper {
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
     * 删除找渠道
     *
     * @param newsId 找渠道主键
     * @return 结果
     */
    public int deleteTbFindChannelByNewsId(Long newsId);

    /**
     * 批量删除找渠道
     *
     * @param newsIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbFindChannelByNewsIds(Long[] newsIds);

    List<TbFindChannel> selectTbFindChannelListByColumn(@Param("firstColumn") String firstColumn, @Param("secondColumn")String secondColumn);

    public List<TbFindChannel> selectTbFindChannelFirstColumnsList(TbFindChannel tbFindChannel);

    public int updateTbFindChannelFirstColumns(TbFindChannel tbFindChannel);

    public int updateReading(TbFindChannel tbFindChannel);
}