package com.ruoyi.system.controller;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.system.domain.TbQuestion;
import com.ruoyi.system.service.ITbQuestionService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 评论/问答Controller
 *
 * @author ruoyi
 * @date 2023-10-04
 */
@RestController
@RequestMapping("/system/question")
public class TbQuestionController extends BaseController {
    @Autowired
    private ITbQuestionService tbQuestionService;

    /**
     * 查询评论/问答列表
     */
    @PreAuthorize("@ss.hasPermi('system:question:list')")
    @GetMapping("/list")
    public TableDataInfo list(TbQuestion tbQuestion) {
        startPage();
        List<TbQuestion> list = tbQuestionService.selectTbQuestionList(tbQuestion);
        return getDataTable(list);
    }

    /**
     * 导出评论/问答列表
     */
    @PreAuthorize("@ss.hasPermi('system:question:export')")
    @Log(title = "评论/问答", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TbQuestion tbQuestion) {
        List<TbQuestion> list = tbQuestionService.selectTbQuestionList(tbQuestion);
        ExcelUtil<TbQuestion> util = new ExcelUtil<TbQuestion>(TbQuestion.class);
        util.exportExcel(response, list, "评论/问答数据");
    }

    /**
     * 获取评论/问答详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:question:query')")
    @GetMapping(value = "/onequestion/{questionId}")
    public AjaxResult getQuestionInfo(@PathVariable("questionId") Long questionId) {
        return success(tbQuestionService.selectTbQuestionByQuestionId(questionId));
    }


    /**
     * 新增评论/问答
     */
    @PreAuthorize("@ss.hasPermi('system:question:add')")
    @Log(title = "评论/问答", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbQuestion tbQuestion) {
        String nickname = SecurityContextHolder.getContext().getAuthentication().getName();
        tbQuestion.setCreateBy(nickname);
        tbQuestion.setFirstColumn("0");
        return toAjax(tbQuestionService.insertTbQuestion(tbQuestion));
    }

    /**
     * 修改评论/问答
     */
    @PreAuthorize("@ss.hasPermi('system:question:edit')")
    @Log(title = "评论/问答", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbQuestion tbQuestion) {
        return toAjax(tbQuestionService.updateTbQuestion(tbQuestion));
    }

    /**
     * 删除评论/问答
     */
    @PreAuthorize("@ss.hasPermi('system:question:remove')")
    @Log(title = "评论/问答", businessType = BusinessType.DELETE)
    @DeleteMapping("/{questionIds}")
    public AjaxResult remove(@PathVariable Long[] questionIds) {
        return toAjax(tbQuestionService.deleteTbQuestionByQuestionIds(questionIds));
    }

    /**
     * 获取父id对应的评论/问答
     */
    @PreAuthorize("@ss.hasPermi('system:question:list:checked')")
    @GetMapping(value = "/parent/{parentId}/{firstColumn}")
    public AjaxResult getParentQuestionInfo(@PathVariable("parentId") Long parentId, @PathVariable("firstColumn") String firstColumn) {
        return success(tbQuestionService.selectTbQuestionByParentId(parentId, firstColumn));
    }

    /**
     * 获取专家下已审核的评论
     *
     * @param firstColumn 是否审核
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @PreAuthorize("@ss.hasPermi('system:question:list:checked')")
    @GetMapping(value = "/getListByColumn/{expertId}/{firstColumn}")
    public AjaxResult getProductsByColumn(@PathVariable("expertId") Long expertId, @PathVariable("firstColumn") String firstColumn) {
        return success(tbQuestionService.selectTbQuestionByColumn(expertId, firstColumn));
    }


    /**
     * 获取全部未审核的问题信息
     *
     * @param tbQuestion 问题对象
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    @PreAuthorize("@ss.hasPermi('system:question:list:unchecked')")
    @GetMapping("/getFirstColumns")
    public TableDataInfo getRemark(TbQuestion tbQuestion) {
        startPage();
        List<TbQuestion> list = tbQuestionService.selectTbQuestionFirstColumnsList(tbQuestion);
        return getDataTable(list);
    }

    /**
     * 修改审核/未审核
     *
     * @param tbQuestion 问题对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PreAuthorize("@ss.hasPermi('system:question:check')")
    @PutMapping("/check")
    public AjaxResult eidtFirstColumns(@RequestBody TbQuestion tbQuestion) {
        return toAjax(tbQuestionService.updateTbQuestionFirstColumns(tbQuestion));
    }

}
