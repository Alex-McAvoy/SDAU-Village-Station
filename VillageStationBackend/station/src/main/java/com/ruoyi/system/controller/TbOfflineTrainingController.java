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
import com.ruoyi.system.domain.TbOfflineTraining;
import com.ruoyi.system.service.ITbOfflineTrainingService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 线下培训Controller
 * 
 * @author ruoyi
 * @date 2023-10-09
 */
@RestController
@RequestMapping("/system/offline_training")
public class TbOfflineTrainingController extends BaseController
{
    @Autowired
    private ITbOfflineTrainingService tbOfflineTrainingService;

    /**
     * 查询线下培训列表
     */
    @PreAuthorize("@ss.hasPermi('system:training:list')")
    @GetMapping("/list")
    public TableDataInfo list(TbOfflineTraining tbOfflineTraining)
    {
        startPage();
        List<TbOfflineTraining> list = tbOfflineTrainingService.selectTbOfflineTrainingList(tbOfflineTraining);
        return getDataTable(list);
    }

    /**
     * 导出线下培训列表
     */
    @PreAuthorize("@ss.hasPermi('system:training:export')")
    @Log(title = "线下培训", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TbOfflineTraining tbOfflineTraining)
    {
        List<TbOfflineTraining> list = tbOfflineTrainingService.selectTbOfflineTrainingList(tbOfflineTraining);
        ExcelUtil<TbOfflineTraining> util = new ExcelUtil<TbOfflineTraining>(TbOfflineTraining.class);
        util.exportExcel(response, list, "线下培训数据");
    }

    /**
     * 获取线下培训详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:training:query')")
    @GetMapping(value = "/{newsId}")
    public AjaxResult getInfo(@PathVariable("newsId") Long newsId)
    {
        return success(tbOfflineTrainingService.selectTbOfflineTrainingByNewsId(newsId));
    }

    /**
     * 新增线下培训
     */
    @PreAuthorize("@ss.hasPermi('system:training:add')")
    @Log(title = "线下培训", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbOfflineTraining tbOfflineTraining)
    {

        String nickname = SecurityContextHolder.getContext().getAuthentication().getName();
        tbOfflineTraining.setCreateBy(nickname);
        tbOfflineTraining.setReading((long) 0);
        tbOfflineTraining.setCollect((long) 0);
        tbOfflineTraining.setLikes((long) 0);
        tbOfflineTraining.setFirstColumn("0");
        return toAjax(tbOfflineTrainingService.insertTbOfflineTraining(tbOfflineTraining));
    }

    /**
     * 修改线下培训
     */
    @PreAuthorize("@ss.hasPermi('system:training:edit')")
    @Log(title = "线下培训", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbOfflineTraining tbOfflineTraining)
    {
        return toAjax(tbOfflineTrainingService.updateTbOfflineTraining(tbOfflineTraining));
    }

    /**
     * 删除线下培训
     */
    @PreAuthorize("@ss.hasPermi('system:training:remove')")
    @Log(title = "线下培训", businessType = BusinessType.DELETE)
	@DeleteMapping("/{newsIds}")
    public AjaxResult remove(@PathVariable Long[] newsIds)
    {
        return toAjax(tbOfflineTrainingService.deleteTbOfflineTrainingByNewsIds(newsIds));
    }

    /**
     * 获取已审核secondColumn的培训
     *
     * @param firstColumn  是否审核
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @PreAuthorize("@ss.hasPermi('system:training:list:checked')")
    @GetMapping(value = "/getListByColumn/{firstColumn}")
    public AjaxResult getProductsByColumn(@PathVariable("firstColumn") String firstColumn) {
        return success(tbOfflineTrainingService.selectTbOfflineTrainingByColumn(firstColumn));
    }

    /**
     * 获取全部未审核的培训信息
     *
     * @param tbOfflineTraining 培训对象
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    @PreAuthorize("@ss.hasPermi('system:training:list:unchecked')")
    @GetMapping("/getFirstColumns")
    public TableDataInfo getRemark(TbOfflineTraining tbOfflineTraining) {
        startPage();
        List<TbOfflineTraining> list = tbOfflineTrainingService.selectTbOfflineTrainingFirstColumnsList(tbOfflineTraining);
        return getDataTable(list);
    }

    /**
     * 修改审核/未审核
     *
     * @param tbOfflineTraining 培训对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PreAuthorize("@ss.hasPermi('system:training:check')")
    @PutMapping("/check")
    public AjaxResult eidtFirstColumns(@RequestBody TbOfflineTraining tbOfflineTraining) {
        return toAjax(tbOfflineTrainingService.updateTbOfflineTrainingFirstColumns(tbOfflineTraining));
    }
    /**
     * 阅读量
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/updateReading")
    public AjaxResult updateReading(@RequestBody TbOfflineTraining tbOfflineTraining)
    {
        return toAjax(tbOfflineTrainingService.updateReading(tbOfflineTraining));
    }

    /**
     * 点赞量
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/addLikes")
    public AjaxResult addLikes(@RequestBody TbOfflineTraining tbOfflineTraining)
    {
        return toAjax(tbOfflineTrainingService.addLikes(tbOfflineTraining));
    }

    /**
     * 收藏量
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/addCollect")
    public AjaxResult addCollect(@RequestBody TbOfflineTraining tbOfflineTraining)
    {
        return toAjax(tbOfflineTrainingService.addCollect(tbOfflineTraining));
    }
}
