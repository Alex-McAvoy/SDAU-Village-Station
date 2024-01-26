package com.ruoyi.system.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

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
import com.ruoyi.system.domain.TbOnlineTraining;
import com.ruoyi.system.service.ITbOnlineTrainingService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 线上培训Controller
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/11 11:27
 **/
@RestController
@RequestMapping("/system/online_training")
public class TbOnlineTrainingController extends BaseController {
    @Autowired
    private ITbOnlineTrainingService tbOnlineTrainingService;

    /**
     * 查询线上培训列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/18 18:09:10
     */
    @PreAuthorize("@ss.hasPermi('system:training:list')")
    @GetMapping("/list")
    public TableDataInfo list() {
        startPage();
        List<TbOnlineTraining> list = tbOnlineTrainingService.selectTbOnlineTrainingList();
        return getDataTable(list);
    }

    /**
     * 查询已审核的线上培训列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/18 18:09:10
     */
    @PreAuthorize("@ss.hasPermi('system:training:list:checked')")
    @GetMapping("/audit_list")
    public TableDataInfo auditList() {
        startPage();
        List<TbOnlineTraining> list = tbOnlineTrainingService.selectTbOnlineTrainingAuditList();
        return getDataTable(list);
    }

    /**
     * 获取已审核的标签信息
     * @param sort 标签列表
     * @return java.util.List<com.ruoyi.system.domain.TbNews>
     * @author Alex McAvoy
     * @date 2024/1/21 17:29:03
     */
    @PreAuthorize("@ss.hasPermi('system:training:list:checked')")
    @GetMapping("/audit_list_tag/{sort}")
    public TableDataInfo auditListSort(@PathVariable("sort")Long [] sort) {
        startPage();
        List<TbOnlineTraining> list = tbOnlineTrainingService.selectTbOnlineTrainingSortAuditList(sort);
        return getDataTable(list);
    }

    /**
     * 获取num条已审核的线上培训信息
     * @param num 获取数量
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2024/1/17 09:42:14
     */
    @PreAuthorize("@ss.hasPermi('system:training:list:checked')")
    @GetMapping(value = "/audit_list/{num}")
    public AjaxResult getTbOnlineTrainingListLimit(@PathVariable("num") Long num) {
        return success(tbOnlineTrainingService.selectTbOnlineTrainingListLimit(num));
    }

    /**
     * 获取num条已审核的分类、标签信息
     * @param num 获取数量
     * @param sort 标签数组
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2024/1/17 09:42:14
     */
    @PreAuthorize("@ss.hasPermi('system:training:list:checked')")
    @GetMapping(value = "/audit_list/{num}/{sort}")
    public AjaxResult getTbOnlineTrainingSortListLimit(@PathVariable("num") Long num,@PathVariable("sort")Long[] sort) {
        return success(tbOnlineTrainingService.selectTbOnlineTrainingSortListLimit(num,sort));
    }

    /**
     * 查询未审核线上培训列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    @PreAuthorize("@ss.hasPermi('system:training:list:unchecked')")
    @GetMapping("/unaudited_list")
    public TableDataInfo unauditedList() {
        startPage();
        List<TbOnlineTraining> list = tbOnlineTrainingService.selectTbOnlineTrainingUnauditedList();
        return getDataTable(list);
    }

    /**
     * 获取已审核的分类线上培训信息
     *
     * @param category 类型
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @PreAuthorize("@ss.hasPermi('system:training:list:checked')")
    @GetMapping(value = "/category_list/{category}")
    public AjaxResult getTbFinanceCategoryList(@PathVariable("category") String category) {
        return success(tbOnlineTrainingService.selectTbOnlineTrainingCategoryList(category));
    }

    /**
     * 获取驿站id为sort的已审核的分类线上培训信息
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
        return success(tbOnlineTrainingService.selectTbOnlineTrainingCategorySortList(category, sort));
    }


    /**
     * 根据id审核线上培训对象
     *
     * @param tbOnlineTraining 线上培训对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PreAuthorize("@ss.hasPermi('system:training:check')")
    @PutMapping("/check")
    public AjaxResult editAudit(@RequestBody TbOnlineTraining tbOnlineTraining) {
        return toAjax(tbOnlineTrainingService.updateTbOnlineTrainingAudit(tbOnlineTraining));
    }

    /**
     * 导出已审核线上培训列表
     *
     * @author Alex McAvoy
     * @date 2023/10/18 18:09:10
     */
    @PreAuthorize("@ss.hasPermi('system:training:export')")
    @Log(title = "线上培训", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response) {
        List<TbOnlineTraining> list = tbOnlineTrainingService.selectTbOnlineTrainingList();
        ExcelUtil<TbOnlineTraining> util = new ExcelUtil<TbOnlineTraining>(TbOnlineTraining.class);
        util.exportExcel(response, list, "线上培训数据");
    }

