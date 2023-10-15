package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TbLikes;
import org.apache.ibatis.annotations.Param;

/**
 * 点赞Mapper接口
 * 
 * @author ruoyi
 * @date 2023-10-14
 */
public interface TbLikesMapper 
{
    /**
     * 查询点赞
     * 
     * @param newsId 点赞主键
     * @return 点赞
     */
    public TbLikes selectTbLikesByNewsId(Long newsId);

    /**
     * 查询点赞列表
     * 
     * @param tbLikes 点赞
     * @return 点赞集合
     */
    public List<TbLikes> selectTbLikesList(TbLikes tbLikes);

    /**
     * 新增点赞
     * 
     * @param tbLikes 点赞
     * @return 结果
     */
    public int insertTbLikes(TbLikes tbLikes);

    /**
     * 修改点赞
     * 
     * @param tbLikes 点赞
     * @return 结果
     */
    public int updateTbLikes(TbLikes tbLikes);

    /**
     * 删除点赞
     * 
     * @param newsId 点赞主键
     * @return 结果
     */
    public int deleteTbLikesByNewsId(Long newsId);

    /**
     * 批量删除点赞
     * 
     * @param newsIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbLikesByNewsIds(Long[] newsIds);

    public List<TbLikes> selectTbLikesByUserId(@Param("userId") Long userId);

    public int deleteTbLikesByMultiId(@Param("userId") Long userId, @Param("tableName") String tableName, @Param("articleId") Long articleId);
}
