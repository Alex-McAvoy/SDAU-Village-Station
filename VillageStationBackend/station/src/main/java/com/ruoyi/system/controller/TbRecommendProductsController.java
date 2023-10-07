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
public class TbRecommendProductsController extends BaseController
{
    @Autowired
    private ITbRecommendProductsService tbRecommendProductsService;

    /**
     * 查询推优品列表
     */
    @PreAuthorize("@ss.hasPermi('system:products:list')")
    @GetMapping("/list")
    public TableDataInfo list(TbRecommendProducts tbRecommendProducts)
    {
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
    public void export(HttpServletResponse response, TbRecommendProducts tbRecommendProducts)
    {
        List<TbRecommendProducts> list = tbRecommendProductsService.selectTbRecommendProductsList(tbRecommendProducts);
        ExcelUtil<TbRecommendProducts> util = new ExcelUtil<TbRecommendProducts>(TbRecommendProducts.class);
        util.exportExcel(response, list, "推优品数据");
    }

    /**
     * 获取推优品详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:products:query')")
    @GetMapping(value = "getById/{newsId}")
    public AjaxResult getInfo(@PathVariable("newsId") Long newsId)
    {
        return success(tbRecommendProductsService.selectTbRecommendProductsByNewsId(newsId));
    }
//
//        通过一级栏目 优品 二级栏目来获取优品

    @PreAuthorize("@ss.hasPermi('system:products:query')")
    @GetMapping(value = "/getNewsByColumn/{firstColumn}/{secondColumn}")
    public AjaxResult getProductsByColumn(@PathVariable("firstColumn") String firstColumn,@PathVariable("secondColumn") String secondColumn)
    {
        System.out.println(firstColumn+" "+secondColumn);
        return success(tbRecommendProductsService.selectTbRecommendProductsByColumn(firstColumn,secondColumn));
    }

    /**
     * 新增推优品
     */
    @PreAuthorize("@ss.hasPermi('system:products:add')")
    @Log(title = "推优品", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbRecommendProducts tbRecommendProducts)
    {
        return toAjax(tbRecommendProductsService.insertTbRecommendProducts(tbRecommendProducts));
    }

    /**
     * 修改推优品
     */
    @PreAuthorize("@ss.hasPermi('system:products:edit')")
    @Log(title = "推优品", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbRecommendProducts tbRecommendProducts)
    {
        return toAjax(tbRecommendProductsService.updateTbRecommendProducts(tbRecommendProducts));
    }

    /**
     * 删除推优品
     */
    @PreAuthorize("@ss.hasPermi('system:products:remove')")
    @Log(title = "推优品", businessType = BusinessType.DELETE)
	@DeleteMapping("/{newsIds}")
    public AjaxResult remove(@PathVariable Long[] newsIds)
    {
        return toAjax(tbRecommendProductsService.deleteTbRecommendProductsByNewsIds(newsIds));
    }
}
