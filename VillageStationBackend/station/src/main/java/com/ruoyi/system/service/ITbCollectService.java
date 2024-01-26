package com.ruoyi.system.service;

import java.util.List;
import java.util.Map;

import com.ruoyi.system.domain.TbCollect;

/**
 * 收藏Service接口
 *
 * @author ruoyi
 * @date 2023-10-13
 */
public interface ITbCollectService {
    /**
     * 根据用户id查询收藏列表
     *
     * @param userId 用户id
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/20 10:08:44
     */
    public List<TbCollect> selectTbCollectListByUserId(Long userId);


    /**
     * 通过 userid、table_name、article_id 查询收藏
     * @param userId 用户id
     * @param tableName 表名
     * @param articleId 文章id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/20 23:26:43
     */
    public TbCollect selectCollect(Long userId, String tableName,Long articleId);

    /**
     * 新增收藏
     * @param tbCollect 收藏对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/21 01:15:40
     */
    public int insertTbCollect(TbCollect tbCollect);

    /**
     * 通过 userid、table_name、article_id 取消收藏
     *
     * @param userId    用户id
     * @param tableName 表名
     * @param articleId 文章id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/21 01:23:19
     */
    public int deleteTbCollect(Long userId, String tableName, Long articleId);
}
