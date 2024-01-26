package com.ruoyi.system.controller;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.system.domain.TbStationInformation;
import com.ruoyi.system.service.ITbStationInformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 驿站信息controller
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2024/1/17 15:21
 **/
@RestController
@RequestMapping("/system/station_information")
public class TbStationInformationController extends BaseController {
    @Autowired
    private ITbStationInformationService tbStationInformationService;

    /**
     * 查询驿站信息列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:18
     */
    @PreAuthorize("@ss.hasPermi('system:station:list')")
    @GetMapping("/list")
    public TableDataInfo list() {
        startPage();
        List<TbStationInformation> list = tbStationInformationService.selectTbStationInformationList();
        return getDataTable(list);
    }

    /**
     * 查询驿站id为id的已审核的驿站信息列表
     *
     * @param stationId 驿站id
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/18 18:09:10
     */
    @PreAuthorize("@ss.hasPermi('system:station:list')")
    @GetMapping("/list/{stationId}")
    public TableDataInfo listByStationId(@PathVariable("stationId") Long stationId) {
        startPage();
        List<TbStationInformation> list = tbStationInformationService.selectTbStationInformationListByStationId(stationId);
        return getDataTable(list);
    }

    /**
     * 查询已审核的驿站信息列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:18
     */
    @PreAuthorize("@ss.hasPermi('system:station:list:checked')")
    @GetMapping("/audit_list")
    public TableDataInfo auditList() {
        startPage();
        List<TbStationInformation> list = tbStationInformationService.selectTbStationInformationAuditList();
        return getDataTable(list);
    }

    /**
     * 查询未审核驿站信息列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:34
     */
    @PreAuthorize("@ss.hasPermi('system:station:list:unchecked')")
    @GetMapping("/unaudited_list")
    public TableDataInfo unauditedList() {
        startPage();
        List<TbStationInformation> list = tbStationInformationService.selectTbStationInformationUnauditedList();
        return getDataTable(list);
    }

    /**
     * 根据驿站id查询未审核驿站信息列表
     *
     * @param stationId 驿站id
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:34
     */
    @PreAuthorize("@ss.hasPermi('system:station:list:unchecked')")
    @GetMapping("/unaudited_list/{stationId}")
    public TableDataInfo unauditedListByStationId(@PathVariable("stationId")Long stationId) {
        startPage();
        List<TbStationInformation> list = tbStationInformationService.selectTbStationInformationUnauditedListByStationId(stationId);
        return getDataTable(list);
    }

    /**
     * 获取已审核的分类驿站信息
     *
     * @param category 类型
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:55category_list
     */
    @PreAuthorize("@ss.hasPermi('system:station:list:checked')")
    @GetMapping(value = "/category_list/{category}")
    public AjaxResult getTbStationInformationCategoryList(@PathVariable("category") String category) {
        return success(tbStationInformationService.selectTbStationInformationCategoryList(category));
    }

    /**
     * 获取num条已审核的分类驿站信息
     * @param category 类型
     * @param num 获取数量
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2024/1/17 09:42:14
     */
    @PreAuthorize("@ss.hasPermi('system:station:list:checked')")
    @GetMapping(value = "/category_list/{category}/{num}")
    public AjaxResult getTbStationInformationCategoryListLimit(@PathVariable("category") String category, @PathVariable("num") Long num) {
        return success(tbStationInformationService.selectTbStationInformationCategoryListLimit(category, num));
    }

    /**
     * 获取驿站id为sort的已审核的分类驿站信息
     *
     * @param category 分类
     * @param sort     驿站id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @PreAuthorize("@ss.hasPermi('system:station:list:checked')")
    @GetMapping(value = "/category_sort_list/{category}/{sort}")
    public TableDataInfo getTbStationInformationCategorySortList(@PathVariable("category") String category, @PathVariable("sort") String sort) {
        startPage();
        List<TbStationInformation> list = tbStationInformationService.selectTbStationInformationCategorySortList(category, sort);
        return getDataTable(list);
    }
    
    
    /***
     * 获取num条驿站号为sort的已审核的分类驿站信息
     * @param category 分类
     * @param num      数据条数
     * @param sort     驿站id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2024/1/17 18:05:31
     */
    @PreAuthorize("@ss.hasPermi('system:station:list:checked')")
    @GetMapping(value = "/category_sort_list/{category}/{num}/{sort}")
    public AjaxResult getTbStationInformationCategorySortListLimit(@PathVariable("category") String category, @PathVariable("num") Long num, @PathVariable("sort") String sort) {
        return success(tbStationInformationService.selectTbStationInformationCategorySortListLimit(category, num, sort));
    }

