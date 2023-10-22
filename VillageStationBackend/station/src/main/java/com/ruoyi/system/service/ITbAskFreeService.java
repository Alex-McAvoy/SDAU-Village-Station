package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TbAskFree;

/**
 * 随时问Service接口
 * 
 * @author ruoyi
 * @date 2023-10-03
 */
public interface ITbAskFreeService 
{
    /**
     * 获取随时问问题、评论
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    public List<TbAskFree> selectTbAskFreeList();

    /**
     * 获取已审核的随时问问题、评论
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    public List<TbAskFree> selectTbAskFreeAuditList();

    /**
     * 获取未审核的随时问问题、评论
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    public List<TbAskFree> selectTbAskFreeUnauditedList();

    /**
     * 获取驿站id为sort的已审核的随时问问题列表
     *
     * @param sort 驿站id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    public List<TbAskFree> selectTbAskFreeQuestionList(String sort);

    /**
     * 获取父id对应的已审核的评论
     *
     * @param parentId 父id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    public List<TbAskFree> selectTbAskFreeReviewByParentId(Long parentId);

    /**
     * 通过id获取随时问详情
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    public TbAskFree selectTbAskFreeById(Long id);

    /**
     * 根据id审核随时问
     *
     * @param tbAskFree 随时问对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int updateTbAskFreeAudit(TbAskFree tbAskFree);

    /**
     * 新增随时问
     * @param tbAskFree 随时问对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/19 20:36:30
     */
    public int insertTbAskFree(TbAskFree tbAskFree);

    /**
     * 通过id删除随时问
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:18:30
     */
    public int deleteTbAskFreeById(Long id);

    /**
     * 通过id列表删除随时问
     *
     * @param ids id列表
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:18:30
     */
    public int deleteTbAskFreeByIds(Long[] ids);
}
