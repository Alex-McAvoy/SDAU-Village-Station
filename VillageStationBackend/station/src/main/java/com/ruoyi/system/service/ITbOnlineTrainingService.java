package com.ruoyi.system.service;

import java.util.List;

import com.ruoyi.system.domain.TbOnlineTraining;


/**
 * 线上培训Service接口
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/11 11:27
 **/
public interface ITbOnlineTrainingService {

    /**
     * 查询线上培训列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/18 18:09:10
     */
    public List<TbOnlineTraining> selectTbOnlineTrainingList();

    /**
     * 查询已审核的线上培训列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/18 18:09:10
     */
    public List<TbOnlineTraining> selectTbOnlineTrainingAuditList();

    /**
     * 查询未审核线上培训列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    public List<TbOnlineTraining> selectTbOnlineTrainingUnauditedList();

    /**
     * 获取已审核的分类线上培训信息
     *
     * @param category 类型
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    public List<TbOnlineTraining> selectTbOnlineTrainingCategoryList(String category);

    /**
     * 获取驿站id为sort的已审核的分类金融信息
     *
     * @param category 分类
     * @param sort     驿站id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    public List<TbOnlineTraining> selectTbOnlineTrainingCategorySortList(String category, String sort);


    /**
     * 根据id审核线上培训对象
     *
     * @param tbOnlineTraining 线上培训对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int updateTbOnlineTrainingAudit(TbOnlineTraining tbOnlineTraining);

    /**
     * 通过id获取线上培训详细信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    public TbOnlineTraining selectTbOnlineTrainingById(Long id);

    /**
     * 新增线上培训信息
     *
     * @param tbOnlineTraining 线上培训信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    public int insertTbOnlineTraining(TbOnlineTraining tbOnlineTraining);

    /**
     * 修改线上培训信息
     *
     * @param tbOnlineTraining 线上培训信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    public int updateTbOnlineTraining(TbOnlineTraining tbOnlineTraining);

    /**
     * 通过id删除线上培训信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:18:30
     */
    public int deleteTbOnlineTrainingById(Long id);

    /**
     * 通过id列表删除线上培训信息
     *
     * @param ids id列表
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:18:30
     */
    public int deleteTbOnlineTrainingByIds(Long[] ids);

    /**
     * 根据id增加阅读量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int updateReading(TbOnlineTraining tbOnlineTraining);

    /**
     * 根据id增加点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int addLikes(TbOnlineTraining tbOnlineTraining);

    /**
     * 根据id减少点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int subLikes(TbOnlineTraining tbOnlineTraining);

    /**
     * 根据id增加收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int addCollect(TbOnlineTraining tbOnlineTraining);

    /**
     * 根据id减少收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int subCollect(TbOnlineTraining tbOnlineTraining);

    /**
     * 模糊查询已审核数据
     *
     * @param query 查询内容
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 19:17:49
     */
    public List<TbOnlineTraining> selectTbOnlineTrainingByLike(String query);

    /**
     * 通过id列表查询对应数据
     * @param ids id列表
     * @return java.util.List<com.ruoyi.system.domain.TbOnlineTraining>
     * @author Alex McAvoy
     * @date 2023/10/18 19:21:47
     */
    public List<TbOnlineTraining> selectTbOnlineTrainingListByIds(Long[] ids);
}
