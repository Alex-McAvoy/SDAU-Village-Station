package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TbRecommendProducts;
import org.apache.ibatis.annotations.Param;

/**
 * 推优品Mapper接口
 * 
 * @author ruoyi
 * @date 2023-10-04
 */
public interface TbRecommendProductsMapper 
{
    /**
     * 查询推优品
     * 
     * @param newsId 推优品主键
     * @return 推优品
     */
    public TbRecommendProducts selectTbRecommendProductsByNewsId(Long newsId);

    /**
     * 查询推优品列表
     * 
     * @param tbRecommendProducts 推优品
     * @return 推优品集合
     */
    public List<TbRecommendProducts> selectTbRecommendProductsList(TbRecommendProducts tbRecommendProducts);

    /**
     * 新增推优品
     * 
     * @param tbRecommendProducts 推优品
     * @return 结果
     */
    public int insertTbRecommendProducts(TbRecommendProducts tbRecommendProducts);

    /**
     * 修改推优品
     * 
     * @param tbRecommendProducts 推优品
     * @return 结果
     */
    public int updateTbRecommendProducts(TbRecommendProducts tbRecommendProducts);

    /**
     * 删除推优品
     * 
     * @param newsId 推优品主键
     * @return 结果
     */
    public int deleteTbRecommendProductsByNewsId(Long newsId);

    /**
     * 批量删除推优品
     * 
     * @param newsIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbRecommendProductsByNewsIds(Long[] newsIds);


    public List<TbRecommendProducts> selectTbRecommendProductsByColumn(@Param("firstColumn")String firstColumn, @Param("secondColumn")String secondColumn);

    public List<TbRecommendProducts> selectTbRecommendProductsFirstColumnsList(TbRecommendProducts tbRecommendProducts);

    public int updateTbRecommendProductsFirstColumns(TbRecommendProducts tbRecommendProducts);
}
