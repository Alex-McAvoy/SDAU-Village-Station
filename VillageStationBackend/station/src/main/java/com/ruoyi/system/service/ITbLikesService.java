package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TbLikes;

/**
 * 点赞Service接口
 * 
 * @author ruoyi
 * @date 2023-10-14
 */
public interface ITbLikesService 
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
     * 批量删除点赞
     * 
     * @param newsIds 需要删除的点赞主键集合
     * @return 结果
     */
    public int deleteTbLikesByNewsIds(Long[] newsIds);

    /**
     * 删除点赞信息
     * 
     * @param newsId 点赞主键
     * @return 结果
     */
    public int deleteTbLikesByNewsId(Long newsId);

    //获取
    public List<TbLikes> selectTbLikesByUserId(Long userId);
    //删除
    public int deleteTbCollectByMultiId(Long userId, String targetKey, Long articleId);


}
