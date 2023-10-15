package com.ruoyi.system.domain;

import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 用户-驿站对象 tb_user_station
 *
 * @author ruoyi
 * @date 2023-10-14
 */
@Data
public class TbUserStation
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long newsId;

    /** 用户ID */
    @Excel(name = "用户ID")
    private Long userId;

    /** 驿站ID */
    @Excel(name = "驿站ID")
    private Long stationId;

}