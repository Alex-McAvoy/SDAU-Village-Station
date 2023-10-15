package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TbRecommendProducts;

/**
 * 推优品Service接口
 * 
 * @author ruoyi
 * @date 2023-10-04
 */
public interface ITbRecommendProductsService 
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
     * 批量删除推优品
     * 
     * @param newsIds 需要删除的推优品主键集合
     * @return 结果
     */
    public int deleteTbRecommendProductsByNewsIds(Long[] newsIds);

    /**
     * 删除推优品信息
     * 
     * @param newsId 推优品主键
     * @return 结果
     */
    public int deleteTbRecommendProductsByNewsId(Long newsId);

    public List<TbRecommendProducts> selectTbRecommendProductsByColumn(String firstColumn, String secondColumn);

    public List<TbRecommendProducts> selectTbRecommendProductsBySort(String firstColumn, String secondColumn,String sort);

    List<TbRecommendProducts> selectTbRecommendProductsFirstColumnsList(TbRecommendProducts tbRecommendProducts);

    public int updateTbRecommendProductsFirstColumns(TbRecommendProducts tbRecommendProducts);

    public int updateReading(TbRecommendProducts tbRecommendProducts);

    public int addLikes(TbRecommendProducts tbRecommendProducts);

    public int subLikes(TbRecommendProducts tbRecommendProducts);

    public int addCollect(TbRecommendProducts tbRecommendProducts);

    public int subCollect(TbRecommendProducts tbRecommendProducts);

    public List<TbRecommendProducts> selectTbRecommendProductsByLike(String query);

    //通过id列表来查询
    public List<TbRecommendProducts> selectTbRecommendProductsByIdList(Long[] idList);
}
