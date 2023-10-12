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
import com.ruoyi.system.domain.TbRecommendProducts;
import com.ruoyi.system.service.ITbRecommendProductsService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 推优品Controller
 *
 * @author ruoyi
 * @date 2023-10-04
 */
@RestController
@RequestMapping("/system/products")
public class TbRecommendProductsController extends BaseController {
    @Autowired
    private ITbRecommendProductsService tbRecommendProductsService;

    /**
     * 查询推优品列表
     */
    @PreAuthorize("@ss.hasPermi('system:products:list')")
    @GetMapping("/list")
    public TableDataInfo list(TbRecommendProducts tbRecommendProducts) {
        startPage();
        List<TbRecommendProducts> list = tbRecommendProductsService.selectTbRecommendProductsList(tbRecommendProducts);
        return getDataTable(list);
    }

    /**
     * 导出推优品列表
     */
    @PreAuthorize("@ss.hasPermi('system:products:export')")
    @Log(title = "推优品", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TbRecommendProducts tbRecommendProducts) {
        List<TbRecommendProducts> list = tbRecommendProductsService.selectTbRecommendProductsList(tbRecommendProducts);
        ExcelUtil<TbRecommendProducts> util = new ExcelUtil<TbRecommendProducts>(TbRecommendProducts.class);
        util.exportExcel(response, list, "推优品数据");
    }

    /**
     * 获取推优品详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:products:query')")
    @GetMapping(value = "getById/{newsId}")
    public AjaxResult getInfo(@PathVariable("newsId") Long newsId) {
        return success(tbRecommendProductsService.selectTbRecommendProductsByNewsId(newsId));
    }

    /**
     * 新增推优品
     */
    @PreAuthorize("@ss.hasPermi('system:products:add')")
    @Log(title = "推优品", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbRecommendProducts tbRecommendProducts) {

        String nickname = SecurityContextHolder.getContext().getAuthentication().getName();
        tbRecommendProducts.setCreateBy(nickname);
        tbRecommendProducts.setReading((long) 0);
        tbRecommendProducts.setCollect((long) 0);
        tbRecommendProducts.setLikes((long) 0);
        tbRecommendProducts.setFirstColumn("0");
        return toAjax(tbRecommendProductsService.insertTbRecommendProducts(tbRecommendProducts));
    }

    /**
     * 修改推优品
     */
    @PreAuthorize("@ss.hasPermi('system:products:edit')")
    @Log(title = "推优品", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbRecommendProducts tbRecommendProducts) {
        return toAjax(tbRecommendProductsService.updateTbRecommendProducts(tbRecommendProducts));
    }

    /**
     * 删除推优品
     */
    @PreAuthorize("@ss.hasPermi('system:products:remove')")
    @Log(title = "推优品", businessType = BusinessType.DELETE)
    @DeleteMapping("/{newsIds}")
    public AjaxResult remove(@PathVariable Long[] newsIds) {
        return toAjax(tbRecommendProductsService.deleteTbRecommendProductsByNewsIds(newsIds));
    }

    /**
     * 获取已审核，分类为secondColumn的优品
     *
     * @param firstColumn  是否审核
     * @param secondColumn 优品分类
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @PreAuthorize("@ss.hasPermi('system:products:list:checked')")
    @GetMapping(value = "/getListByColumn/{firstColumn}/{secondColumn}")
    public AjaxResult getProductsByColumn(@PathVariable("firstColumn") String firstColumn, @PathVariable("secondColumn") String secondColumn) {
        return success(tbRecommendProductsService.selectTbRecommendProductsByColumn(firstColumn, secondColumn));
    }

    /**
     * 获取全部未审核的优品信息
     *
     * @param tbRecommendProducts 优品对象
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    @PreAuthorize("@ss.hasPermi('system:products:list:unchecked')")
    @GetMapping("/getFirstColumns")
    public TableDataInfo getRemark(TbRecommendProducts tbRecommendProducts) {
        startPage();
        List<TbRecommendProducts> list = tbRecommendProductsService.selectTbRecommendProductsFirstColumnsList(tbRecommendProducts);
        return getDataTable(list);
    }

    /**
     * 修改审核/未审核
     *
     * @param tbRecommendProducts 优品对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PreAuthorize("@ss.hasPermi('system:products:check')")
    @PutMapping("/check")
    public AjaxResult eidtFirstColumns(@RequestBody TbRecommendProducts tbRecommendProducts) {
        return toAjax(tbRecommendProductsService.updateTbRecommendProductsFirstColumns(tbRecommendProducts));
    }

    /**
     * 阅读量
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/updateReading")
    public AjaxResult updateReading(@RequestBody TbRecommendProducts tbRecommendProducts)
    {
        return toAjax(tbRecommendProductsService.updateReading(tbRecommendProducts));
    }

    /**
     * 点赞量
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/addLikes")
    public AjaxResult addLikes(@RequestBody TbRecommendProducts tbRecommendProducts)
    {
        return toAjax(tbRecommendProductsService.addLikes(tbRecommendProducts));
    }
    @PutMapping("/subLikes")
    public AjaxResult subLikes(@RequestBody TbRecommendProducts tbRecommendProducts)
    {
        return toAjax(tbRecommendProductsService.subLikes(tbRecommendProducts));
    }

    /**
     * 收藏量
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/addCollect")
    public AjaxResult addCollect(@RequestBody TbRecommendProducts tbRecommendProducts)
    {
        return toAjax(tbRecommendProductsService.addCollect(tbRecommendProducts));
    }
    @PutMapping("/subCollect")
    public AjaxResult subCollect(@RequestBody TbRecommendProducts tbRecommendProducts)
    {
        return toAjax(tbRecommendProductsService.subCollect(tbRecommendProducts));
    }
}
