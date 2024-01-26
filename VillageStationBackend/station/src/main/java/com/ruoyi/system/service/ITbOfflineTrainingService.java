package com.ruoyi.system.service;

import java.util.List;

import com.ruoyi.system.domain.TbOfflineTraining;


/**
 * 线下培训Service接口
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/11 11:27
 **/
public interface ITbOfflineTrainingService {

    /**
     * 查询线下培训列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/18 18:09:10
     */
    public List<TbOfflineTraining> selectTbOfflineTrainingList();

    /**
     * 查询已审核的线下培训列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/18 18:09:10
     */
    public List<TbOfflineTraining> selectTbOfflineTrainingAuditList();

    /**
     * 获取已审核的标签新闻信息
     * @param sort 标签数组
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2024/1/21 18:44:10
     */
    public List<TbOfflineTraining> selectTbOfflineTrainingSortAuditList(Long[] sort);

    /**
     * 获取num条已审核的线下培训信息
     * @param num 获取数量
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2024/1/17 09:42:14
     */
    public List<TbOfflineTraining> selectTbOfflineTrainingListLimit(Long num);

    /**
     * 获取num条已审核的分类、标签信息
     * @param num 获取数量
     * @param sort 标签数组
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2024/1/17 09:42:14
     */
    public List<TbOfflineTraining> selectTbOfflineTrainingSortListLimit(Long num,Long[] sort);


    /**
     * 查询未审核线下培训列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    public List<TbOfflineTraining> selectTbOfflineTrainingUnauditedList();

    /**
     * 获取已审核的分类线下培训信息
     *
     * @param category 类型
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    public List<TbOfflineTraining> selectTbOfflineTrainingCategoryList(String category);


    /**
     * 获取驿站id为sort的已审核的分类金融信息
     *
     * @param category 分类
     * @param sort     驿站id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    public List<TbOfflineTraining> selectTbOfflineTrainingCategorySortList(String category, String sort);


    /**
     * 根据id审核线下培训对象
     *
     * @param tbOfflineTraining 线下培训对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int updateTbOfflineTrainingAudit(TbOfflineTraining tbOfflineTraining);

    /**
     * 通过id获取线下培训详细信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    public TbOfflineTraining selectTbOfflineTrainingById(Long id);

    /**
     * 新增线下培训信息
     *
     * @param tbOfflineTraining 线下培训信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    public int insertTbOfflineTraining(TbOfflineTraining tbOfflineTraining);

    /**
     * 修改线下培训信息
     *
     * @param tbOfflineTraining 线下培训信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    public int updateTbOfflineTraining(TbOfflineTraining tbOfflineTraining);

    /**
     * 通过id删除线下培训信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:18:30
     */
    public int deleteTbOfflineTrainingById(Long id);

    /**
     * 通过id列表删除线下培训信息
     *
     * @param ids id列表
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:18:30
     */
    public int deleteTbOfflineTrainingByIds(Long[] ids);

    /**
     * 根据id增加阅读量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int updateReading(TbOfflineTraining tbOfflineTraining);

    /**
     * 根据id增加点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int addLikes(TbOfflineTraining tbOfflineTraining);

    /**
     * 根据id减少点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int subLikes(TbOfflineTraining tbOfflineTraining);

    /**
     * 根据id增加收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int addCollect(TbOfflineTraining tbOfflineTraining);

    /**
     * 根据id减少收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int subCollect(TbOfflineTraining tbOfflineTraining);

    /**
     * 模糊查询已审核数据
     *
     * @param query 查询内容
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 19:17:49
     */
    public List<TbOfflineTraining> selectTbOfflineTrainingByLike(String query);

    /**
     * 通过id列表查询对应数据
     * @param ids id列表
     * @return java.util.List<com.ruoyi.system.domain.TbOfflineTraining>
     * @author Alex McAvoy
     * @date 2023/10/18 19:21:47
     */
    public List<TbOfflineTraining> selectTbOfflineTrainingListByIds(Long[] ids);
}
