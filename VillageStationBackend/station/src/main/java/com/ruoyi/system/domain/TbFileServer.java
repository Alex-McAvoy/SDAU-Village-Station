package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 文件服务器对象 tb_file_server
 * 
 * @author ruoyi
 * @date 2023-10-05
 */
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

    public TbFileServer(Long fileId, String fileType, String fileName, String original, String bucketName, String fileUrl, Long fileSize, String delFlag, String tableName, Long tableId, String sort) {
        this.fileId = fileId;
        this.fileType = fileType;
        this.fileName = fileName;
        this.original = original;
        this.bucketName = bucketName;
        this.fileUrl = fileUrl;
        this.fileSize = fileSize;
        this.delFlag = delFlag;
        this.tableName = tableName;
        this.tableId = tableId;
        this.sort = sort;
    }

    public void setFileId(Long fileId)
    {
        this.fileId = fileId;
    }

    public Long getFileId() 
    {
        return fileId;
    }
    public void setFileType(String fileType) 
    {
        this.fileType = fileType;
    }

    public String getFileType() 
    {
        return fileType;
    }
    public void setFileName(String fileName) 
    {
        this.fileName = fileName;
    }

    public String getFileName() 
    {
        return fileName;
    }
    public void setOriginal(String original) 
    {
        this.original = original;
    }

    public String getOriginal() 
    {
        return original;
    }
    public void setBucketName(String bucketName) 
    {
        this.bucketName = bucketName;
    }

    public String getBucketName() 
    {
        return bucketName;
    }
    public void setFileUrl(String fileUrl) 
    {
        this.fileUrl = fileUrl;
    }

    public String getFileUrl() 
    {
        return fileUrl;
    }
    public void setFileSize(Long fileSize) 
    {
        this.fileSize = fileSize;
    }

    public Long getFileSize() 
    {
        return fileSize;
    }
    public void setDelFlag(String delFlag) 
    {
        this.delFlag = delFlag;
    }

    public String getDelFlag() 
    {
        return delFlag;
    }
    public void setTableName(String tableName) 
    {
        this.tableName = tableName;
    }

    public String getTableName() 
    {
        return tableName;
    }
    public void setTableId(Long tableId) 
    {
        this.tableId = tableId;
    }

    public Long getTableId() 
    {
        return tableId;
    }
    public void setSort(String sort) 
    {
        this.sort = sort;
    }

    public String getSort() 
    {
        return sort;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("fileId", getFileId())
            .append("fileType", getFileType())
            .append("fileName", getFileName())
            .append("original", getOriginal())
            .append("bucketName", getBucketName())
            .append("fileUrl", getFileUrl())
            .append("fileSize", getFileSize())
            .append("delFlag", getDelFlag())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("tableName", getTableName())
            .append("tableId", getTableId())
            .append("sort", getSort())
            .toString();
    }
}
