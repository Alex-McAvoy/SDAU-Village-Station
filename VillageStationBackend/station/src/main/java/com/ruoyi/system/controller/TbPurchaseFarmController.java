package com.ruoyi.system.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
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
import com.ruoyi.system.domain.TbPurchaseFarm;
import com.ruoyi.system.service.ITbPurchaseFarmService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 买农资Controller
 * 
 * @author ruoyi
 * @date 2023-10-06
 */
@RestController
@RequestMapping("/system/farm")
public class TbPurchaseFarmController extends BaseController
{
    @Autowired
    private ITbPurchaseFarmService tbPurchaseFarmService;

    /**
     * 查询买农资列表
     */
    @PreAuthorize("@ss.hasPermi('system:farm:list')")
    @GetMapping("/list")
    public TableDataInfo list(TbPurchaseFarm tbPurchaseFarm)
    {
        startPage();
        List<TbPurchaseFarm> list = tbPurchaseFarmService.selectTbPurchaseFarmList(tbPurchaseFarm);
        return getDataTable(list);
    }

    /**
     * 导出买农资列表
     */
    @PreAuthorize("@ss.hasPermi('system:farm:export')")
    @Log(title = "买农资", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TbPurchaseFarm tbPurchaseFarm)
    {
        List<TbPurchaseFarm> list = tbPurchaseFarmService.selectTbPurchaseFarmList(tbPurchaseFarm);
        ExcelUtil<TbPurchaseFarm> util = new ExcelUtil<TbPurchaseFarm>(TbPurchaseFarm.class);
        util.exportExcel(response, list, "买农资数据");
    }

    /**
     * 获取学农技一级列表(类型)
     */
    @PreAuthorize("@ss.hasPermi('system:farm:query')")
    @GetMapping(value = "/column/{firstColumn}")
    public AjaxResult getInfo(@PathVariable("firstColumn") String firstColumn)
    {
        return success(tbPurchaseFarmService.selectTbPurchaseFarmByFirstColumn(firstColumn));
    }


    /**
     * 获取买农资详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:farm:query')")
    @GetMapping(value = "/news/{newsId}")
    public AjaxResult getInfo(@PathVariable("newsId") Long newsId)
    {
        return success(tbPurchaseFarmService.selectTbPurchaseFarmByNewsId(newsId));
    }

    /**
     * 新增买农资
     */
    @PreAuthorize("@ss.hasPermi('system:farm:add')")
    @Log(title = "买农资", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbPurchaseFarm tbPurchaseFarm)
    {
        return toAjax(tbPurchaseFarmService.insertTbPurchaseFarm(tbPurchaseFarm));
    }

    /**
     * 修改买农资
     */
    @PreAuthorize("@ss.hasPermi('system:farm:edit')")
    @Log(title = "买农资", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbPurchaseFarm tbPurchaseFarm)
    {
        return toAjax(tbPurchaseFarmService.updateTbPurchaseFarm(tbPurchaseFarm));
    }

    /**
     * 删除买农资
     */
    @PreAuthorize("@ss.hasPermi('system:farm:remove')")
    @Log(title = "买农资", businessType = BusinessType.DELETE)
	@DeleteMapping("/{newsIds}")
    public AjaxResult remove(@PathVariable Long[] newsIds)
    {
        return toAjax(tbPurchaseFarmService.deleteTbPurchaseFarmByNewsIds(newsIds));
    }
}
