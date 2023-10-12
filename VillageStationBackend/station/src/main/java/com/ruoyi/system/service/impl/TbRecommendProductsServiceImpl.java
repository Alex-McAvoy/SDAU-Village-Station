package com.ruoyi.system.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbRecommendProductsMapper;
import com.ruoyi.system.domain.TbRecommendProducts;
import com.ruoyi.system.service.ITbRecommendProductsService;

/**
 * 推优品Service业务层处理
 *
 * @author ruoyi
 * @date 2023-10-04
 */
@Service
public class TbRecommendProductsServiceImpl implements ITbRecommendProductsService {
    @Autowired
    private TbRecommendProductsMapper tbRecommendProductsMapper;

    /**
     * 查询推优品
     *
     * @param newsId 推优品主键
     * @return 推优品
     */
    @Override
    public TbRecommendProducts selectTbRecommendProductsByNewsId(Long newsId) {
        return tbRecommendProductsMapper.selectTbRecommendProductsByNewsId(newsId);
    }

    /**
     * 查询推优品列表
     *
     * @param tbRecommendProducts 推优品
     * @return 推优品
     */
    @Override
    public List<TbRecommendProducts> selectTbRecommendProductsList(TbRecommendProducts tbRecommendProducts) {
        return tbRecommendProductsMapper.selectTbRecommendProductsList(tbRecommendProducts);
    }

    /**
     * 新增推优品
     *
     * @param tbRecommendProducts 推优品
     * @return 结果
     */
    @Override
    public int insertTbRecommendProducts(TbRecommendProducts tbRecommendProducts) {
        tbRecommendProducts.setCreateTime(DateUtils.getNowDate());
        return tbRecommendProductsMapper.insertTbRecommendProducts(tbRecommendProducts);
    }

    /**
     * 修改推优品
     *
     * @param tbRecommendProducts 推优品
     * @return 结果
     */
    @Override
    public int updateTbRecommendProducts(TbRecommendProducts tbRecommendProducts) {
        tbRecommendProducts.setUpdateTime(DateUtils.getNowDate());
        return tbRecommendProductsMapper.updateTbRecommendProducts(tbRecommendProducts);
    }

    /**
     * 批量删除推优品
     *
     * @param newsIds 需要删除的推优品主键
     * @return 结果
     */
    @Override
    public int deleteTbRecommendProductsByNewsIds(Long[] newsIds) {
        return tbRecommendProductsMapper.deleteTbRecommendProductsByNewsIds(newsIds);
    }

    /**
     * 删除推优品信息
     *
     * @param newsId 推优品主键
     * @return 结果
     */
    @Override
    public int deleteTbRecommendProductsByNewsId(Long newsId) {
        return tbRecommendProductsMapper.deleteTbRecommendProductsByNewsId(newsId);
    }

    @Override
    public List<TbRecommendProducts> selectTbRecommendProductsByColumn(String firstColumn, String secondColumn) {
        return tbRecommendProductsMapper.selectTbRecommendProductsByColumn(firstColumn, secondColumn);
    }

    @Override
    public List<TbRecommendProducts> selectTbRecommendProductsFirstColumnsList(TbRecommendProducts tbRecommendProducts) {
        return tbRecommendProductsMapper.selectTbRecommendProductsFirstColumnsList(tbRecommendProducts);
    }

    @Override
    public int updateTbRecommendProductsFirstColumns(TbRecommendProducts tbRecommendProducts) {
        tbRecommendProducts.setUpdateTime(DateUtils.getNowDate());
        return tbRecommendProductsMapper.updateTbRecommendProductsFirstColumns(tbRecommendProducts);
    }

    @Override
    public int updateReading(TbRecommendProducts tbRecommendProducts) {
        return tbRecommendProductsMapper.updateReading(tbRecommendProducts);
    }

    @Override
    public int addLikes(TbRecommendProducts tbRecommendProducts) {
        return tbRecommendProductsMapper.addLikes(tbRecommendProducts);
    }

    @Override
    public int addCollect(TbRecommendProducts tbRecommendProducts) {
        return tbRecommendProductsMapper.addCollect(tbRecommendProducts);
    }
}
