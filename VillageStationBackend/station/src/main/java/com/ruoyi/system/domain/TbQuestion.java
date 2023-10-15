package com.ruoyi.system.domain;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import lombok.Data;

/**
 * 评论/问答对象 tb_question
 * 
 * @author ruoyi
 * @date 2023-10-04
 */
@Data
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

    /** 父ID */
    @Excel(name = "父ID")
    private Long parentId;

    /** 专家id */
    @Excel(name = "专家ID")
    private Long expertId;

    /** 问题title */
    @Excel(name = "专家ID")
    private String questionTitle;

    @Excel(name = "审核字段")
    private String firstColumn;

    private String sort;
}
