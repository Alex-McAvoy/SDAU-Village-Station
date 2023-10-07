package com.ruoyi.system.domain;

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

    public void setArticleId(Long articleId) 
    {
        this.articleId = articleId;
    }

    public Long getArticleId() 
    {
        return articleId;
    }
    public void setTitle(String title) 
    {
        this.title = title;
    }

    public String getTitle() 
    {
        return title;
    }
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }
    public void setDelFlag(String delFlag) 
    {
        this.delFlag = delFlag;
    }

    public String getDelFlag() 
    {
        return delFlag;
    }
    public void setFirstColumn(String firstColumn) 
    {
        this.firstColumn = firstColumn;
    }

    public String getFirstColumn() 
    {
        return firstColumn;
    }
    public void setSecondColumn(String secondColumn) 
    {
        this.secondColumn = secondColumn;
    }

    public String getSecondColumn() 
    {
        return secondColumn;
    }
    public void setSort(String sort) 
    {
        this.sort = sort;
    }

    public String getSort() 
    {
        return sort;
    }
    public void setSource(String source) 
    {
        this.source = source;
    }

    public String getSource() 
    {
        return source;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("articleId", getArticleId())
            .append("title", getTitle())
            .append("content", getContent())
            .append("delFlag", getDelFlag())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .append("firstColumn", getFirstColumn())
            .append("secondColumn", getSecondColumn())
            .append("sort", getSort())
            .append("source", getSource())
            .toString();
    }
}