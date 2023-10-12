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
import com.ruoyi.system.domain.TbNewSpecies;
import com.ruoyi.system.service.ITbNewSpeciesService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 新品种Controller
 * 
 * @author ruoyi
 * @date 2023-10-05
 */
@RestController
@RequestMapping("/system/species")
public class TbNewSpeciesController extends BaseController
{
    @Autowired
    private ITbNewSpeciesService tbNewSpeciesService;

    /**
     * 查询新品种列表
     */
    @PreAuthorize("@ss.hasPermi('system:species:list')")
    @GetMapping("/list")
    public TableDataInfo list(TbNewSpecies tbNewSpecies)
    {
        startPage();
        List<TbNewSpecies> list = tbNewSpeciesService.selectTbNewSpeciesList(tbNewSpecies);
        return getDataTable(list);
    }

    /**
     * 导出新品种列表
     */
    @PreAuthorize("@ss.hasPermi('system:species:export')")
    @Log(title = "新品种", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TbNewSpecies tbNewSpecies)
    {
        List<TbNewSpecies> list = tbNewSpeciesService.selectTbNewSpeciesList(tbNewSpecies);
        ExcelUtil<TbNewSpecies> util = new ExcelUtil<TbNewSpecies>(TbNewSpecies.class);
        util.exportExcel(response, list, "新品种数据");
    }

    /**
     * 获取新品种详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:species:query')")
    @GetMapping(value = "/{newsId}")
    public AjaxResult getInfo(@PathVariable("newsId") Long newsId)
    {
        return success(tbNewSpeciesService.selectTbNewSpeciesByNewsId(newsId));
    }

    /**
     * 新增新品种
     */
    @PreAuthorize("@ss.hasPermi('system:species:add')")
    @Log(title = "新品种", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbNewSpecies tbNewSpecies)
    {

        String nickname = SecurityContextHolder.getContext().getAuthentication().getName();
        tbNewSpecies.setCreateBy(nickname);
        tbNewSpecies.setReading((long) 0);
        tbNewSpecies.setFirstColumn("0");
        return toAjax(tbNewSpeciesService.insertTbNewSpecies(tbNewSpecies));
    }

    /**
     * 修改新品种
     */
    @PreAuthorize("@ss.hasPermi('system:species:edit')")
    @Log(title = "新品种", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbNewSpecies tbNewSpecies)
    {
        return toAjax(tbNewSpeciesService.updateTbNewSpecies(tbNewSpecies));
    }

    /**
     * 删除新品种
     */
    @PreAuthorize("@ss.hasPermi('system:species:remove')")
    @Log(title = "新品种", businessType = BusinessType.DELETE)
	@DeleteMapping("/{newsIds}")
    public AjaxResult remove(@PathVariable Long[] newsIds)
    {
        return toAjax(tbNewSpeciesService.deleteTbNewSpeciesByNewsIds(newsIds));
    }

    /**
     * 获取已审核，分类为secondColumn的品种
     * @param firstColumn 是否审核
     * @param secondColumn 品种分类
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @PreAuthorize("@ss.hasPermi('system:species:list:checked')")
    @GetMapping(value = "/getListByColumn/{firstColumn}")
    public AjaxResult getProductsByColumn(@PathVariable("firstColumn") String firstColumn)
    {
        return success(tbNewSpeciesService.selectTbNewSpeciesByColumn(firstColumn));
    }

    /**
     * 获取全部未审核的品种信息
     * @param tbNewSpecies 品种对象
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    @PreAuthorize("@ss.hasPermi('system:species:list:unchecked')")
    @GetMapping("/getFirstColumns")
    public TableDataInfo getRemark(TbNewSpecies tbNewSpecies)
    {
        startPage();
        List<TbNewSpecies> list = tbNewSpeciesService.selectTbNewSpeciesFirstColumnsList(tbNewSpecies);
        return getDataTable(list);
    }

    /**
     * 修改审核/未审核
     * @param tbNewSpecies 品种对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PreAuthorize("@ss.hasPermi('system:species:check')")
    @PutMapping("/check")
    public AjaxResult eidtFirstColumns(@RequestBody TbNewSpecies tbNewSpecies)
    {
        return toAjax(tbNewSpeciesService.updateTbNewSpeciesFirstColumns(tbNewSpecies));
    }    /**
 * 阅读量
 * @return com.ruoyi.common.core.domain.AjaxResult
 * @author Alex McAvoy
 * @date 2023/10/11 10:47:52
 */
@PutMapping("/updateReading")
public AjaxResult updateReading(@RequestBody TbNewSpecies tbNewSpecies)
{
    return toAjax(tbNewSpeciesService.updateReading(tbNewSpecies));
}
}
