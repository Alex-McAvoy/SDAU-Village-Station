package com.ruoyi.system.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 文件服务器对象 tb_file_server
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/14 21:27
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class TbFileServer extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long fileId;

    /** 文件类型  （文件名后缀） */
    @Excel(name = "文件类型  ", readConverterExp = "文=件名后缀")
    private String fileType;

    /** 文件名 */
    @Excel(name = "文件名")
    private String fileName;

    /** 原始文件名 */
    @Excel(name = "原始文件名")
    private String original;

    /** 存储桶名称 */
    @Excel(name = "存储桶名称")
    private String bucketName;

    /** 文件地址 */
    @Excel(name = "文件地址")
    private String fileUrl;

    /** 文件大小（单位:k） */
    @Excel(name = "文件大小", readConverterExp = "单=位:k")
    private Long fileSize;

    /** 删除标志（0代表存在 2代表删除） */
    private String delFlag;

    /** 表名称 */
    @Excel(name = "表名称")
    private String tableName;

    /** 表id */
    @Excel(name = "表id")
    private Long tableId;

    /** 排序 */
    @Excel(name = "排序")
    private String sort;

}
