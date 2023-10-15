package com.ruoyi.system.service.impl;

import java.util.List;
import java.util.Map;

import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbCollectMapper;
import com.ruoyi.system.domain.TbCollect;
import com.ruoyi.system.service.ITbCollectService;

/**
 * 收藏Service业务层处理
 *
 * @author ruoyi
 * @date 2023-10-13
 */
@Service
public class TbCollectServiceImpl implements ITbCollectService
{
    @Autowired
    private TbCollectMapper tbCollectMapper;

    /**
     * 查询收藏
     *
     * @param newsId 收藏主键
     * @return 收藏
     */
    @Override
    public TbCollect selectTbCollectByNewsId(Long newsId)
    {
        return tbCollectMapper.selectTbCollectByNewsId(newsId);
    }

    /**
     * 查询收藏列表
     *
     * @param tbCollect 收藏
     * @return 收藏
     */
    @Override
    public List<TbCollect> selectTbCollectList(TbCollect tbCollect)
    {
        return tbCollectMapper.selectTbCollectList(tbCollect);
    }

    /**
     * 新增收藏
     *
     * @param tbCollect 收藏
     * @return 结果
     */
    @Override
    public int insertTbCollect(TbCollect tbCollect)
    {
        tbCollect.setCreateTime(DateUtils.getNowDate());
        return tbCollectMapper.insertTbCollect(tbCollect);
    }

    /**
     * 修改收藏
     *
     * @param tbCollect 收藏
     * @return 结果
     */
    @Override
    public int updateTbCollect(TbCollect tbCollect)
    {
        tbCollect.setUpdateTime(DateUtils.getNowDate());
        return tbCollectMapper.updateTbCollect(tbCollect);
    }

    /**
     * 批量删除收藏
     *
     * @param newsIds 需要删除的收藏主键
     * @return 结果
     */
    @Override
    public int deleteTbCollectByNewsIds(Long[] newsIds)
    {
        return tbCollectMapper.deleteTbCollectByNewsIds(newsIds);
    }

    /**
     * 删除收藏信息
     *
     * @param newsId 收藏主键
     * @return 结果
     */
    @Override
    public int deleteTbCollectByNewsId(Long newsId)
    {
        return tbCollectMapper.deleteTbCollectByNewsId(newsId);
    }

    @Override
    public List<TbCollect> selectTbCollectListByUserId(Long userId) {
        return tbCollectMapper.selectTbCollectListByUserId(userId);
    }

    //
    @Override
    public int deleteTbCollectByMultiId(Long userId, String tableName, Long articleId) {
        return tbCollectMapper.deleteTbCollectByMultiId(userId, tableName,articleId);
    }
}
