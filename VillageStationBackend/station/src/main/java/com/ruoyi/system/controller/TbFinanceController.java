
package com.ruoyi.system.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.TbFinance;
import com.ruoyi.system.service.ITbFinanceService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;
/**
 * 金融Controller
 * 
 * @author ruoyi
 * @date 2023-10-09
 */
@RestController
@RequestMapping("/system/finance")
public class TbFinanceController extends BaseController
{
    @Autowired
    private ITbFinanceService tbFinanceService;

    /**
     * 查询金融列表
     */
    @PreAuthorize("@ss.hasPermi('system:finance:list')")
    @GetMapping("/list")
    public TableDataInfo list(TbFinance tbFinance)
    {
        startPage();
        List<TbFinance> list = tbFinanceService.selectTbFinanceList(tbFinance);
        return getDataTable(list);
    }

    /**
     * 导出金融列表
     */
    @PreAuthorize("@ss.hasPermi('system:finance:export')")
    @Log(title = "金融", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TbFinance tbFinance)
    {
        List<TbFinance> list = tbFinanceService.selectTbFinanceList(tbFinance);
        ExcelUtil<TbFinance> util = new ExcelUtil<TbFinance>(TbFinance.class);
        util.exportExcel(response, list, "金融数据");
    }

    /**
     * 获取金融详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:finance:query')")
    @GetMapping(value = "/id/{newsId}")
    public AjaxResult getInfo(@PathVariable("newsId") Long newsId)
    {
        return success(tbFinanceService.selectTbFinanceByNewsId(newsId));
    }

    /**
     * 新增金融
     */
    @PreAuthorize("@ss.hasPermi('system:finance:add')")
    @Log(title = "金融", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbFinance tbFinance)
    {
        String nickname = SecurityContextHolder.getContext().getAuthentication().getName();
        tbFinance.setCreateBy(nickname);
        tbFinance.setReading((long) 0);
        tbFinance.setFirstColumn("0");
        return toAjax(tbFinanceService.insertTbFinance(tbFinance));
    }

    /**
     * 修改金融
     */
    @PreAuthorize("@ss.hasPermi('system:finance:edit')")
    @Log(title = "金融", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbFinance tbFinance)
    {
        return toAjax(tbFinanceService.updateTbFinance(tbFinance));
    }

    /**
     * 删除金融
     */
    @PreAuthorize("@ss.hasPermi('system:finance:remove')")
    @Log(title = "金融", businessType = BusinessType.DELETE)
	@DeleteMapping("/{newsIds}")
    public AjaxResult remove(@PathVariable Long[] newsIds)
    {
        return toAjax(tbFinanceService.deleteTbFinanceByNewsIds(newsIds));
    }

    /**
     * 获取已审核的分类金融信息
     *
     * @param firstColumn  是否审核
     * @param secondColumn  类型
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @PreAuthorize("@ss.hasPermi('system:finance:list:checked')")
    @GetMapping(value = "/getListByColumn/{firstColumn}/{secondColumn}")
    public AjaxResult getFirstColumnInfo(@PathVariable("firstColumn") String firstColumn, @PathVariable("secondColumn") String secondColumn)
    {
        return success(tbFinanceService.selectTbFinanceByFirstColumn(firstColumn, secondColumn));
    }

    /**
     * 获取全部未审核的金融信息
     * @param tbFinance 金融信息对象
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    @PreAuthorize("@ss.hasPermi('system:finance:list:unchecked')")
    @GetMapping("/getFirstColumns")
    public TableDataInfo getRemark(TbFinance tbFinance)
    {
        startPage();
        List<TbFinance> list = tbFinanceService.selectTbFinanceFirstColumnsList(tbFinance);
        return getDataTable(list);
    }

    /**
     * 修改审核/未审核
     * @param tbFinance 金融信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PreAuthorize("@ss.hasPermi('system:finance:check')")
    @PutMapping("/check")
    public AjaxResult eidtFirstColumns(@RequestBody TbFinance tbFinance)
    {
        return toAjax(tbFinanceService.updateTbFinanceFirstColumns(tbFinance));
    }
    /**
     * 阅读量
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/updateReading")
    public AjaxResult updateReading(@RequestBody TbFinance tbFinance)
    {
        return toAjax(tbFinanceService.updateReading(tbFinance));
    }
}





