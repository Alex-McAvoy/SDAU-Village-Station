package com.ruoyi.system.service;

import com.ruoyi.system.domain.TbStationInformation;

import java.util.List;

/**
 * 驿站信息Service接口
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2024/1/17 15:22
 **/
public interface ITbStationInformationService {
    /**
     * 查询已审核的驿站信息列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:18
     */
    public List<TbStationInformation> selectTbStationInformationList();

    /**
     * 查询驿站id为id的已审核的驿站信息列表
     *
     * @param stationId 驿站id
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/18 18:09:10
     */
    public List<TbStationInformation> selectTbStationInformationListByStationId(Long stationId);

    /**
     * 查询已审核的驿站信息列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:18
     */
    public List<TbStationInformation> selectTbStationInformationAuditList();

    /**
     * 查询未审核驿站信息列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:34
     */
    List<TbStationInformation> selectTbStationInformationUnauditedList();

    /**
     * 根据驿站id查询未审核驿站信息列表
     *
     * @param stationId 驿站id
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:34
     */
    List<TbStationInformation> selectTbStationInformationUnauditedListByStationId(Long stationId);

    /**
     * 获取已审核的分类驿站信息
     *
     * @param category 类型
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    public List<TbStationInformation> selectTbStationInformationCategoryList(String category);

    /**
     * 获取num条已审核的分类驿站信息
     * @param category 类型
     * @param num 获取数量
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2024/1/17 09:42:14
     */
    public List<TbStationInformation> selectTbStationInformationCategoryListLimit(String category, Long num);

    /**
     * 获取驿站id为sort的已审核的分类驿站信息
     *
     * @param category 分类
     * @param sort     驿站id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    public List<TbStationInformation> selectTbStationInformationCategorySortList(String category, String sort);

    /***
     * 获取num条驿站号为sort的已审核的分类驿站信息
     * @param category 分类
     * @param num      数据条数
     * @param sort     驿站id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2024/1/17 18:05:31
     */
    public List<TbStationInformation> selectTbStationInformationCategorySortListLimit(String category, Long num, String sort);


    /**
     * 根据id审核驿站信息对象
     *
     * @param tbStationInformation 驿站信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int updateTbStationInformationAudit(TbStationInformation tbStationInformation);

    /**
     * 通过id获取驿站信息详细信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    public TbStationInformation selectTbStationInformationById(Long id);

    /**
     * 新增驿站信息
     *
     * @param tbStationInformation 驿站信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/9 15:35:17
     */
    public int insertTbStationInformation(TbStationInformation tbStationInformation);

    /**
     * 修改驿站信息
     *
     * @param tbStationInformation 驿站信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    public int updateStationInformation(TbStationInformation tbStationInformation);

    /**
     * 通过id删除驿站信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:18:30
     */
    public int deleteTbStationInformationByStationInformationId(Long id);

    /**
     * 通过id列表删除驿站信息
     *
     * @param ids id列表
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/9 15:33:36
     */
    public int deleteTbStationInformationByStationInformationIds(Long[] ids);

    /**
     * 根据id增加阅读量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int updateReading(TbStationInformation tbStationInformation);

    /**
     * 根据id增加点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int addLikes(TbStationInformation tbStationInformation);

    /**
     * 根据id减少点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int subLikes(TbStationInformation tbStationInformation);

    /**
     * 根据id增加收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int addCollect(TbStationInformation tbStationInformation);

    /**
     * 根据id减少收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int subCollect(TbStationInformation tbStationInformation);

    /**
     * 模糊查询已审核数据
     *
     * @param query 查询内容
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 19:17:49
     */
    public List<TbStationInformation> selectStationInformationByLike(String query);

    /**
     * 通过id列表查询对应数据
     *
     * @param ids id列表
     * @return java.util.List<com.ruoyi.system.domain.TbOnlineTraining>
     * @author Alex McAvoy
     * @date 2023/10/18 19:21:47
     */
    public List<TbStationInformation> selectStationInformationListByIds(Long[] ids);
}
