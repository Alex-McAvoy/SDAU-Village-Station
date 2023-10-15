package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 收藏对象 tb_collect
 * 
 * @author ruoyi
 * @date 2023-10-13
 */
public class TbCollect extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long newsId;

    /** 用户ID
 */
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

    public void setNewsId(Long newsId) 
    {
        this.newsId = newsId;
    }

    public Long getNewsId() 
    {
        return newsId;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }
    public void setTableName(String tableName) 
    {
        this.tableName = tableName;
    }

    public String getTableName() 
    {
        return tableName;
    }
    public void setArticleId(Long articleId) 
    {
        this.articleId = articleId;
    }

    public Long getArticleId() 
    {
        return articleId;
    }
    public void setStatus(Long status) 
    {
        this.status = status;
    }

    public Long getStatus() 
    {
        return status;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("newsId", getNewsId())
            .append("userId", getUserId())
            .append("tableName", getTableName())
            .append("articleId", getArticleId())
            .append("status", getStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
