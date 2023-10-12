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
import com.ruoyi.system.domain.TbOnlineTraining;
import com.ruoyi.system.service.ITbOnlineTrainingService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 线上培训Controller
 * 
 * @author ruoyi
 * @date 2023-10-11
 */
@RestController
@RequestMapping("/system/online_training")
public class TbOnlineTrainingController extends BaseController
{
    @Autowired
    private ITbOnlineTrainingService tbOnlineTrainingService;

    /**
     * 查询线上培训列表
     */
    @PreAuthorize("@ss.hasPermi('system:training:list')")
    @GetMapping("/list")
    public TableDataInfo list(TbOnlineTraining tbOnlineTraining)
    {
        startPage();
        List<TbOnlineTraining> list = tbOnlineTrainingService.selectTbOnlineTrainingList(tbOnlineTraining);
        return getDataTable(list);
    }

    /**
     * 导出线上培训列表
     */
    @PreAuthorize("@ss.hasPermi('system:training:export')")
    @Log(title = "线上培训", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TbOnlineTraining tbOnlineTraining)
    {
        List<TbOnlineTraining> list = tbOnlineTrainingService.selectTbOnlineTrainingList(tbOnlineTraining);
        ExcelUtil<TbOnlineTraining> util = new ExcelUtil<TbOnlineTraining>(TbOnlineTraining.class);
        util.exportExcel(response, list, "线上培训数据");
    }

    /**
     * 获取线上培训详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:training:query')")
    @GetMapping(value = "/{newsId}")
    public AjaxResult getInfo(@PathVariable("newsId") Long newsId)
    {
        return success(tbOnlineTrainingService.selectTbOnlineTrainingByNewsId(newsId));
    }

    /**
     * 新增线上培训
     */
    @PreAuthorize("@ss.hasPermi('system:training:add')")
    @Log(title = "线上培训", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbOnlineTraining tbOnlineTraining)
    {
        return toAjax(tbOnlineTrainingService.insertTbOnlineTraining(tbOnlineTraining));
    }

    /**
     * 修改线上培训
     */
    @PreAuthorize("@ss.hasPermi('system:training:edit')")
    @Log(title = "线上培训", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbOnlineTraining tbOnlineTraining)
    {
        return toAjax(tbOnlineTrainingService.updateTbOnlineTraining(tbOnlineTraining));
    }

    /**
     * 删除线上培训
     */
    @PreAuthorize("@ss.hasPermi('system:training:remove')")
    @Log(title = "线上培训", businessType = BusinessType.DELETE)
	@DeleteMapping("/{newsIds}")
    public AjaxResult remove(@PathVariable Long[] newsIds)
    {
        return toAjax(tbOnlineTrainingService.deleteTbOnlineTrainingByNewsIds(newsIds));
    }
}
