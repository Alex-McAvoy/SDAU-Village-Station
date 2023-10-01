package com.ruoyi.web.controller.station;

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
import com.ruoyi.station.domain.StaExpert;
import com.ruoyi.station.service.StaExpertService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;
import org.springframework.web.bind.annotation.RestController;

/**
 * 问专家控制器
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/1 17:48
 **/
@RestController
@RequestMapping("/system/expert")
public class StaAskExpertController extends BaseController
{

    @Autowired(required = false)
    private StaExpertService tbAskExpertService;

    /**
     * 查询问专家列表
     */
    @PreAuthorize("@ss.hasPermi('system:expert:list')")
    @GetMapping("/list")
    public TableDataInfo list(StaExpert tbAskExpert)
    {
        startPage();
        List<StaExpert> list = tbAskExpertService.selectTbAskExpertList(tbAskExpert);
        return getDataTable(list);
    }
    /**
     * 导出问专家列表
     */
    @PreAuthorize("@ss.hasPermi('system:expert:export')")
    @Log(title = "问专家", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, StaExpert tbAskExpert)
    {
        List<StaExpert> list = tbAskExpertService.selectTbAskExpertList(tbAskExpert);
        ExcelUtil<StaExpert> util = new ExcelUtil<StaExpert>(StaExpert.class);
        util.exportExcel(response, list, "问专家数据");
    }
    /**
     * 获取问专家详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:expert:query')")
    @GetMapping(value = "/{askExpertsId}")
    public AjaxResult getInfo(@PathVariable("askExpertsId") Long askExpertsId)
    {
        return success(tbAskExpertService.selectTbAskExpertByAskExpertsId(askExpertsId));
    }
    /**
     * 新增问专家
     */
    @PreAuthorize("@ss.hasPermi('system:expert:add')")
    @Log(title = "问专家", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody StaExpert tbAskExpert)
    {
        return toAjax(tbAskExpertService.insertTbAskExpert(tbAskExpert));
    }
    /**
     * 修改问专家
     */
    @PreAuthorize("@ss.hasPermi('system:expert:edit')")
    @Log(title = "问专家", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody StaExpert tbAskExpert)
    {
        return toAjax(tbAskExpertService.updateTbAskExpert(tbAskExpert));
    }
    /**
     * 删除问专家
     */
    @PreAuthorize("@ss.hasPermi('system:expert:remove')")
    @Log(title = "问专家", businessType = BusinessType.DELETE)
    @DeleteMapping("/{askExpertsIds}")
    public AjaxResult remove(@PathVariable Long[] askExpertsIds)
    {
        return toAjax(tbAskExpertService.deleteTbAskExpertByAskExpertsIds(askExpertsIds));
    }
}


