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
public class TbQuestionController extends BaseController
{
    @Autowired
    private ITbQuestionService tbQuestionService;

    /**
     * 查询专家对应的评论/问答列表
     */
    @PreAuthorize("@ss.hasPermi('system:question:list')")
    @GetMapping("/list")
    public TableDataInfo list(TbQuestion tbQuestion)
    {
        System.out.println("----------"+tbQuestion);
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
    public void export(HttpServletResponse response, TbQuestion tbQuestion)
    {
        List<TbQuestion> list = tbQuestionService.selectTbQuestionList(tbQuestion);
        ExcelUtil<TbQuestion> util = new ExcelUtil<TbQuestion>(TbQuestion.class);
        util.exportExcel(response, list, "评论/问答数据");
    }

    /**
     * 获取专家下的评论
     */
    @PreAuthorize("@ss.hasPermi('system:question:query')")
    @GetMapping(value = "/expert/{expertId}")
    public AjaxResult getInfo(@PathVariable("expertId") Long expertId)
    {
        return success(tbQuestionService.selectTbQuestionByExpertId(expertId));
    }
    /**
     * 获取评论/问答详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:question:query')")
    @GetMapping(value = "/onequestion/{questionId}")
    public AjaxResult getQuestionInfo(@PathVariable("questionId") Long questionId)
    {
        return success(tbQuestionService.selectTbQuestionByQuestionId(questionId));
    }
    /**
     * 获取父id对应的评论/问答
     */
    @PreAuthorize("@ss.hasPermi('system:question:query')")
    @GetMapping(value = "/parent/{parentId}")
    public AjaxResult getParentQuestionInfo(@PathVariable("parentId") Long parentId)
    {
        return success(tbQuestionService.selectTbQuestionByParentId(parentId));
    }


    /**
     * 新增评论/问答
     */
    @PreAuthorize("@ss.hasPermi('system:question:add')")
    @Log(title = "评论/问答", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbQuestion tbQuestion)
    {
//        System.out.println("----------"+tbQuestion);
        return toAjax(tbQuestionService.insertTbQuestion(tbQuestion));
    }

    /**
     * 修改评论/问答
     */
    @PreAuthorize("@ss.hasPermi('system:question:edit')")
    @Log(title = "评论/问答", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbQuestion tbQuestion)
    {
        return toAjax(tbQuestionService.updateTbQuestion(tbQuestion));
    }

    /**
     * 删除评论/问答
     */
    @PreAuthorize("@ss.hasPermi('system:question:remove')")
    @Log(title = "评论/问答", businessType = BusinessType.DELETE)
	@DeleteMapping("/{questionIds}")
    public AjaxResult remove(@PathVariable Long[] questionIds)
    {
        return toAjax(tbQuestionService.deleteTbQuestionByQuestionIds(questionIds));
    }
}
