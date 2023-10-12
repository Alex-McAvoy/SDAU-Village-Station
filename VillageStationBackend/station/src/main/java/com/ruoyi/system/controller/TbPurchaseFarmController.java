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
import com.ruoyi.system.domain.TbPurchaseFarm;
import com.ruoyi.system.service.ITbPurchaseFarmService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 买农资Controller
 *
 * @author ruoyi
 * @date 2023-10-06
 */
@RestController
@RequestMapping("/system/farm")
public class TbPurchaseFarmController extends BaseController {
    @Autowired
    private ITbPurchaseFarmService tbPurchaseFarmService;

    /**
     * 查询买农资列表
     */
    @PreAuthorize("@ss.hasPermi('system:farm:list')")
    @GetMapping("/list")
    public TableDataInfo list(TbPurchaseFarm tbPurchaseFarm) {
        startPage();
        List<TbPurchaseFarm> list = tbPurchaseFarmService.selectTbPurchaseFarmList(tbPurchaseFarm);
        return getDataTable(list);
    }

    /**
     * 导出买农资列表
     */
    @PreAuthorize("@ss.hasPermi('system:farm:export')")
    @Log(title = "买农资", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TbPurchaseFarm tbPurchaseFarm) {
        List<TbPurchaseFarm> list = tbPurchaseFarmService.selectTbPurchaseFarmList(tbPurchaseFarm);
        ExcelUtil<TbPurchaseFarm> util = new ExcelUtil<TbPurchaseFarm>(TbPurchaseFarm.class);
        util.exportExcel(response, list, "买农资数据");
    }

    /**
     * 获取买农资详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:farm:query')")
    @GetMapping(value = "/news/{newsId}")
    public AjaxResult getInfo(@PathVariable("newsId") Long newsId) {
        return success(tbPurchaseFarmService.selectTbPurchaseFarmByNewsId(newsId));
    }

    /**
     * 新增买农资
     */
    @PreAuthorize("@ss.hasPermi('system:farm:add')")
    @Log(title = "买农资", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbPurchaseFarm tbPurchaseFarm) {
        String nickname = SecurityContextHolder.getContext().getAuthentication().getName();
        tbPurchaseFarm.setCreateBy(nickname);
        tbPurchaseFarm.setReading((long) 0);
        tbPurchaseFarm.setCollect((long) 0);
        tbPurchaseFarm.setLikes((long) 0);
        tbPurchaseFarm.setFirstColumn("0");
        return toAjax(tbPurchaseFarmService.insertTbPurchaseFarm(tbPurchaseFarm));
    }

    /**
     * 修改买农资
     */
    @PreAuthorize("@ss.hasPermi('system:farm:edit')")
    @Log(title = "买农资", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbPurchaseFarm tbPurchaseFarm) {
        return toAjax(tbPurchaseFarmService.updateTbPurchaseFarm(tbPurchaseFarm));
    }

    /**
     * 删除买农资
     */
    @PreAuthorize("@ss.hasPermi('system:farm:remove')")
    @Log(title = "买农资", businessType = BusinessType.DELETE)
    @DeleteMapping("/{newsIds}")
    public AjaxResult remove(@PathVariable Long[] newsIds) {
        return toAjax(tbPurchaseFarmService.deleteTbPurchaseFarmByNewsIds(newsIds));
    }

    /**
     * 获取已审核，分类为secondColumn的农资
     *
     * @param firstColumn  是否审核
     * @param secondColumn 农资分类
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @PreAuthorize("@ss.hasPermi('system:farm:list:checked')")
    @GetMapping(value = "/getListByColumn/{firstColumn}/{secondColumn}")
    public AjaxResult getListByColumn(@PathVariable("firstColumn") String firstColumn, @PathVariable("secondColumn") String secondColumn) {
        return success(tbPurchaseFarmService.selectTbPurchaseFarmByColumn(firstColumn, secondColumn));
    }

    /**
     * 获取全部未审核的农资信息
     *
     * @param tbPurchaseFarm 农资对象
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    @PreAuthorize("@ss.hasPermi('system:farm:list:unchecked')")
    @GetMapping("/getFirstColumns")
    public TableDataInfo getRemark(TbPurchaseFarm tbPurchaseFarm) {
        startPage();
        List<TbPurchaseFarm> list = tbPurchaseFarmService.selectTbPurchaseFarmFirstColumnsList(tbPurchaseFarm);
        return getDataTable(list);
    }

    /**
     * 修改审核/未审核
     *
     * @param tbPurchaseFarm 农资对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PreAuthorize("@ss.hasPermi('system:farm:check')")
    @PutMapping("/check")
    public AjaxResult eidtFirstColumns(@RequestBody TbPurchaseFarm tbPurchaseFarm) {
        return toAjax(tbPurchaseFarmService.updateTbPurchaseFarmFirstColumns(tbPurchaseFarm));
    }

    /**
     * 阅读量
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/updateReading")
    public AjaxResult updateReading(@RequestBody TbPurchaseFarm tbPurchaseFarm)
    {
        return toAjax(tbPurchaseFarmService.updateReading(tbPurchaseFarm));
    }

    /**
     * 点赞量
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/addLikes")
    public AjaxResult addLikes(@RequestBody TbPurchaseFarm tbPurchaseFarm)
    {
        return toAjax(tbPurchaseFarmService.addLikes(tbPurchaseFarm));
    }
    @PutMapping("/subLikes")
    public AjaxResult subLikes(@RequestBody TbPurchaseFarm tbPurchaseFarm)
    {
        return toAjax(tbPurchaseFarmService.subLikes(tbPurchaseFarm));
    }

    /**
     * 收藏量
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/addCollect")
    public AjaxResult addCollect(@RequestBody TbPurchaseFarm tbPurchaseFarm)
    {
        return toAjax(tbPurchaseFarmService.addCollect(tbPurchaseFarm));
    }
    @PutMapping("/subCollect")
    public AjaxResult subCollect(@RequestBody TbPurchaseFarm tbPurchaseFarm)
    {
        return toAjax(tbPurchaseFarmService.subCollect(tbPurchaseFarm));
    }
}
