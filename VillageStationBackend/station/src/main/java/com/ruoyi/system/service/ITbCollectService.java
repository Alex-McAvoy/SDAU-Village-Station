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
public interface ITbCollectService
{
    /**
     * 查询收藏
     *
     * @param newsId 收藏主键
     * @return 收藏
     */
    public TbCollect selectTbCollectByNewsId(Long newsId);

    /**
     * 查询收藏列表
     *
     * @param tbCollect 收藏
     * @return 收藏集合
     */
    public List<TbCollect> selectTbCollectList(TbCollect tbCollect);

    /**
     * 新增收藏
     *
     * @param tbCollect 收藏
     * @return 结果
     */
    public int insertTbCollect(TbCollect tbCollect);

    /**
     * 修改收藏
     *
     * @param tbCollect 收藏
     * @return 结果
     */
    public int updateTbCollect(TbCollect tbCollect);

    /**
     * 批量删除收藏
     *
     * @param newsIds 需要删除的收藏主键集合
     * @return 结果
     */
    public int deleteTbCollectByNewsIds(Long[] newsIds);

    /**
     * 删除收藏信息
     *
     * @param newsId 收藏主键
     * @return 结果
     */
    public int deleteTbCollectByNewsId(Long newsId);

    public List<TbCollect> selectTbCollectListByUserId(Long userId);

    //删除收藏 三个属性
    public int deleteTbCollectByMultiId(Long userId, String tableName, Long articleId);
}