    /**
     * 根据id审核驿站信息对象，审核通过
     *
     * @param tbStationInformation 驿站信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PreAuthorize("@ss.hasPermi('system:station:check')")
    @PutMapping("/check")
    public AjaxResult editAudit(@RequestBody TbStationInformation tbStationInformation) {
        return toAjax(tbStationInformationService.updateTbStationInformationAudit(tbStationInformation));
    }

    /**
     * 导出已审核的新闻列表
     *
     * @author Alex McAvoy
     * @date 2023/10/18 18:09:10
     */
    @PreAuthorize("@ss.hasPermi('system:station:export')")
    @Log(title = "导出驿站信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response) {
        List<TbStationInformation> list = tbStationInformationService.selectTbStationInformationList();
        ExcelUtil<TbStationInformation> util = new ExcelUtil<TbStationInformation>(TbStationInformation.class);
        util.exportExcel(response, list, "其它栏目 数据");
    }

    /**
     * 通过id获取驿站信息详细信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @PreAuthorize("@ss.hasPermi('system:station:list:checked')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) {
        return success(tbStationInformationService.selectTbStationInformationById(id));
    }

    /**
     * 新增新闻
     *
     * @param tbStationInformation 驿站信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/9 15:35:17
     */
    @PreAuthorize("@ss.hasPermi('system:station:add')")
    @Log(title = "新增新闻", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbStationInformation tbStationInformation) {
        System.out.println(tbStationInformation);
        return toAjax(tbStationInformationService.insertTbStationInformation(tbStationInformation));
    }

    /**
     * 修改驿站信息
     *
     * @param tbStationInformation 驿站信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @PreAuthorize("@ss.hasPermi('system:station:edit')")
    @Log(title = "修改驿站信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbStationInformation tbStationInformation) {
        return toAjax(tbStationInformationService.updateStationInformation(tbStationInformation));
    }

    /**
     * 通过id列表删除新闻
     *
     * @param ids id列表
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/9 15:33:36
     */
    @PreAuthorize("@ss.hasPermi('system:station:remove')")
    @Log(title = "删除驿站信息", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(tbStationInformationService.deleteTbStationInformationByStationInformationIds(ids));
    }

    /**
     * 根据id增加阅读量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/updateReading")
    public AjaxResult updateReading(@RequestBody TbStationInformation tbStationInformation) {
        return toAjax(tbStationInformationService.updateReading(tbStationInformation));
    }

    /**
     * 根据id增加点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/addLikes")
    public AjaxResult addLikes(@RequestBody TbStationInformation tbStationInformation) {
        return toAjax(tbStationInformationService.addLikes(tbStationInformation));
    }

    /**
     * 根据id减少点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/subLikes")
    public AjaxResult subLikes(@RequestBody TbStationInformation tbStationInformation) {
        return toAjax(tbStationInformationService.subLikes(tbStationInformation));
    }

    /**
     * 根据id增加收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/addCollect")
    public AjaxResult addCollect(@RequestBody TbStationInformation tbStationInformation) {
        return toAjax(tbStationInformationService.addCollect(tbStationInformation));
    }

    /**
     * 根据id减少收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/subCollect")
    public AjaxResult subCollect(@RequestBody TbStationInformation tbStationInformation) {
        return toAjax(tbStationInformationService.subCollect(tbStationInformation));
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
    public AjaxResult getLikeInfo(@PathVariable("query") String query) {
        return success(tbStationInformationService.selectStationInformationByLike(query));
    }

    /**
     * 通过id列表查询对应数据
     *
     * @param ids id列表
     * @return java.util.List<com.ruoyi.system.domain.TbOnlineTraining>
     * @author Alex McAvoy
     * @date 2023/10/18 19:21:47
     */
    @PreAuthorize("@ss.hasPermi('system:station:list:checked')")
    @GetMapping(value = "/get_ids/{id}")
    public List<TbStationInformation> getStationInformationListByIds(@PathVariable("id") Long[] ids) {
        return tbStationInformationService.selectStationInformationListByIds(ids);
    }

}
