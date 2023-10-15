package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TbCollect;
import org.apache.ibatis.annotations.Param;

/**
 * 收藏Mapper接口
 *
 * @author ruoyi
 * @date 2023-10-13
 */
public interface TbCollectMapper
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
     * 查询收藏列表
     *
     * @param userId 用户id
     * @return 收藏集合
     */
    public List<TbCollect> selectTbCollectListByUserId(@Param("userId") Long  userId);

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
     * 删除收藏
     *
     * @param newsId 收藏主键
     * @return 结果
     */
    public int deleteTbCollectByNewsId(Long newsId);

    /**
     * 批量删除收藏
     *
     * @param newsIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbCollectByNewsIds(Long[] newsIds);

    public int deleteTbCollectByMultiId(@Param("userId") Long userId, @Param("tableName") String tableName, @Param("articleId") Long articleId);
}
