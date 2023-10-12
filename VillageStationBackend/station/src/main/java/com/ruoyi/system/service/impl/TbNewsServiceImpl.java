package com.ruoyi.system.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.system.mapper.TbNewsMapper;
import com.ruoyi.system.service.ITbNewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.domain.TbNews;

/**
 * 其它栏目
 * 一级栏目              二级栏目 （在字典中设置）
 * 学农技：            水稻、小麦..
 * 买农资：           节肥增效、虫害防治..
 * 找渠道：           供应、求购..
 * 推优品：           我的优品、品牌展示..
 * 新品种：
 * 培训：              园艺培训、粮食种植..
 * 热销农产：Service业务层处理
 *
 * @author ruoyi
 * @date 2023-10-02
 */
@Service
public class TbNewsServiceImpl implements ITbNewsService {
    @Autowired
    private TbNewsMapper tbNewsMapper;

    @Override
    public TbNews selectTbOtherColumnsByNewsId(Long newsId) {
        return tbNewsMapper.selectTbOtherColumnsByNewsId(newsId);
    }

    @Override
    public List<TbNews> selectTbOtherColumnsList(TbNews tbNews) {
        return tbNewsMapper.selectTbOtherColumnsList(tbNews);
    }

    @Override
    public int insertTbOtherColumns(TbNews tbNews) {
        tbNews.setCreateTime(DateUtils.getNowDate());
        return tbNewsMapper.insertTbOtherColumns(tbNews);
    }

    @Override
    public int updateTbOtherColumns(TbNews tbNews) {
        tbNews.setUpdateTime(DateUtils.getNowDate());
        return tbNewsMapper.updateTbOtherColumns(tbNews);
    }


    @Override
    public int deleteTbOtherColumnsByNewsIds(Long[] newsIds) {
        return tbNewsMapper.deleteTbOtherColumnsByNewsIds(newsIds);
    }

    @Override
    public int deleteTbOtherColumnsByNewsId(Long newsId) {
        return tbNewsMapper.deleteTbOtherColumnsByNewsId(newsId);
    }

    @Override
    public List<TbNews> selectTbNewsByColumn(String firstColumn, String secondColumn) {
        return tbNewsMapper.selectTbNewsByColumn(firstColumn, secondColumn);
    }

    @Override
    public List<TbNews> selectTbNewsFirstColumnsList(TbNews tbNews) {
        return tbNewsMapper.selectTbNewsFirstColumnsList(tbNews);
    }

    @Override
    public int updateTbNewsFirstColumns(TbNews tbNews) {
        tbNews.setUpdateTime(DateUtils.getNowDate());
        return tbNewsMapper.updateTbNewsFirstColumns(tbNews);
    }

    @Override
    public int updateReading(TbNews tbNews) {
        return tbNewsMapper.updateReading(tbNews);
    }

    @Override
    public int addLikes(TbNews tbNews) {
        return tbNewsMapper.addLikes(tbNews);
    }

    @Override
    public int subLikes(TbNews tbNews) {
        return tbNewsMapper.subLikes(tbNews);
    }

    @Override
    public int addCollect(TbNews tbNews) {
        return tbNewsMapper.addCollect(tbNews);
    }

    @Override
    public int subCollect(TbNews tbNews) {
        return tbNewsMapper.subCollect(tbNews);
    }
}