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
import com.ruoyi.system.domain.TbLearnTech;
import com.ruoyi.system.service.ITbLearnTechService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 学农技Controller
 *
 * @author ruoyi
 * @date 2023-10-05
 */
@RestController
@RequestMapping("/system/tech")
public class TbLearnTechController extends BaseController {
    @Autowired
    private ITbLearnTechService tbLearnTechService;

    /**
     * 查询学农技列表
     */
    @PreAuthorize("@ss.hasPermi('system:tech:list')")
    @GetMapping("/list")
    public TableDataInfo list(TbLearnTech tbLearnTech) {
        startPage();
        List<TbLearnTech> list = tbLearnTechService.selectTbLearnTechList(tbLearnTech);
        return getDataTable(list);
    }

    /**
     * 导出学农技列表
     */
    @PreAuthorize("@ss.hasPermi('system:tech:export')")
    @Log(title = "学农技", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TbLearnTech tbLearnTech) {
        List<TbLearnTech> list = tbLearnTechService.selectTbLearnTechList(tbLearnTech);
        ExcelUtil<TbLearnTech> util = new ExcelUtil<TbLearnTech>(TbLearnTech.class);
        util.exportExcel(response, list, "学农技数据");
    }

    /**
     * 获取学农技详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:tech:query')")
    @GetMapping(value = "/article/{articleId}")
    public AjaxResult getInfo(@PathVariable("articleId") Long articleId) {
        return success(tbLearnTechService.selectTbLearnTechByArticleId(articleId));
    }

    /**
     * 新增学农技
     */
    @PreAuthorize("@ss.hasPermi('system:tech:add')")
    @Log(title = "学农技", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbLearnTech tbLearnTech) {
        return toAjax(tbLearnTechService.insertTbLearnTech(tbLearnTech));
    }

    /**
     * 修改学农技
     */
    @PreAuthorize("@ss.hasPermi('system:tech:edit')")
    @Log(title = "学农技", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbLearnTech tbLearnTech) {
        return toAjax(tbLearnTechService.updateTbLearnTech(tbLearnTech));
    }

    /**
     * 删除学农技
     */
    @PreAuthorize("@ss.hasPermi('system:tech:remove')")
    @Log(title = "学农技", businessType = BusinessType.DELETE)
    @DeleteMapping("/{articleIds}")
    public AjaxResult remove(@PathVariable Long[] articleIds) {
        return toAjax(tbLearnTechService.deleteTbLearnTechByArticleIds(articleIds));
    }


    /**
     * 获取已审核，分类为secondColumn的农技
     *
     * @param firstColumn  是否审核
     * @param secondColumn 农技分类
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @PreAuthorize("@ss.hasPermi('system:tech:list:checked')")
    @GetMapping(value = "/getListByColumn/{firstColumn}/{secondColumn}")
    public AjaxResult getProductsByColumn(@PathVariable("firstColumn") String firstColumn, @PathVariable("secondColumn") String secondColumn) {
        return success(tbLearnTechService.selectTbLearnTechByColumn(firstColumn, secondColumn));
    }

    /**
     * 获取全部未审核的农技信息
     *
     * @param tbLearnTech 农技对象
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    @PreAuthorize("@ss.hasPermi('system:tech:list:unchecked')")
    @GetMapping("/getFirstColumns")
    public TableDataInfo getRemark(TbLearnTech tbLearnTech) {
        startPage();
        List<TbLearnTech> list = tbLearnTechService.selectTbLearnTechFirstColumnsList(tbLearnTech);
        return getDataTable(list);
    }

    /**
     * 修改审核/未审核
     *
     * @param tbLearnTech 农技对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PreAuthorize("@ss.hasPermi('system:tech:check')")
    @PutMapping("/check")
    public AjaxResult eidtFirstColumns(@RequestBody TbLearnTech tbLearnTech) {
        return toAjax(tbLearnTechService.updateTbLearnTechFirstColumns(tbLearnTech));
    }

}
