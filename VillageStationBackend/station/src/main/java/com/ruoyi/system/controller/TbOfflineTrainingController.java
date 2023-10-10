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
import com.ruoyi.system.domain.TbOfflineTraining;
import com.ruoyi.system.service.ITbOfflineTrainingService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 线下培训Controller
 * 
 * @author ruoyi
 * @date 2023-10-09
 */
@RestController
@RequestMapping("/system/training")
public class TbOfflineTrainingController extends BaseController
{
    @Autowired
    private ITbOfflineTrainingService tbOfflineTrainingService;

    /**
     * 查询线下培训列表
     */
    @PreAuthorize("@ss.hasPermi('system:training:list')")
    @GetMapping("/list")
    public TableDataInfo list(TbOfflineTraining tbOfflineTraining)
    {
        startPage();
        List<TbOfflineTraining> list = tbOfflineTrainingService.selectTbOfflineTrainingList(tbOfflineTraining);
        return getDataTable(list);
    }

    /**
     * 导出线下培训列表
     */
    @PreAuthorize("@ss.hasPermi('system:training:export')")
    @Log(title = "线下培训", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TbOfflineTraining tbOfflineTraining)
    {
        List<TbOfflineTraining> list = tbOfflineTrainingService.selectTbOfflineTrainingList(tbOfflineTraining);
        ExcelUtil<TbOfflineTraining> util = new ExcelUtil<TbOfflineTraining>(TbOfflineTraining.class);
        util.exportExcel(response, list, "线下培训数据");
    }

    /**
     * 获取线下培训详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:training:query')")
    @GetMapping(value = "/{newsId}")
    public AjaxResult getInfo(@PathVariable("newsId") Long newsId)
    {
        return success(tbOfflineTrainingService.selectTbOfflineTrainingByNewsId(newsId));
    }

    /**
     * 新增线下培训
     */
    @PreAuthorize("@ss.hasPermi('system:training:add')")
    @Log(title = "线下培训", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbOfflineTraining tbOfflineTraining)
    {
        return toAjax(tbOfflineTrainingService.insertTbOfflineTraining(tbOfflineTraining));
    }

    /**
     * 修改线下培训
     */
    @PreAuthorize("@ss.hasPermi('system:training:edit')")
    @Log(title = "线下培训", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbOfflineTraining tbOfflineTraining)
    {
        return toAjax(tbOfflineTrainingService.updateTbOfflineTraining(tbOfflineTraining));
    }

    /**
     * 删除线下培训
     */
    @PreAuthorize("@ss.hasPermi('system:training:remove')")
    @Log(title = "线下培训", businessType = BusinessType.DELETE)
	@DeleteMapping("/{newsIds}")
    public AjaxResult remove(@PathVariable Long[] newsIds)
    {
        return toAjax(tbOfflineTrainingService.deleteTbOfflineTrainingByNewsIds(newsIds));
    }
}
