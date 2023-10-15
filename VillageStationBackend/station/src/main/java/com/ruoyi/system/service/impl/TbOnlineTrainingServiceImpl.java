package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbOnlineTrainingMapper;
import com.ruoyi.system.domain.TbOnlineTraining;
import com.ruoyi.system.service.ITbOnlineTrainingService;

/**
 * 线上培训Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-10-11
 */
@Service
public class TbOnlineTrainingServiceImpl implements ITbOnlineTrainingService 
{
    @Autowired
    private TbOnlineTrainingMapper tbOnlineTrainingMapper;

    /**
     * 查询线上培训
     * 
     * @param newsId 线上培训主键
     * @return 线上培训
     */
    @Override
    public TbOnlineTraining selectTbOnlineTrainingByNewsId(Long newsId)
    {
        return tbOnlineTrainingMapper.selectTbOnlineTrainingByNewsId(newsId);
    }

    /**
     * 查询线上培训列表
     * 
     * @param tbOnlineTraining 线上培训
     * @return 线上培训
     */
    @Override
    public List<TbOnlineTraining> selectTbOnlineTrainingList(TbOnlineTraining tbOnlineTraining)
    {
        return tbOnlineTrainingMapper.selectTbOnlineTrainingList(tbOnlineTraining);
    }

    /**
     * 新增线上培训
     * 
     * @param tbOnlineTraining 线上培训
     * @return 结果
     */
    @Override
    public int insertTbOnlineTraining(TbOnlineTraining tbOnlineTraining)
    {
        tbOnlineTraining.setCreateTime(DateUtils.getNowDate());
        return tbOnlineTrainingMapper.insertTbOnlineTraining(tbOnlineTraining);
    }

    /**
     * 修改线上培训
     * 
     * @param tbOnlineTraining 线上培训
     * @return 结果
     */
    @Override
    public int updateTbOnlineTraining(TbOnlineTraining tbOnlineTraining)
    {
        tbOnlineTraining.setUpdateTime(DateUtils.getNowDate());
        return tbOnlineTrainingMapper.updateTbOnlineTraining(tbOnlineTraining);
    }

    /**
     * 批量删除线上培训
     * 
     * @param newsIds 需要删除的线上培训主键
     * @return 结果
     */
    @Override
    public int deleteTbOnlineTrainingByNewsIds(Long[] newsIds)
    {
        return tbOnlineTrainingMapper.deleteTbOnlineTrainingByNewsIds(newsIds);
    }

    /**
     * 删除线上培训信息
     * 
     * @param newsId 线上培训主键
     * @return 结果
     */
    @Override
    public int deleteTbOnlineTrainingByNewsId(Long newsId)
    {
        return tbOnlineTrainingMapper.deleteTbOnlineTrainingByNewsId(newsId);
    }

    @Override
    public List<TbOnlineTraining> selectTbOnlineTrainingByColumn(String firstColumn) {
        return tbOnlineTrainingMapper.selectTbOnlineTrainingByColumn(firstColumn);
    }

    @Override
    public List<TbOnlineTraining> selectTbOnlineTrainingFirstColumnsList(TbOnlineTraining tbOnlineTraining) {
        return tbOnlineTrainingMapper.selectTbOnlineTrainingFirstColumnsList(tbOnlineTraining);
    }

    @Override
    public int updateTbOnlineTrainingFirstColumns(TbOnlineTraining tbOnlineTraining) {
        tbOnlineTraining.setUpdateTime(DateUtils.getNowDate());
        return tbOnlineTrainingMapper.updateTbOnlineTrainingFirstColumns(tbOnlineTraining);
    }

    @Override
    public int updateReading(TbOnlineTraining tbOnlineTraining) {
        return tbOnlineTrainingMapper.updateReading(tbOnlineTraining);
    }

    @Override
    public int addLikes(TbOnlineTraining tbOnlineTraining) {
        return tbOnlineTrainingMapper.addLikes(tbOnlineTraining);
    }

    @Override
    public int subLikes(TbOnlineTraining tbOnlineTraining) {
        return tbOnlineTrainingMapper.subLikes(tbOnlineTraining);
    }

    @Override
    public int addCollect(TbOnlineTraining tbOnlineTraining) {
        return tbOnlineTrainingMapper.addCollect(tbOnlineTraining);
    }

    @Override
    public int subCollect(TbOnlineTraining tbOnlineTraining) {
        return tbOnlineTrainingMapper.subCollect(tbOnlineTraining);
    }

    @Override
    public List<TbOnlineTraining> selectTbOnlineTrainingByLike(String query) {
        return tbOnlineTrainingMapper.selectTbOnlineTrainingByLike(query);
    }

    //通过id列表来查询
    @Override
    public List<TbOnlineTraining> selectTbOnlineTrainingByIdList(Long[] idList) {
        return tbOnlineTrainingMapper.selectTbOnlineTrainingByIdList(idList);
    }

}
