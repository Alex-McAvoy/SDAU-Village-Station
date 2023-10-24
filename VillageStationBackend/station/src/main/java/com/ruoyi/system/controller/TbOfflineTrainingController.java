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
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/11 11:27
 **/
@RestController
@RequestMapping("/system/offline_training")
public class TbOfflineTrainingController extends BaseController {
    @Autowired
    private ITbOfflineTrainingService tbOfflineTrainingService;

    /**
     * 查询已审核的线下培训列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/18 18:09:10
     */
    @PreAuthorize("@ss.hasPermi('system:training:list')")
    @GetMapping("/list")
    public TableDataInfo list() {
        startPage();
        List<TbOfflineTraining> list = tbOfflineTrainingService.selectTbOfflineTrainingList();
        return getDataTable(list);
    }

    /**
     * 查询已审核的线下培训列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/18 18:09:10
     */
    @PreAuthorize("@ss.hasPermi('system:training:list:checked')")
    @GetMapping("/audit_list")
    public TableDataInfo auditList() {
        startPage();
        List<TbOfflineTraining> list = tbOfflineTrainingService.selectTbOfflineTrainingAuditList();
        return getDataTable(list);
    }

    /**
     * 查询未审核线下培训列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    @PreAuthorize("@ss.hasPermi('system:training:list:unchecked')")
    @GetMapping("/unaudited_list")
    public TableDataInfo unauditedList() {
        startPage();
        List<TbOfflineTraining> list = tbOfflineTrainingService.selectTbOfflineTrainingUnauditedList();
        return getDataTable(list);
    }

    /**
     * 获取已审核的分类线下培训信息
     *
     * @param category 类型
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @PreAuthorize("@ss.hasPermi('system:training:list:checked')")
    @GetMapping(value = "/category_list/{category}")
    public AjaxResult getTbFinanceCategoryList(@PathVariable("category") String category) {
        return success(tbOfflineTrainingService.selectTbOfflineTrainingCategoryList(category));
    }

    /**
     * 获取驿站id为sort的已审核的分类线下培训信息
     *
     * @param category 分类
     * @param sort     驿站id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @PreAuthorize("@ss.hasPermi('system:training:list:checked')")
    @GetMapping(value = "/category_sort_list/{category}/{sort}")
    public AjaxResult getTbFinanceCategorySortList(@PathVariable("category") String category,
                                                   @PathVariable("sort") String sort) {
        return success(tbOfflineTrainingService.selectTbOfflineTrainingCategorySortList(category, sort));
    }


    /**
     * 根据id审核线下培训对象
     *
     * @param tbOfflineTraining 线下培训对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PreAuthorize("@ss.hasPermi('system:training:check')")
    @PutMapping("/check")
    public AjaxResult editAudit(@RequestBody TbOfflineTraining tbOfflineTraining) {
        return toAjax(tbOfflineTrainingService.updateTbOfflineTrainingAudit(tbOfflineTraining));
    }

    /**
     * 导出已审核线下培训列表
     *
     * @author Alex McAvoy
     * @date 2023/10/18 18:09:10
     */
    @PreAuthorize("@ss.hasPermi('system:training:export')")
    @Log(title = "线下培训", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response) {
        List<TbOfflineTraining> list = tbOfflineTrainingService.selectTbOfflineTrainingList();
        ExcelUtil<TbOfflineTraining> util = new ExcelUtil<TbOfflineTraining>(TbOfflineTraining.class);
        util.exportExcel(response, list, "线下培训数据");
    }

    /**
     * 通过id获取线下培训详细信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @PreAuthorize("@ss.hasPermi('system:training:list:checked')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) {
        return success(tbOfflineTrainingService.selectTbOfflineTrainingById(id));
    }

    /**
     * 新增线下培训信息
     *
     * @param tbOfflineTraining 线下培训信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @PreAuthorize("@ss.hasPermi('system:training:add')")
    @Log(title = "线下培训", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbOfflineTraining tbOfflineTraining) {
        return toAjax(tbOfflineTrainingService.insertTbOfflineTraining(tbOfflineTraining));
    }

    /**
     * 修改线下培训信息
     *
     * @param tbOfflineTraining 线下培训信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @PreAuthorize("@ss.hasPermi('system:training:edit')")
    @Log(title = "线下培训", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbOfflineTraining tbOfflineTraining) {
        return toAjax(tbOfflineTrainingService.updateTbOfflineTraining(tbOfflineTraining));
    }

    /**
     * 通过id列表删除线下培训信息
     *
     * @param ids id列表
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:18:30
     */
    @PreAuthorize("@ss.hasPermi('system:training:remove')")
    @Log(title = "线下培训", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(tbOfflineTrainingService.deleteTbOfflineTrainingByIds(ids));
    }

    /**
     * 根据id增加阅读量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/updateReading")
    public AjaxResult updateReading(@RequestBody TbOfflineTraining tbOfflineTraining) {
        return toAjax(tbOfflineTrainingService.updateReading(tbOfflineTraining));
    }

    /**
     * 根据id增加点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/addLikes")
    public AjaxResult addLikes(@RequestBody TbOfflineTraining tbOfflineTraining) {
        return toAjax(tbOfflineTrainingService.addLikes(tbOfflineTraining));
    }

    /**
     * 根据id减少点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/subLikes")
    public AjaxResult subLikes(@RequestBody TbOfflineTraining tbOfflineTraining) {
        return toAjax(tbOfflineTrainingService.subLikes(tbOfflineTraining));
    }

    /**
     * 根据id增加收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/addCollect")
    public AjaxResult addCollect(@RequestBody TbOfflineTraining tbOfflineTraining) {
        return toAjax(tbOfflineTrainingService.addCollect(tbOfflineTraining));
    }

    /**
     * 根据id减少收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/subCollect")
    public AjaxResult subCollect(@RequestBody TbOfflineTraining tbOfflineTraining) {
        return toAjax(tbOfflineTrainingService.subCollect(tbOfflineTraining));
    }

    /**
     * 模糊查询已审核数据
     * @param query 查询内容
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 19:17:49
     */
    @PreAuthorize("@ss.hasPermi('system:training:query')")
    @GetMapping(value = "/like/{query}")
    public AjaxResult getLikeInfo(@PathVariable("query") String query) {
        return success(tbOfflineTrainingService.selectTbOfflineTrainingByLike(query));
    }

    /**
     * 通过id列表查询对应数据
     * @param ids id列表
     * @return java.util.List<com.ruoyi.system.domain.TbOfflineTraining>
     * @author Alex McAvoy
     * @date 2023/10/18 19:21:47
     */
    @PreAuthorize("@ss.hasPermi('system:training:list:checked')")
    @GetMapping("/get_ids/{ids}")
    public List<TbOfflineTraining> getTbOfflineTrainingListByIds(@PathVariable("ids") Long[] ids) {
        return tbOfflineTrainingService.selectTbOfflineTrainingListByIds(ids);
    }
}
