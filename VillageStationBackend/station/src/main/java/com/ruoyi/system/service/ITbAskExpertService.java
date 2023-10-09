package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TbAskExpert;

/**
 * 问专家Service接口
 * 
 * @author ruoyi
 * @date 2023-10-03
 */
public interface ITbAskExpertService 
{
    /**
     * 查询问专家
     * 
     * @param askExpertsId 问专家主键
     * @return 问专家
     */
    public TbAskExpert selectTbAskExpertByAskExpertsId(Long askExpertsId);

    /**
     * 查询不同领域的专家
     *
     * @param dictValue 不同领域的专家
     * @return 问专家
     */
    public List<TbAskExpert> selectTbAskExpertByDictValue(String dictValue);


    /**
     * 查询问专家列表
     * 
     * @param tbAskExpert 问专家
     * @return 问专家集合
     */
    public List<TbAskExpert> selectTbAskExpertList(TbAskExpert tbAskExpert);

    /**
     * 新增问专家
     * 
     * @param tbAskExpert 问专家
     * @return 结果
     */
    public int insertTbAskExpert(TbAskExpert tbAskExpert);

    /**
     * 修改问专家
     * 
     * @param tbAskExpert 问专家
     * @return 结果
     */
    public int updateTbAskExpert(TbAskExpert tbAskExpert);

    /**
     * 批量删除问专家
     * 
     * @param askExpertsIds 需要删除的问专家主键集合
     * @return 结果
     */
    public int deleteTbAskExpertByAskExpertsIds(Long[] askExpertsIds);

    /**
     * 删除问专家信息
     * 
     * @param askExpertsId 问专家主键
     * @return 结果
     */
    public int deleteTbAskExpertByAskExpertsId(Long askExpertsId);
}
