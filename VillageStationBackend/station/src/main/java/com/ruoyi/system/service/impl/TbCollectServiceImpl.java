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
public class TbCollectServiceImpl implements ITbCollectService {
    @Autowired
    private TbCollectMapper tbCollectMapper;


    /**
     * 根据用户id查询收藏列表
     *
     * @param userId 用户id
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/20 10:08:44
     */
    @Override
    public List<TbCollect> selectTbCollectListByUserId(Long userId) {
        return tbCollectMapper.selectTbCollectListByUserId(userId);
    }

    /**
     * 通过 userid、table_name、article_id 查询收藏
     * @param userId 用户id
     * @param tableName 表名
     * @param articleId 文章id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/20 23:26:43
     */
    @Override
    public TbCollect selectCollect(Long userId, String tableName,Long articleId) {
        return tbCollectMapper.selectCollect(userId,tableName,articleId);
    }

    /**
     * 新增收藏
     * @param tbCollect 收藏对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/21 01:15:40
     */
    @Override
    public int insertTbCollect(TbCollect tbCollect) {
        TbCollect temp = tbCollectMapper.selectCollect(tbCollect.getUserId(),tbCollect.getTableName(),tbCollect.getArticleId());
        if(temp == null) {
            return tbCollectMapper.insertTbCollect(tbCollect);
        }
        else{
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
    public int deleteTbCollect(Long userId, String tableName, Long articleId) {
        return tbCollectMapper.deleteTbCollect(userId, tableName, articleId);
    }
}
