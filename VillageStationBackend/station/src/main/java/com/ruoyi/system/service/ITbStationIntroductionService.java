package com.ruoyi.system.service;

import com.ruoyi.system.domain.TbStationIntroduction;

import java.util.List;

/**
 * 驿站介绍Service接口
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2024/1/19 10:52
 **/
public interface ITbStationIntroductionService {
    /**
     * 查询已审核的驿站介绍列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:18
     */
    public List<TbStationIntroduction> selectTbStationIntroductionList();

    /**
     * 查询驿站id为id的已审核的驿站介绍列表
     *
     * @param stationId 驿站id
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/18 18:09:10
     */
    public List<TbStationIntroduction> selectTbStationIntroductionListByStationId(Long stationId);

    /**
     * 查询已审核的驿站介绍列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:18
     */
    public List<TbStationIntroduction> selectTbStationIntroductionAuditList();

    /**
     * 查询未审核驿站介绍列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:34
     */
    List<TbStationIntroduction> selectTbStationIntroductionUnauditedList();

    /**
     * 根据驿站id查询未审核驿站介绍列表
     * @param stationId 驿站id
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:34
     */
    List<TbStationIntroduction> selectTbStationIntroductionUnauditedListByStationId(Long stationId);

    /**
     * 根据id审核驿站介绍对象
     *
     * @param tbStationIntroduction 驿站介绍对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int updateTbStationIntroductionAudit(TbStationIntroduction tbStationIntroduction);

    /**
     * 通过id获取驿站介绍详细信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    public TbStationIntroduction selectTbStationIntroductionById(Long id);

    /**
     * 新增驿站介绍
     *
     * @param tbStationIntroduction 驿站介绍对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/9 15:35:17
     */
    public int insertTbStationIntroduction(TbStationIntroduction tbStationIntroduction);

    /**
     * 修改驿站介绍
     *
     * @param tbStationIntroduction 驿站介绍对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    public int updateStationIntroduction(TbStationIntroduction tbStationIntroduction);

    /**
     * 通过id删除驿站介绍
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:18:30
     */
    public int deleteTbStationIntroductionByStationIntroductionId(Long id);

    /**
     * 通过id列表删除驿站介绍
     *
     * @param ids id列表
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/9 15:33:36
     */
    public int deleteTbStationIntroductionByStationIntroductionIds(Long[] ids);

    /**
     * 模糊查询已审核数据
     *
     * @param query 查询内容
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 19:17:49
     */
    public List<TbStationIntroduction> selectStationIntroductionByLike(String query);

    /**
     * 通过id列表查询对应数据
     *
     * @param ids id列表
     * @return java.util.List<com.ruoyi.system.domain.TbOnlineTraining>
     * @author Alex McAvoy
     * @date 2023/10/18 19:21:47
     */
    public List<TbStationIntroduction> selectStationIntroductionListByIds(Long[] ids);
}

