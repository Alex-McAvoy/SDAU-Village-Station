package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbQuestionMapper;
import com.ruoyi.system.domain.TbQuestion;
import com.ruoyi.system.service.ITbQuestionService;

/**
 * 评论/问答Service业务层处理
 *
 * @author ruoyi
 * @date 2023-10-04
 */
@Service
public class TbQuestionServiceImpl implements ITbQuestionService
{
    @Autowired
    private TbQuestionMapper tbQuestionMapper;

    /**
     * 查询专家对应评论/问答
     *
     * @param expertId
     * @return 评论/问答
     */
    @Override
    public List<TbQuestion> selectTbQuestionByExpertId(Long expertId)
    {
        return tbQuestionMapper.selectTbQuestionByExpertId(expertId);
    }

    /**
     * 查询评论/问答
     *
     * @param quetionId
     * @return 评论/问答
     */
    @Override
    public List<TbQuestion> selectTbQuestionByQuestionId(Long quetionId)
    {
        return tbQuestionMapper.selectTbQuestionByQuestionId(quetionId);
    }

    /**
     * 查询评论/问答列表
     *
     * @param tbQuestion 评论/问答
     * @return 评论/问答
     */
    @Override
    public List<TbQuestion> selectTbQuestionList(TbQuestion tbQuestion)
    {
        return tbQuestionMapper.selectTbQuestionList(tbQuestion);
    }

    /**
     * 新增评论/问答
     *
     * @param tbQuestion 评论/问答
     * @return 结果
     */
    @Override
    public int insertTbQuestion(TbQuestion tbQuestion)
    {
        tbQuestion.setCreateTime(DateUtils.getNowDate());
        return tbQuestionMapper.insertTbQuestion(tbQuestion);
    }

    /**
     * 修改评论/问答
     *
     * @param tbQuestion 评论/问答
     * @return 结果
     */
    @Override
    public int updateTbQuestion(TbQuestion tbQuestion)
    {
        return tbQuestionMapper.updateTbQuestion(tbQuestion);
    }

    /**
     * 批量删除评论/问答
     *
     * @param questionIds 需要删除的评论/问答主键
     * @return 结果
     */
    @Override
    public int deleteTbQuestionByQuestionIds(Long[] questionIds)
    {
        return tbQuestionMapper.deleteTbQuestionByQuestionIds(questionIds);
    }

    /**
     * 删除评论/问答信息
     *
     * @param questionId 评论/问答主键
     * @return 结果
     */
    @Override
    public int deleteTbQuestionByQuestionId(Long questionId)
    {
        return tbQuestionMapper.deleteTbQuestionByQuestionId(questionId);
    }

    @Override
    public List<TbQuestion> selectTbQuestionByParentId(Long parentId, String firstColumn)
    {
        return tbQuestionMapper.selectTbQuestionByParentId(parentId,firstColumn);
    }

    @Override
    public List<TbQuestion> selectTbQuestionByColumn(Long expertId, String firstColumn) {
        return tbQuestionMapper.selectTbQuestionByColumn(expertId, firstColumn);
    }

    @Override
    public List<TbQuestion> selectTbQuestionFirstColumnsList(TbQuestion tbQuestion) {
        return tbQuestionMapper.selectTbQuestionFirstColumnsList(tbQuestion);
    }

    @Override
    public int updateTbQuestionFirstColumns(TbQuestion tbQuestion) {
        tbQuestion.setUpdateTime(DateUtils.getNowDate());
        return tbQuestionMapper.updateTbQuestionFirstColumns(tbQuestion);
    }
}
