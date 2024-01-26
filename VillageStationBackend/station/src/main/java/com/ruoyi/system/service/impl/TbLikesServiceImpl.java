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
public class TbLikesServiceImpl implements ITbLikesService {
    @Autowired
    private TbLikesMapper tbLikesMapper;

    /**
     * 根据用户id查询点赞列表
     *
     * @param userId 用户id
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/20 10:08:44
     */
    @Override
    public List<TbLikes> selectTbLikesByUserId(Long userId) {
        return tbLikesMapper.selectTbLikesByUserId(userId);
    }

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
    @Override
    public TbLikes selectLikes(Long userId, String tableName, Long articleId) {
        return tbLikesMapper.selectLikes(userId, tableName, articleId);
    }

    /**
     * 新增点赞
     *
     * @param tbLikes 点赞对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/21 00:55:10
     */
    @Override
    public int insertTbLikes(TbLikes tbLikes) {
        TbLikes temp = tbLikesMapper.selectLikes(tbLikes.getUserId(),tbLikes.getTableName(),tbLikes.getArticleId());
        if(temp == null) {
            return tbLikesMapper.insertTbLikes(tbLikes);
        }
        else {
            return 0;
        }
    }

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
    @Override
    public int deleteTbLikes(Long userId, String tableName, Long articleId) {
        return tbLikesMapper.deleteTbLikes(userId, tableName, articleId);
    }
}
