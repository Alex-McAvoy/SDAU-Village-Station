package com.ruoyi.system.controller;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.system.domain.TbStationIntroduction;
import com.ruoyi.system.service.ITbStationIntroductionService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 驿站介绍Controller
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2024/1/19 10:51
 **/
@RestController
@RequestMapping("/system/station_introduction")
public class TbStationIntroductionController extends BaseController {
    @Autowired
    private ITbStationIntroductionService tbStationIntroductionService;

    /**
     * 查询驿站介绍列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:18
     */
    @PreAuthorize("@ss.hasPermi('system:station:list')")
    @GetMapping("/list")
    public TableDataInfo list() {
        startPage();
        List<TbStationIntroduction> list = tbStationIntroductionService.selectTbStationIntroductionList();
        return getDataTable(list);
    }

    /**
     * 查询驿站id为id的已审核的驿站介绍列表
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
        List<TbStationIntroduction> list = tbStationIntroductionService.selectTbStationIntroductionListByStationId(stationId);
        return getDataTable(list);
    }

    /**
     * 查询已审核的驿站介绍列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:18
     */
    @PreAuthorize("@ss.hasPermi('system:station:list:checked')")
    @GetMapping("/audit_list")
    public TableDataInfo auditList() {
        startPage();
        List<TbStationIntroduction> list = tbStationIntroductionService.selectTbStationIntroductionAuditList();
        return getDataTable(list);
    }

    /**
     * 查询未审核驿站介绍列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:34
     */
    @PreAuthorize("@ss.hasPermi('system:station:list:unchecked')")
    @GetMapping("/unaudited_list")
    public TableDataInfo unauditedList() {
        startPage();
        List<TbStationIntroduction> list = tbStationIntroductionService.selectTbStationIntroductionUnauditedList();
        return getDataTable(list);
    }

    /**
     * 根据驿站id查询未审核驿站介绍列表
     *
     * @param stationId 驿站id
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:34
     */
    @PreAuthorize("@ss.hasPermi('system:station:list:unchecked')")
    @GetMapping("/unaudited_list/{stationId}")
    public TableDataInfo unauditedListByStationId(@PathVariable("stationId") Long stationId) {
        startPage();
        List<TbStationIntroduction> list = tbStationIntroductionService.selectTbStationIntroductionUnauditedListByStationId(stationId);
        return getDataTable(list);
    }


    /**
     * 根据id审核驿站介绍对象，审核通过
     *
     * @param tbStationIntroduction 驿站介绍对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PreAuthorize("@ss.hasPermi('system:station:check')")
    @PutMapping("/check")
    public AjaxResult editAudit(@RequestBody TbStationIntroduction tbStationIntroduction) {
        return toAjax(tbStationIntroductionService.updateTbStationIntroductionAudit(tbStationIntroduction));
    }

    /**
     * 导出已审核的新闻列表
     *
     * @author Alex McAvoy
     * @date 2023/10/18 18:09:10
     */
    @PreAuthorize("@ss.hasPermi('system:station:export')")
    @Log(title = "导出驿站介绍", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response) {
        List<TbStationIntroduction> list = tbStationIntroductionService.selectTbStationIntroductionList();
        ExcelUtil<TbStationIntroduction> util = new ExcelUtil<TbStationIntroduction>(TbStationIntroduction.class);
        util.exportExcel(response, list, "其它栏目 数据");
    }

    /**
     * 通过id获取驿站介绍详细信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @PreAuthorize("@ss.hasPermi('system:station:list:checked')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) {
        return success(tbStationIntroductionService.selectTbStationIntroductionById(id));
    }

    /**
     * 新增新闻
     *
     * @param tbStationIntroduction 驿站介绍对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/9 15:35:17
     */
    @PreAuthorize("@ss.hasPermi('system:station:add')")
    @Log(title = "新增新闻", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbStationIntroduction tbStationIntroduction) {
        String stationId = tbStationIntroduction.getSort();
        List<TbStationIntroduction> tmp = tbStationIntroductionService.selectTbStationIntroductionListByStationId(Long.parseLong(stationId));
        if(tmp.isEmpty()) {
            return toAjax(tbStationIntroductionService.insertTbStationIntroduction(tbStationIntroduction));
        } else {
            return AjaxResult.error("该驿站已存在驿站介绍，无法添加");
        }
    }

    /**
     * 修改驿站介绍
     *
     * @param tbStationIntroduction 驿站介绍对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @PreAuthorize("@ss.hasPermi('system:station:edit')")
    @Log(title = "修改驿站介绍", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbStationIntroduction tbStationIntroduction) {
        return toAjax(tbStationIntroductionService.updateStationIntroduction(tbStationIntroduction));
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
    @Log(title = "删除驿站介绍", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(tbStationIntroductionService.deleteTbStationIntroductionByStationIntroductionIds(ids));
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
        return success(tbStationIntroductionService.selectStationIntroductionByLike(query));
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
    public List<TbStationIntroduction> getStationIntroductionListByIds(@PathVariable("id") Long[] ids) {
        return tbStationIntroductionService.selectStationIntroductionListByIds(ids);
    }

}
