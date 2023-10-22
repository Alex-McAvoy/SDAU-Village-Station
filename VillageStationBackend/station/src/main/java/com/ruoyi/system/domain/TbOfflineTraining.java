package com.ruoyi.system.domain;

import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 线下培训对象 tb_offline_training
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/14 21:27
 */
@Data
public class TbOfflineTraining extends BaseEntity
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

    /** 审核标志（1：已审核，0：未审核） */
    @Excel(name = "审核标志")
    private String audit;

    /** 二级栏目编码 */
    @Excel(name = "二级栏目编码")
    private String category;

    /** 阅读量 */
    @Excel(name = "阅读量")
    private Long reading;

    /** 点赞量 */
    @Excel(name = "点赞量")
    private Long likes;

    /** 收藏量 */
    @Excel(name = "收藏量")
    private Long collect;

    /** 排序（可用于是否推荐） */
    @Excel(name = "排序", readConverterExp = "可=用于是否推荐")
    private String sort;
}
