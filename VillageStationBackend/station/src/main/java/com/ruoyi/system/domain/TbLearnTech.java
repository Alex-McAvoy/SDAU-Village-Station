package com.ruoyi.system.domain;

import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 学农技对象 tb_learn_tech
 * 
 * @author ruoyi
 * @date 2023-10-05
 */
@Data
public class TbLearnTech extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long articleId;

    /** 标题 */
    @Excel(name = "标题")
    private String title;

    /** 内容 */
    @Excel(name = "内容")
    private String content;

    /** 删除标志（0代表存在 2代表删除） */
    private String delFlag;

    /** 一级栏目编码 */
    @Excel(name = "一级栏目编码")
    private String firstColumn;

    /** 二级栏目编码 */
    @Excel(name = "二级栏目编码")
    private String secondColumn;

    /** 排序（可用于是否推荐） */
    @Excel(name = "排序", readConverterExp = "可=用于是否推荐")
    private String sort;

    /** 来源 */
    @Excel(name = "来源")
    private String source;

    /** 阅读量 */
    @Excel(name = "阅读量")
    private Long reading;

    /** 点赞量 */
    @Excel(name = "点赞量")
    private Long likes;

    /** 收藏量 */
    @Excel(name = "收藏量")
    private Long collect;
}
