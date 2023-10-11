package com.ruoyi.system.controller;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.system.domain.TbAskFree;
import com.ruoyi.system.service.ITbAskFreeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 随时问Controller
 * 
 * @author ruoyi
 * @date 2023-10-03
 */
@RestController
@RequestMapping("/system/free")
public class TbAskFreeController extends BaseController
{
    @Autowired
    private ITbAskFreeService tbAskFreeService;

    /**
     * 查询随时问列表
     */
    @PreAuthorize("@ss.hasPermi('system:free:list')")
    @GetMapping("/list")
    public TableDataInfo list(TbAskFree tbAskFree)
    {
        startPage();
        List<TbAskFree> list = tbAskFreeService.selectTbAskFreeList(tbAskFree);
        return getDataTable(list);
    }

    /**
     * 导出随时问列表
     */
    @PreAuthorize("@ss.hasPermi('system:free:export')")
    @Log(title = "随时问", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TbAskFree tbAskFree)
    {
        List<TbAskFree> list = tbAskFreeService.selectTbAskFreeList(tbAskFree);
        ExcelUtil<TbAskFree> util = new ExcelUtil<TbAskFree>(TbAskFree.class);
        util.exportExcel(response, list, "随时问数据");
    }

    /**
     * 获取随时问详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:free:query')")
    @GetMapping(value = "/ask/{askFreeId}")
    public AjaxResult getInfo(@PathVariable("askFreeId") Long askFreeId)
    {
        return success(tbAskFreeService.selectTbAskFreeByAskFreeId(askFreeId));
    }

    /**
     * 新增随时问
     */
    @PreAuthorize("@ss.hasPermi('system:free:add')")
    @Log(title = "随时问", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbAskFree tbAskFree)
    {
        System.out.println(tbAskFree);
        return toAjax(tbAskFreeService.insertTbAskFree(tbAskFree));
    }

    /**
     * 修改随时问
     */
    @PreAuthorize("@ss.hasPermi('system:free:edit')")
    @Log(title = "随时问", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbAskFree tbAskFree)
    {
        return toAjax(tbAskFreeService.updateTbAskFree(tbAskFree));
    }

    /**
     * 删除随时问
     */
    @PreAuthorize("@ss.hasPermi('system:free:remove')")
    @Log(title = "随时问", businessType = BusinessType.DELETE)
	@DeleteMapping("/{askFreeIds}")
    public AjaxResult remove(@PathVariable Long[] askFreeIds)
    {
        return toAjax(tbAskFreeService.deleteTbAskFreeByAskFreeIds(askFreeIds));
    }

    /**
     * 获取父id对应的评论
     */
    @PreAuthorize("@ss.hasPermi('system:free:query')")
    @GetMapping(value = "/parent/{parentId}")
    public AjaxResult getParentQuestioInfo(@PathVariable("parentId") Long parentId)
    {
        return success(tbAskFreeService.selectTbAskFreeByParentId(parentId));
    }

    /**
     * 获取已审核的随时问
     *
     * @param firstColumn  是否审核
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @PreAuthorize("@ss.hasPermi('system:free:list:checked')")
    @GetMapping(value = "/getListByColumn/{firstColumn}")
    public AjaxResult getProductsByColumn(@PathVariable("firstColumn") String firstColumn) {
        return success(tbAskFreeService.selectTbAskFreeByColumn(firstColumn));
    }

    /**
     * 获取全部未审核的随时问问题
     *
     * @param tbAskFree 随时问对象
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    @PreAuthorize("@ss.hasPermi('system:free:list:unchecked')")
    @GetMapping("/getFirstColumns")
    public TableDataInfo getRemark(TbAskFree tbAskFree) {
        startPage();
        List<TbAskFree> list = tbAskFreeService.selectTbAskFreeFirstColumnsList(tbAskFree);
        return getDataTable(list);
    }

    /**
     * 修改审核/未审核
     *
     * @param tbAskFree 随时问对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PreAuthorize("@ss.hasPermi('system:free:check')")
    @PutMapping("/check")
    public AjaxResult eidtFirstColumns(@RequestBody TbAskFree tbAskFree) {
        return toAjax(tbAskFreeService.updateTbAskFreeFirstColumns(tbAskFree));
    }
}
