
package com.ruoyi.system.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.system.service.ISysUserService;
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
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/11 11:27
 **/
@RestController
@RequestMapping("/system/finance")
public class TbFinanceController extends BaseController {
    @Autowired
    private ITbFinanceService tbFinanceService;

    /**
     * 查询金融列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    @PreAuthorize("@ss.hasPermi('system:finance:list')")
    @GetMapping("/list")
    public TableDataInfo list() {
        startPage();
        List<TbFinance> list = tbFinanceService.selectTbFinanceList();
        return getDataTable(list);
    }

    /**
     * 查询已审核的金融列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    @PreAuthorize("@ss.hasPermi('system:finance:list:checked')")
    @GetMapping("/audit_list")
    public TableDataInfo auditList() {
        startPage();
        List<TbFinance> list = tbFinanceService.selectTbFinanceAuditList();
        return getDataTable(list);
    }

    /**
     * 查询未审核金融列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    @PreAuthorize("@ss.hasPermi('system:finance:list:unchecked')")
    @GetMapping("/unaudited_list")
    public TableDataInfo unauditedList() {
        startPage();
        List<TbFinance> list = tbFinanceService.selectTbFinanceUnauditedList();
        return getDataTable(list);
    }

    /**
     * 获取已审核的分类金融信息
     *
     * @param category 类型
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @PreAuthorize("@ss.hasPermi('system:finance:list:checked')")
    @GetMapping(value = "/category_list/{category}")
    public AjaxResult getTbFinanceCategoryList(@PathVariable("category") String category) {
        return success(tbFinanceService.selectTbFinanceCategoryList(category));
    }

    /**
     * 获取驿站id为sort的已审核的分类金融信息
     *
     * @param category 分类
     * @param sort     驿站id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @PreAuthorize("@ss.hasPermi('system:finance:list:checked')")
    @GetMapping(value = "/category_sort_list/{category}/{sort}")
    public AjaxResult getTbFinanceCategorySortList(@PathVariable("category") String category, @PathVariable("sort") String sort) {
        return success(tbFinanceService.selectTbFinanceCategorySortList(category, sort));
    }

    /**
     * 根据id审核金融信息对象
     *
     * @param tbFinance 金融信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PreAuthorize("@ss.hasPermi('system:finance:check')")
    @PutMapping("/check")
    public AjaxResult editAudit(@RequestBody TbFinance tbFinance) {
        return toAjax(tbFinanceService.updateTbFinanceAudit(tbFinance));
    }

    /**
     * 导出已审核的金融列表
     *
     * @author Alex McAvoy
     * @date 2023/10/18 18:09:10
     */
    @PreAuthorize("@ss.hasPermi('system:finance:export')")
    @Log(title = "金融", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response) {
        List<TbFinance> list = tbFinanceService.selectTbFinanceList();
        ExcelUtil<TbFinance> util = new ExcelUtil<TbFinance>(TbFinance.class);
        util.exportExcel(response, list, "金融数据");
    }

    /**
     * 通过id获取金融详细信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @PreAuthorize("@ss.hasPermi('system:training:list:checked')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) {
        return success(tbFinanceService.selectTbFinanceById(id));
    }

    /**
     * 新增金融信息
     *
     * @param tbFinance 金融信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @PreAuthorize("@ss.hasPermi('system:finance:add')")
    @Log(title = "金融", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbFinance tbFinance) {
        return toAjax(tbFinanceService.insertTbFinance(tbFinance));
    }

    /**
     * 修改金融信息
     *
     * @param tbFinance 金融信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @PreAuthorize("@ss.hasPermi('system:finance:edit')")
    @Log(title = "金融", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbFinance tbFinance) {
        return toAjax(tbFinanceService.updateTbFinance(tbFinance));
    }

    /**
     * 通过id列表删除线上金融信息
     *
     * @param ids id列表
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:18:30
     */
    @PreAuthorize("@ss.hasPermi('system:finance:remove')")
    @Log(title = "金融", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(tbFinanceService.deleteTbFinanceByIds(ids));
    }

    /**
     * 根据id增加阅读量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/updateReading")
    public AjaxResult updateReading(@RequestBody TbFinance tbFinance) {
        return toAjax(tbFinanceService.updateReading(tbFinance));
    }

    /**
     * 根据id增加点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/addLikes")
    public AjaxResult addLikes(@RequestBody TbFinance tbFinance) {
        return toAjax(tbFinanceService.addLikes(tbFinance));
    }

    /**
     * 根据id减少点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/subLikes")
    public AjaxResult subLikes(@RequestBody TbFinance tbFinance) {
        return toAjax(tbFinanceService.subLikes(tbFinance));
    }

    /**
     * 根据id增加收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/addCollect")
    public AjaxResult addCollect(@RequestBody TbFinance tbFinance) {
        return toAjax(tbFinanceService.addCollect(tbFinance));
    }

    /**
     * 根据id减少收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/subCollect")
    public AjaxResult subCollect(@RequestBody TbFinance tbFinance) {
        return toAjax(tbFinanceService.subCollect(tbFinance));
    }

    /**
     * 模糊查询已审核数据
     *
     * @param query 查询内容
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 19:17:49
     */
    @GetMapping(value = "/like/{query}")
    @PreAuthorize("@ss.hasPermi('system:finance:query')")
    public AjaxResult getLikeInfo(@PathVariable("query") String query) {
        return success(tbFinanceService.selectTbFinanceByLike(query));
    }

    /**
     * 通过id列表查询对应数据
     *
     * @param ids id列表
     * @return java.util.List<com.ruoyi.system.domain.TbOnlineTraining>
     * @author Alex McAvoy
     * @date 2023/10/18 19:21:47
     */
    @PreAuthorize("@ss.hasPermi('system:finance:list:checked')")
    @GetMapping(value = "/get_ids/{ids}")
    public List<TbFinance> getTbFinanceListByIds(@PathVariable("ids") Long[] ids) {
        return tbFinanceService.selectTbFinanceListByIds(ids);
    }
}





