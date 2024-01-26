package com.ruoyi.system.controller;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.system.domain.TbAskFree;
import com.ruoyi.system.service.ISysUserService;
import com.ruoyi.system.service.ITbAskFreeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/**
 * 随时问Controller
 *
 * @author ruoyi
 * @date 2023-10-03
 */
@RestController
@RequestMapping("/system/free")
public class TbAskFreeController extends BaseController {
    @Autowired
    private ITbAskFreeService tbAskFreeService;
    @Autowired
    private ISysUserService sysUserService;

    /**
     * 获取随时问列表问题、评论
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @PreAuthorize("@ss.hasPermi('system:free:list')")
    @GetMapping("/list")
    public TableDataInfo list() {
        startPage();
        List<TbAskFree> list = tbAskFreeService.selectTbAskFreeList();
        return getDataTable(list);
    }

    /**
     * 获取已审核的随时问列表问题、评论
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @PreAuthorize("@ss.hasPermi('system:free:list:checked')")
    @GetMapping("/audit_list")
    public TableDataInfo auditList() {
        startPage();
        List<TbAskFree> list = tbAskFreeService.selectTbAskFreeAuditList();
        return getDataTable(list);
    }

    /**
     * 获取未审核的随时问问题、评论
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    @PreAuthorize("@ss.hasPermi('system:free:list:unchecked')")
    @GetMapping("/unaudited_list")
    public TableDataInfo getRemark() {
        startPage();
        List<TbAskFree> list = tbAskFreeService.selectTbAskFreeUnauditedList();
        return getDataTable(list);
    }

    /**
     * 获取驿站id为sort的已审核的随时问问题列表
     *
     * @param sort 驿站id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @PreAuthorize("@ss.hasPermi('system:free:list:checked')")
    @GetMapping(value = "/question_list/{sort}")
    public AjaxResult getTbAskFreeQuestionList(@PathVariable("sort") String sort) {
        return success(tbAskFreeService.selectTbAskFreeQuestionList(sort));
    }

    /**
     * 获取num条驿站id为sort的已审核的随时问问题列表
     * @param sort 驿站id
     * @param num  条数
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2024/1/18 14:37:54
     */
    @PreAuthorize("@ss.hasPermi('system:free:list:checked')")
    @GetMapping(value = "/question_list/{sort}/{num}")
    public AjaxResult getTbAskFreeQuestionListLimit(@PathVariable("sort") String sort, @PathVariable("num") Long num) {
        return success(tbAskFreeService.selectTbAskFreeQuestionListLimit(sort, num));
    }

    /**
     * 按时间降序获取已审核的随时问num个问题
     * @param num 问题个数
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2024/1/14 15:02:39
     */
    @PreAuthorize("@ss.hasPermi('system:free:list:checked')")
    @GetMapping(value = "/random_question_list/{num}")
    public AjaxResult getTbAskFreeRandomQuestionList(@PathVariable("num") Long num) {
        return success(tbAskFreeService.selectTbAskFreeRandomQuestionList(num));
    }

    /**
     * 根据用户id获取用户的问题列表
     * @param userId 用户id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2024/1/14 16:42:21
     */
    @PreAuthorize("@ss.hasPermi('system:free:list:checked')")
    @GetMapping(value = "/user_question_list/{userId}")
    public AjaxResult getTbAskFreeQuestionListByUserId(@PathVariable("userId") Long userId) {
        return success(tbAskFreeService.selectTbAskFreeQuestionListByUserId(userId));
    }


    /**
     * 获取父id对应的已审核的评论
     *
     * @param parentId 父id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @PreAuthorize("@ss.hasPermi('system:free:list:checked')")
    @GetMapping(value = "/parent/{parentId}")
    public AjaxResult getReviewByParentId(@PathVariable("parentId") Long parentId) {
        return success(tbAskFreeService.selectTbAskFreeReviewByParentId(parentId));
    }

    /**
     * 导出随时问列表
     * @param response Response
     * @param tbAskFree 随时问对象
     * @return void
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    @PreAuthorize("@ss.hasPermi('system:free:export')")
    @Log(title = "随时问", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TbAskFree tbAskFree) {
        List<TbAskFree> list = tbAskFreeService.selectTbAskFreeAuditList();
        ExcelUtil<TbAskFree> util = new ExcelUtil<TbAskFree>(TbAskFree.class);
        util.exportExcel(response, list, "随时问数据");
    }

    /**
     * 通过id获取随时问详情
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @PreAuthorize("@ss.hasPermi('system:free:list:checked')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) {
        return success(tbAskFreeService.selectTbAskFreeById(id));
    }

    /**
     * 根据id审核随时问
     *
     * @param tbAskFree 随时问对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PreAuthorize("@ss.hasPermi('system:free:check')")
    @PutMapping("/check")
    public AjaxResult editAudit(@RequestBody TbAskFree tbAskFree) {
        return toAjax(tbAskFreeService.updateTbAskFreeAudit(tbAskFree));
    }

    /**
     * 新增随时问
     * @param tbAskFree 随时问对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/19 20:36:30
     */
    @PreAuthorize("@ss.hasPermi('system:free:add')")
    @Log(title = "随时问", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbAskFree tbAskFree) {
        return toAjax(tbAskFreeService.insertTbAskFree(tbAskFree));
    }

    /**
     * 删除随时问
     * @param ids id列表
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/19 20:36:30
     */
    @PreAuthorize("@ss.hasPermi('system:free:remove')")
    @Log(title = "随时问", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(tbAskFreeService.deleteTbAskFreeByIds(ids));
    }

}
