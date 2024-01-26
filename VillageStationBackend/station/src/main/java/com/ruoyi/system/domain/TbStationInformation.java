package com.ruoyi.system.domain;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import lombok.Data;

/**
 * 驿站信息对象 tb_station_information
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2024/1/17 15:20
 **/
@Data
public class TbStationInformation extends BaseEntity {
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

    /** 驿站id */
    @Excel(name = "驿站id")
    private String sort;
}

