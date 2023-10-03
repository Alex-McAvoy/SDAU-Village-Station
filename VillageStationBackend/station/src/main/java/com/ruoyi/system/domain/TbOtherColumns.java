package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：对象 tb_other_columns
 * 
 * @author ruoyi
 * @date 2023-10-02
 */
public class TbOtherColumns extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long newsId;

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

    public void setNewsId(Long newsId) 
    {
        this.newsId = newsId;
    }

    public Long getNewsId() 
    {
        return newsId;
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

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("newsId", getNewsId())
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
            .toString();
    }
}
