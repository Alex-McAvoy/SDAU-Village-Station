package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbLikesMapper;
import com.ruoyi.system.domain.TbLikes;
import com.ruoyi.system.service.ITbLikesService;

/**
 * 点赞Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-10-14
 */
@Service
public class TbLikesServiceImpl implements ITbLikesService 
{
    @Autowired
    private TbLikesMapper tbLikesMapper;

    /**
     * 查询点赞
     * 
     * @param newsId 点赞主键
     * @return 点赞
     */
    @Override
    public TbLikes selectTbLikesByNewsId(Long newsId)
    {
        return tbLikesMapper.selectTbLikesByNewsId(newsId);
    }

    /**
     * 查询点赞列表
     * 
     * @param tbLikes 点赞
     * @return 点赞
     */
    @Override
    public List<TbLikes> selectTbLikesList(TbLikes tbLikes)
    {
        return tbLikesMapper.selectTbLikesList(tbLikes);
    }

    /**
     * 新增点赞
     * 
     * @param tbLikes 点赞
     * @return 结果
     */
    @Override
    public int insertTbLikes(TbLikes tbLikes)
    {
        tbLikes.setCreateTime(DateUtils.getNowDate());
        return tbLikesMapper.insertTbLikes(tbLikes);
    }

    /**
     * 修改点赞
     * 
     * @param tbLikes 点赞
     * @return 结果
     */
    @Override
    public int updateTbLikes(TbLikes tbLikes)
    {
        tbLikes.setUpdateTime(DateUtils.getNowDate());
        return tbLikesMapper.updateTbLikes(tbLikes);
    }

    /**
     * 批量删除点赞
     * 
     * @param newsIds 需要删除的点赞主键
     * @return 结果
     */
    @Override
    public int deleteTbLikesByNewsIds(Long[] newsIds)
    {
        return tbLikesMapper.deleteTbLikesByNewsIds(newsIds);
    }

    /**
     * 删除点赞信息
     * 
     * @param newsId 点赞主键
     * @return 结果
     */
    @Override
    public int deleteTbLikesByNewsId(Long newsId)
    {
        return tbLikesMapper.deleteTbLikesByNewsId(newsId);
    }


    @Override
    public List<TbLikes> selectTbLikesByUserId(Long userId) {
        return tbLikesMapper.selectTbLikesByUserId(userId);
    }


    @Override
    public int deleteTbCollectByMultiId(Long userId, String tableName, Long articleId) {
        return tbLikesMapper.deleteTbLikesByMultiId(userId,tableName,articleId);
    }
}