    /**
     * 通过id获取线上培训详细信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @PreAuthorize("@ss.hasPermi('system:training:list:checked')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) {
        return success(tbOnlineTrainingService.selectTbOnlineTrainingById(id));
    }

    /**
     * 新增线上培训信息
     *
     * @param tbOnlineTraining 线上培训信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @PreAuthorize("@ss.hasPermi('system:training:add')")
    @Log(title = "线上培训", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbOnlineTraining tbOnlineTraining) {
        return toAjax(tbOnlineTrainingService.insertTbOnlineTraining(tbOnlineTraining));
    }

    /**
     * 修改线上培训信息
     *
     * @param tbOnlineTraining 线上培训信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @PreAuthorize("@ss.hasPermi('system:training:edit')")
    @Log(title = "线上培训", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbOnlineTraining tbOnlineTraining) {
        return toAjax(tbOnlineTrainingService.updateTbOnlineTraining(tbOnlineTraining));
    }

    /**
     * 通过id列表删除线上培训信息
     *
     * @param ids id列表
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:18:30
     */
    @PreAuthorize("@ss.hasPermi('system:training:remove')")
    @Log(title = "线上培训", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(tbOnlineTrainingService.deleteTbOnlineTrainingByIds(ids));
    }

    /**
     * 根据id增加阅读量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/updateReading")
    public AjaxResult updateReading(@RequestBody TbOnlineTraining tbOnlineTraining) {
        return toAjax(tbOnlineTrainingService.updateReading(tbOnlineTraining));
    }

    /**
     * 根据id增加点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/addLikes")
    public AjaxResult addLikes(@RequestBody TbOnlineTraining tbOnlineTraining) {
        return toAjax(tbOnlineTrainingService.addLikes(tbOnlineTraining));
    }

    /**
     * 根据id减少点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/subLikes")
    public AjaxResult subLikes(@RequestBody TbOnlineTraining tbOnlineTraining) {
        return toAjax(tbOnlineTrainingService.subLikes(tbOnlineTraining));
    }

    /**
     * 根据id增加收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/addCollect")
    public AjaxResult addCollect(@RequestBody TbOnlineTraining tbOnlineTraining) {
        return toAjax(tbOnlineTrainingService.addCollect(tbOnlineTraining));
    }

    /**
     * 根据id减少收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/subCollect")
    public AjaxResult subCollect(@RequestBody TbOnlineTraining tbOnlineTraining) {
        return toAjax(tbOnlineTrainingService.subCollect(tbOnlineTraining));
    }

    /**
     * 模糊查询已审核数据
     * @param query 查询内容
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 19:17:49
     */
    @GetMapping(value = "/like/{query}")
    public AjaxResult getLikeInfo(@PathVariable("query") String query) {
        return success(tbOnlineTrainingService.selectTbOnlineTrainingByLike(query));
    }

    /**
     * 通过id列表查询对应数据
     * @param ids id列表
     * @return java.util.List<com.ruoyi.system.domain.TbOnlineTraining>
     * @author Alex McAvoy
     * @date 2023/10/18 19:21:47
     */
    @PreAuthorize("@ss.hasPermi('system:training:list:checked')")
    @GetMapping("/get_ids/{ids}")
    public List<TbOnlineTraining> getTbOnlineTrainingListByIds(@PathVariable("ids") Long[] ids) {
        return tbOnlineTrainingService.selectTbOnlineTrainingListByIds(ids);
    }
}
