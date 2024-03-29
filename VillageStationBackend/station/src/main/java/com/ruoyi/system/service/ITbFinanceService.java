package com.ruoyi.system.service;

import java.util.List;

import com.ruoyi.system.domain.TbFinance;

/**
 * 金融Service接口
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/11 11:27
 **/
public interface ITbFinanceService {

    /**
     * 查询金融列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    public List<TbFinance> selectTbFinanceList();

    /**
     * 查询已审核的金融列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    public List<TbFinance> selectTbFinanceAuditList();

    /**
     * 查询未审核金融列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    List<TbFinance> selectTbFinanceUnauditedList();

    /**
     * 获取已审核的分类金融信息
     *
     * @param category 类型
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    public List<TbFinance> selectTbFinanceCategoryList(String category);

    /**
     * 获取已审核的分类、标签信息
     * @param category 类型
     * @param sort 标签列表
     * @return java.util.List<com.ruoyi.system.domain.TbNews>
     * @author Alex McAvoy
     * @date 2024/1/21 17:29:03
     */
    public List<TbFinance> selectTbFinanceCategoryAndSortList(String category,Long [] sort);

    /**
     * 获取num条已审核的分类金融信息
     * @param category 类型
     * @param num 获取数量
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2024/1/17 09:42:14
     */
    public List<TbFinance> selectTbFinanceCategoryListLimit(String category, Long num);

    /**
     * 获取num条已审核的分类、标签信息
     * @param category 类型
     * @param num 获取数量
     * @param sort 标签数组
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2024/1/17 09:42:14
     */
    public List<TbFinance> selectTbFinanceCategorySortListLimit(String category, Long num,Long[] sort);

    /**
     * 获取驿站id为sort的已审核的分类金融信息
     *
     * @param category 分类
     * @param sort     驿站id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    public List<TbFinance> selectTbFinanceCategorySortList(String category, String sort);

    /**
     * 根据id审核金融信息对象
     *
     * @param tbFinance 金融信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int updateTbFinanceAudit(TbFinance tbFinance);

    /**
     * 通过id获取金融详细信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    public TbFinance selectTbFinanceById(Long id);

    /**
     * 新增金融信息
     *
     * @param tbFinance 金融信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    public int insertTbFinance(TbFinance tbFinance);

    /**
     * 修改金融信息
     *
     * @param tbFinance 金融信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    public int updateTbFinance(TbFinance tbFinance);

    /**
     * 通过id删除金融信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:18:30
     */
    public int deleteTbFinanceById(Long id);

    /**
     * 通过id列表删除金融信息
     *
     * @param ids id列表
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:18:30
     */
    public int deleteTbFinanceByIds(Long[] ids);

    /**
     * 根据id增加阅读量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int updateReading(TbFinance tbFinance);

    /**
     * 根据id增加点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int addLikes(TbFinance tbFinance);

    /**
     * 根据id减少点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int subLikes(TbFinance tbFinance);

    /**
     * 根据id增加收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int addCollect(TbFinance tbFinance);

    /**
     * 根据id减少收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int subCollect(TbFinance tbFinance);

    /**
     * 模糊查询已审核数据
     *
     * @param query 查询内容
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 19:17:49
     */
    public List<TbFinance> selectTbFinanceByLike(String query);

    /**
     * 通过id列表查询对应数据
     *
     * @param ids id列表
     * @return java.util.List<com.ruoyi.system.domain.TbOnlineTraining>
     * @author Alex McAvoy
     * @date 2023/10/18 19:21:47
     */
    List<TbFinance> selectTbFinanceListByIds(Long[] ids);
}