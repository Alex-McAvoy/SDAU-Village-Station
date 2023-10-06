package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 随时问对象 tb_ask_free
 * 
 * @author ruoyi
 * @date 2023-10-03
 */
public class TbAskFree extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long askFreeId;

    /** 标题 */
    @Excel(name = "标题")
    private String title;

    /** 内容 */
    @Excel(name = "内容")
    private String content;

    /** 删除标志（0代表存在 2代表删除） */
    private String delFlag;

    /** 用户ID */
    private Long userId;
    /** 父ID */
    private Long parentId;

    @Override
    public String toString() {
        return "TbAskFree{" +
                "askFreeId=" + askFreeId +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", delFlag='" + delFlag + '\'' +
                ", userId=" + userId +
                ", parentId=" + parentId +
                '}';
    }

    public Long getParentId() {
        return parentId;
    }

    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public void setAskFreeId(Long askFreeId)
    {
        this.askFreeId = askFreeId;
    }

    public Long getAskFreeId() 
    {
        return askFreeId;
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

}
