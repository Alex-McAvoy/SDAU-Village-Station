package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 问专家对象 tb_ask_expert
 * 
 * @author ruoyi
 * @date 2023-10-03
 */
public class TbAskExpert extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long askExpertsId;

    /** 专家姓名 */
    @Excel(name = "专家姓名")
    private String expertName;

    /** 简介 */
    @Excel(name = "简介")
    private String introduction;

    /** 专家类型 （新建专家类型字典   对应 sys_dict_data中dict_value） */
    @Excel(name = "专家类型 ", readConverterExp = "新=建专家类型字典,对=应,s=ys_dict_data中dict_value")
    private String dictValue;

    /** 删除标志（0代表存在 2代表删除） */
    private String delFlag;

    /** 用于绑定专家账号 */
    @Excel(name = "用于绑定专家账号")
    private Long userId;

    @Excel(name = "研究方向")
    private String direction;
    @Excel(name = "科研经历")
    private String researchIntroduction;

    public String getResearchIntroduction() {
        return researchIntroduction;
    }

    public void setResearchIntroduction(String researchIntroduction) {
        this.researchIntroduction = researchIntroduction;
    }

    public String getDirection() {
        return direction;
    }

    public void setDirection(String direction) {
        this.direction = direction;
    }

    public void setAskExpertsId(Long askExpertsId)
    {
        this.askExpertsId = askExpertsId;
    }

    public Long getAskExpertsId() 
    {
        return askExpertsId;
    }
    public void setExpertName(String expertName) 
    {
        this.expertName = expertName;
    }

    public String getExpertName() 
    {
        return expertName;
    }
    public void setIntroduction(String introduction) 
    {
        this.introduction = introduction;
    }

    public String getIntroduction() 
    {
        return introduction;
    }
    public void setDictValue(String dictValue) 
    {
        this.dictValue = dictValue;
    }

    public String getDictValue() 
    {
        return dictValue;
    }
    public void setDelFlag(String delFlag) 
    {
        this.delFlag = delFlag;
    }

    public String getDelFlag() 
    {
        return delFlag;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }

    @Override
    public String toString() {
        return "TbAskExpert{" +
                "askExpertsId=" + askExpertsId +
                ", expertName='" + expertName + '\'' +
                ", introduction='" + introduction + '\'' +
                ", dictValue='" + dictValue + '\'' +
                ", delFlag='" + delFlag + '\'' +
                ", userId=" + userId +
                ", direction='" + direction + '\'' +
                ", researchIntroduction='" + researchIntroduction + '\'' +
                '}';
    }
}
