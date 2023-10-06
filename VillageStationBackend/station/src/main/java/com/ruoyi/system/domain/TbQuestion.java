package com.ruoyi.system.domain;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 评论/问答对象 tb_question
 * 
 * @author ruoyi
 * @date 2023-10-04
 */
public class TbQuestion extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 用户ID */
    private Long questionId;

    /** 问题/评论 */
    @Excel(name = "问题/评论")
    private String question;

    /** 删除标志（0代表存在 2代表删除） */
    private String delFlag;

    /** 表名 */
    @Excel(name = "表名")
    private String tableName;

    @Override
    public String toString() {
        return "TbQuestion{" +
                "questionId=" + questionId +
                ", question='" + question + '\'' +
                ", delFlag='" + delFlag + '\'' +
                ", tableName='" + tableName + '\'' +
                ", parentId=" + parentId +
                ", expertId=" + expertId +
                ", questionTitle='" + questionTitle + '\'' +
                '}';
    }

    /** 父ID */
    @Excel(name = "父ID")
    private Long parentId;

    public Long getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Long questionId) {
        this.questionId = questionId;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public Long getParentId() {
        return parentId;
    }

    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }

    public Long getExpertId() {
        return expertId;
    }

    public void setExpertId(Long expertId) {
        this.expertId = expertId;
    }

    public String getQuestionTitle() {
        return questionTitle;
    }

    public void setQuestionTitle(String questionTitle) {
        this.questionTitle = questionTitle;
    }

    /** 专家id */
    @Excel(name = "专家ID")
    private Long expertId;
    /** 问题title */
    @Excel(name = "专家ID")
    private String questionTitle;


}
