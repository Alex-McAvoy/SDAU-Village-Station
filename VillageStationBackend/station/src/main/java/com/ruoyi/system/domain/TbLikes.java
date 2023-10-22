package com.ruoyi.system.domain;

import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 点赞对象 tb_likes
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/14 21:27
 */
@Data
public class TbLikes
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long id;

    /** 用户ID */
    @Excel(name = "用户ID ")
    private Long userId;

    /** 表名 */
    @Excel(name = "表名")
    private String tableName;

    /** 文章ID */
    @Excel(name = "文章ID")
    private Long articleId;

    /** 点赞状态，1为点赞，0为不点赞 */
    @Excel(name = "点赞状态，1为点赞，0为不点赞")
    private Long status;

}
