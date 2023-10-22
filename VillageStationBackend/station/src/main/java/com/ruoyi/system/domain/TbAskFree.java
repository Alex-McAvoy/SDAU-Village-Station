package com.ruoyi.system.domain;

import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 随时问对象 tb_ask_free
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/14 21:27
 */
@Data
public class TbAskFree extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long id;

    /** 标题 */
    @Excel(name = "标题")
    private String title;

    /** 内容 */
    @Excel(name = "内容")
    private String content;

    /** 用户ID（发布该评论/问题的用户ID） */
    private Long userId;

    /** 父ID（为空时为该条为问题，有title与content，非空时是id为当前parentId对应的问题的评论） */
    private Long parentId;

    /** 审核标志（1：已审核，0：未审核） */
    private String audit;

    private String sort;
}
