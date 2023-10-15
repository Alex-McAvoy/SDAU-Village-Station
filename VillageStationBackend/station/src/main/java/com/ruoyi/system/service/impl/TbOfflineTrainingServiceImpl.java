package com.ruoyi.system.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbOfflineTrainingMapper;
import com.ruoyi.system.domain.TbOfflineTraining;
import com.ruoyi.system.service.ITbOfflineTrainingService;

/**
 * 线下培训Service业务层处理
 *
 * @author ruoyi
 * @date 2023-10-09
 */
@Service
public class TbOfflineTrainingServiceImpl implements ITbOfflineTrainingService {
    @Autowired
    private TbOfflineTrainingMapper tbOfflineTrainingMapper;

    /**
     * 查询线下培训
     *
     * @param newsId 线下培训主键
     * @return 线下培训
     */
    @Override
    public TbOfflineTraining selectTbOfflineTrainingByNewsId(Long newsId) {
        return tbOfflineTrainingMapper.selectTbOfflineTrainingByNewsId(newsId);
    }

    /**
     * 查询线下培训列表
     *
     * @param tbOfflineTraining 线下培训
     * @return 线下培训
     */
    @Override
    public List<TbOfflineTraining> selectTbOfflineTrainingList(TbOfflineTraining tbOfflineTraining) {
        return tbOfflineTrainingMapper.selectTbOfflineTrainingList(tbOfflineTraining);
    }

    /**
     * 新增线下培训
     *
     * @param tbOfflineTraining 线下培训
     * @return 结果
     */
    @Override
    public int insertTbOfflineTraining(TbOfflineTraining tbOfflineTraining) {
        tbOfflineTraining.setCreateTime(DateUtils.getNowDate());
        return tbOfflineTrainingMapper.insertTbOfflineTraining(tbOfflineTraining);
    }

    /**
     * 修改线下培训
     *
     * @param tbOfflineTraining 线下培训
     * @return 结果
     */
    @Override
    public int updateTbOfflineTraining(TbOfflineTraining tbOfflineTraining) {
        tbOfflineTraining.setUpdateTime(DateUtils.getNowDate());
        return tbOfflineTrainingMapper.updateTbOfflineTraining(tbOfflineTraining);
    }

    /**
     * 批量删除线下培训
     *
     * @param newsIds 需要删除的线下培训主键
     * @return 结果
     */
    @Override
    public int deleteTbOfflineTrainingByNewsIds(Long[] newsIds) {
        return tbOfflineTrainingMapper.deleteTbOfflineTrainingByNewsIds(newsIds);
    }

    /**
     * 删除线下培训信息
     *
     * @param newsId 线下培训主键
     * @return 结果
     */
    @Override
    public int deleteTbOfflineTrainingByNewsId(Long newsId) {
        return tbOfflineTrainingMapper.deleteTbOfflineTrainingByNewsId(newsId);
    }

    @Override
    public List<TbOfflineTraining> selectTbOfflineTrainingByColumn(String firstColumn) {
        return tbOfflineTrainingMapper.selectTbOfflineTrainingByColumn(firstColumn);
    }

    @Override
    public List<TbOfflineTraining> selectTbOfflineTrainingFirstColumnsList(TbOfflineTraining tbOfflineTraining) {
        return tbOfflineTrainingMapper.selectTbOfflineTrainingFirstColumnsList(tbOfflineTraining);
    }

    @Override
    public int updateTbOfflineTrainingFirstColumns(TbOfflineTraining tbOfflineTraining) {
        tbOfflineTraining.setUpdateTime(DateUtils.getNowDate());
        return tbOfflineTrainingMapper.updateTbOfflineTrainingFirstColumns(tbOfflineTraining);
    }

    @Override
    public int updateReading(TbOfflineTraining tbOfflineTraining) {
        return tbOfflineTrainingMapper.updateReading(tbOfflineTraining);
    }

    @Override
    public int addLikes(TbOfflineTraining tbOfflineTraining) {
        return tbOfflineTrainingMapper.addLikes(tbOfflineTraining);
    }

    @Override
    public int subLikes(TbOfflineTraining tbOfflineTraining) {
        return tbOfflineTrainingMapper.subLikes(tbOfflineTraining);
    }

    @Override
    public int addCollect(TbOfflineTraining tbOfflineTraining) {
        return tbOfflineTrainingMapper.addCollect(tbOfflineTraining);
    }

    @Override
    public int subCollect(TbOfflineTraining tbOfflineTraining) {
        return tbOfflineTrainingMapper.subCollect(tbOfflineTraining);
    }

    @Override
    public List<TbOfflineTraining> selectTbOfflineTrainingByLike(String query) {
        return tbOfflineTrainingMapper.selectTbOfflineTrainingByLike(query);
    }

    //通过id列表来查询
    @Override
    public List<TbOfflineTraining> selectTbOfflineTrainingByIdList(Long[] idList) {
        return tbOfflineTrainingMapper.selectTbOfflineTrainingByIdList(idList);
    }
}
