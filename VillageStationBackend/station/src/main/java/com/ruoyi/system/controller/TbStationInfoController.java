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
import com.ruoyi.system.domain.TbStationInfo;
import com.ruoyi.system.service.ITbStationInfoService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 驿站信息Controller
 * 
 * @author ruoyi
 * @date 2023-10-09
 */
@RestController
@RequestMapping("/system/info")
public class TbStationInfoController extends BaseController
{
    @Autowired
    private ITbStationInfoService tbStationInfoService;

    /**
     * 查询驿站信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:info:list')")
    @GetMapping("/list")
    public TableDataInfo list(TbStationInfo tbStationInfo)
    {
        startPage();
        List<TbStationInfo> list = tbStationInfoService.selectTbStationInfoList(tbStationInfo);
        return getDataTable(list);
    }

    /*导出驿站信息列表*/
    @PreAuthorize("@ss.hasPermi('system:info:export')")
    @Log(title = "驿站信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TbStationInfo tbStationInfo)
    {
        List<TbStationInfo> list = tbStationInfoService.selectTbStationInfoList(tbStationInfo);
        ExcelUtil<TbStationInfo> util = new ExcelUtil<TbStationInfo>(TbStationInfo.class);
        util.exportExcel(response, list, "驿站信息数据");
    }

    /**
     * 获取驿站信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:info:query')")
    @GetMapping(value = "/id/{newsId}")
    public AjaxResult getInfo(@PathVariable("newsId") Long newsId)
    {
        return success(tbStationInfoService.selectTbStationInfoByNewsId(newsId));
    }

    /**
     * 新增驿站信息
     */
    @PreAuthorize("@ss.hasPermi('system:info:add')")
    @Log(title = "驿站信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbStationInfo tbStationInfo)
    {
        return toAjax(tbStationInfoService.insertTbStationInfo(tbStationInfo));
    }

    /**
     * 修改驿站信息
     */
    @PreAuthorize("@ss.hasPermi('system:info:edit')")
    @Log(title = "驿站信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbStationInfo tbStationInfo)
    {
        return toAjax(tbStationInfoService.updateTbStationInfo(tbStationInfo));
    }

    /**
     * 删除驿站信息
     */
    @PreAuthorize("@ss.hasPermi('system:info:remove')")
    @Log(title = "驿站信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{newsIds}")
    public AjaxResult remove(@PathVariable Long[] newsIds)
    {
        return toAjax(tbStationInfoService.deleteTbStationInfoByNewsIds(newsIds));
    }

    /**
     * 获取已审核的驿站信息
     *
     * @param firstColumn  是否审核
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @PreAuthorize("@ss.hasPermi('system:info:list:checked')")
    @GetMapping(value = "/getListByColumn/{firstColumn}")
    public AjaxResult getInfo(@PathVariable("firstColumn") String firstColumn)
    {
        return success(tbStationInfoService.selectTbStationInfoByColumn(firstColumn));
    }

    /**
     * 获取全部未审核的驿站信息
     * @param tbStationInfo 驿站信息对象
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    @PreAuthorize("@ss.hasPermi('system:free:list:unchecked')")
    @GetMapping("/getFirstColumns")
    public TableDataInfo getRemark(TbStationInfo tbStationInfo)
    {
        startPage();
        List<TbStationInfo> list = tbStationInfoService.selectTbStationInfoFirstColumnsList(tbStationInfo);
        return getDataTable(list);
    }

    /**
     * 修改审核/未审核
     * @param tbStationInfo 驿站信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PreAuthorize("@ss.hasPermi('system:free:check')")
    @PutMapping("/check")
    public AjaxResult eidtRemark(@RequestBody TbStationInfo tbStationInfo)
    {
        return toAjax(tbStationInfoService.updateTbStationFirstColumns(tbStationInfo));
    }
}
