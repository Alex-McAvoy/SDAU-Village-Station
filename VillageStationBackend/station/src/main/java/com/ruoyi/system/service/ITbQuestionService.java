package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TbQuestion;

/**
 * 评论/问答Service接口
 * 
 * @author ruoyi
 * @date 2023-10-04
 */
public interface ITbQuestionService 
{
    /**
     * 查询专家评论/问答
     * 
     * @param expertId 专家ID
     * @return 评论/问答
     */
    public List<TbQuestion> selectTbQuestionByExpertId(Long expertId);

    /**
     * 查询评论/问答
     *
     * @param questionId 评论/问答主键
     * @return 评论/问答
     */
    public List<TbQuestion> selectTbQuestionByQuestionId(Long questionId);

    /**
     * 查询评论/问答列表
     * 
     * @param tbQuestion 评论/问答
     * @return 评论/问答集合
     */
    public List<TbQuestion> selectTbQuestionList(TbQuestion tbQuestion);

    /**
     * 新增评论/问答
     * 
     * @param tbQuestion 评论/问答
     * @return 结果
     */
    public int insertTbQuestion(TbQuestion tbQuestion);

    /**
     * 修改评论/问答
     * 
     * @param tbQuestion 评论/问答
     * @return 结果
     */
    public int updateTbQuestion(TbQuestion tbQuestion);

    /**
     * 批量删除评论/问答
     * 
     * @param questionIds 需要删除的评论/问答主键集合
     * @return 结果
     */
    public int deleteTbQuestionByQuestionIds(Long[] questionIds);

    /**
     * 删除评论/问答信息
     * 
     * @param questionId 评论/问答主键
     * @return 结果
     */
    public int deleteTbQuestionByQuestionId(Long questionId);

    public List<TbQuestion> selectTbQuestionByParentId(Long parentId,  String firstColumn);

    public List<TbQuestion> selectTbQuestionByColumn(Long expertId, String firstColumn);

    public List<TbQuestion> selectTbQuestionBySort(Long expertId, String firstColumn,String sort);

    public List<TbQuestion> selectTbQuestionFirstColumnsList(TbQuestion tbQuestion);

    public int updateTbQuestionFirstColumns(TbQuestion tbQuestion);
}
