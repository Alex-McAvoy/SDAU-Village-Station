package com.ruoyi.system.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbPurchaseFarmMapper;
import com.ruoyi.system.domain.TbPurchaseFarm;
import com.ruoyi.system.service.ITbPurchaseFarmService;

/**
 * 买农资Service业务层处理
 *
 * @author ruoyi
 * @date 2023-10-06
 */
@Service
public class TbPurchaseFarmServiceImpl implements ITbPurchaseFarmService {
    @Autowired
    private TbPurchaseFarmMapper tbPurchaseFarmMapper;

    /**
     * 查询买农资
     *
     * @param newsId 买农资主键
     * @return 买农资
     */
    @Override
    public TbPurchaseFarm selectTbPurchaseFarmByNewsId(Long newsId) {
        return tbPurchaseFarmMapper.selectTbPurchaseFarmByNewsId(newsId);
    }

    /**
     * 查询买农资列表
     *
     * @param tbPurchaseFarm 买农资
     * @return 买农资
     */
    @Override
    public List<TbPurchaseFarm> selectTbPurchaseFarmList(TbPurchaseFarm tbPurchaseFarm) {
        return tbPurchaseFarmMapper.selectTbPurchaseFarmList(tbPurchaseFarm);
    }

    /**
     * 新增买农资
     *
     * @param tbPurchaseFarm 买农资
     * @return 结果
     */
    @Override
    public int insertTbPurchaseFarm(TbPurchaseFarm tbPurchaseFarm) {
        tbPurchaseFarm.setCreateTime(DateUtils.getNowDate());
        return tbPurchaseFarmMapper.insertTbPurchaseFarm(tbPurchaseFarm);
    }

    /**
     * 修改买农资
     *
     * @param tbPurchaseFarm 买农资
     * @return 结果
     */
    @Override
    public int updateTbPurchaseFarm(TbPurchaseFarm tbPurchaseFarm) {
        tbPurchaseFarm.setUpdateTime(DateUtils.getNowDate());
        return tbPurchaseFarmMapper.updateTbPurchaseFarm(tbPurchaseFarm);
    }

    /**
     * 批量删除买农资
     *
     * @param newsIds 需要删除的买农资主键
     * @return 结果
     */
    @Override
    public int deleteTbPurchaseFarmByNewsIds(Long[] newsIds) {
        return tbPurchaseFarmMapper.deleteTbPurchaseFarmByNewsIds(newsIds);
    }

    /**
     * 删除买农资信息
     *
     * @param newsId 买农资主键
     * @return 结果
     */
    @Override
    public int deleteTbPurchaseFarmByNewsId(Long newsId) {
        return tbPurchaseFarmMapper.deleteTbPurchaseFarmByNewsId(newsId);
    }

    @Override
    public List<TbPurchaseFarm> selectTbPurchaseFarmByColumn(String firstColumn, String secondColumn) {
        return tbPurchaseFarmMapper.selectTbPurchaseFarmByColumn(firstColumn, secondColumn);
    }

    @Override
    public List<TbPurchaseFarm> selectTbPurchaseFarmBySort(String firstColumn, String secondColumn, String sort) {
        return tbPurchaseFarmMapper.selectTbPurchaseFarmBySort(firstColumn, secondColumn, sort);
    }

    @Override
    public List<TbPurchaseFarm> selectTbPurchaseFarmFirstColumnsList(TbPurchaseFarm tbPurchaseFarm) {
        return tbPurchaseFarmMapper.selectTbPurchaseFarmFirstColumnsList(tbPurchaseFarm);
    }

    @Override
    public int updateTbPurchaseFarmFirstColumns(TbPurchaseFarm tbPurchaseFarm) {
        tbPurchaseFarm.setUpdateTime(DateUtils.getNowDate());
        return tbPurchaseFarmMapper.updateTbPurchaseFarmFirstColumns(tbPurchaseFarm);
    }

    @Override
    public int updateReading(TbPurchaseFarm tbPurchaseFarm) {
        return tbPurchaseFarmMapper.updateReading(tbPurchaseFarm);
    }

    @Override
    public int addLikes(TbPurchaseFarm tbPurchaseFarm) {
        return tbPurchaseFarmMapper.addLikes(tbPurchaseFarm);
    }

    @Override
    public int subLikes(TbPurchaseFarm tbPurchaseFarm) {
        return tbPurchaseFarmMapper.subLikes(tbPurchaseFarm);
    }

    @Override
    public int addCollect(TbPurchaseFarm tbPurchaseFarm) {
        return tbPurchaseFarmMapper.addCollect(tbPurchaseFarm);
    }

    @Override
    public int subCollect(TbPurchaseFarm tbPurchaseFarm) {
        return tbPurchaseFarmMapper.subCollect(tbPurchaseFarm);
    }

    @Override
    public List<TbPurchaseFarm> selectTbPurchaseFarmByLike(String query) {
        return tbPurchaseFarmMapper.selectTbPurchaseFarmByLike(query);
    }

    //通过id列表来查询
    @Override
    public List<TbPurchaseFarm> selectTbPurchaseFarmByIdList(Long[] idList) {
        return tbPurchaseFarmMapper.selectTbPurchaseFarmByIdList(idList);
    }
}
