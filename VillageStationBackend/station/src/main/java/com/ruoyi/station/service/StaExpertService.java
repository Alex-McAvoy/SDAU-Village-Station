package com.ruoyi.station.service;
import java.util.List;
import com.ruoyi.station.domain.StaExpert;
/**
 * 专家service接口
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/1 17:52
 **/

public interface StaExpertService {
    /**
     * 查询问专家
     *
     * @param askExpertsId 问专家主键
     * @return 问专家
     */
    public StaExpert selectTbAskExpertByAskExpertsId(Long askExpertsId);
    /**
     * 查询问专家列表
     *
     * @param tbAskExpert 问专家
     * @return 问专家集合
     */
    public List<StaExpert> selectTbAskExpertList(StaExpert tbAskExpert);
    /**
     * 新增问专家
     *
     * @param tbAskExpert 问专家
     * @return 结果
     */
    public int insertTbAskExpert(StaExpert tbAskExpert);
    /**
     * 修改问专家
     *
     * @param tbAskExpert 问专家
     * @return 结果
     */
    public int updateTbAskExpert(StaExpert tbAskExpert);
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


