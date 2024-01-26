package com.ruoyi.system.service;

import java.util.List;

import com.ruoyi.system.domain.TbLikes;

/**
 * 点赞Service接口
 *
 * @author ruoyi
 * @date 2023-10-14
 */
public interface ITbLikesService {

    /**
     * 根据用户id查询点赞列表
     *
     * @param userId 用户id
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/20 10:08:44
     */
    public List<TbLikes> selectTbLikesByUserId(Long userId);

    /**
     * 通过 userid、table_name、article_id 查询点赞
     *
     * @param userId    用户id
     * @param tableName 表名
     * @param articleId 文章id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/20 23:26:43
     */
    public TbLikes selectLikes(Long userId, String tableName, Long articleId);

    /**
     * 新增点赞
     *
     * @param tbLikes 点赞对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/21 00:55:10
     */
    public int insertTbLikes(TbLikes tbLikes);

    /**
     * 通过 userid、table_name、article_id 取消点赞
     *
     * @param userId    用户id
     * @param tableName 表名
     * @param articleId 文章id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/21 01:23:19
     */
    public int deleteTbLikes(Long userId, String tableName, Long articleId);
}
