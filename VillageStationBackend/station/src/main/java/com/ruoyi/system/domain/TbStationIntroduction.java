package com.ruoyi.system.domain;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import lombok.Data;

/**
 * 驿站介绍实体类 tb_station_introduction
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2024/1/19 10:48
 **/
@Data
public class TbStationIntroduction extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long id;

    /** 内容 */
    @Excel(name = "内容")
    private String content;

    /** 审核标志（1：已审核，0：未审核） */
    @Excel(name = "审核标志")
    private String audit;

    /** 二级栏目编码 */
    @Excel(name = "二级栏目编码")
    private String category;

    /** 驿站id */
    @Excel(name = "驿站id")
    private String sort;
}
