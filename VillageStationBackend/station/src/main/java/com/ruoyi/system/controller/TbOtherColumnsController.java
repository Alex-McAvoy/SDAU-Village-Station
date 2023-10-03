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
import com.ruoyi.system.domain.TbOtherColumns;
import com.ruoyi.system.service.ITbOtherColumnsService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：Controller
 * 
 * @author ruoyi
 * @date 2023-10-02
 */
@RestController
@RequestMapping("/system/columns")
public class TbOtherColumnsController extends BaseController
{
    @Autowired
    private ITbOtherColumnsService tbOtherColumnsService;

    /**
     * 查询其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：列表
     */
    @PreAuthorize("@ss.hasPermi('system:columns:list')")
    @GetMapping("/list")
    public TableDataInfo list(TbOtherColumns tbOtherColumns)
    {
        startPage();
        List<TbOtherColumns> list = tbOtherColumnsService.selectTbOtherColumnsList(tbOtherColumns);
        return getDataTable(list);
    }

//    获取全部未审核的新闻

    @PreAuthorize("@ss.hasPermi('system:columns:list')")
    @GetMapping("/getRemark")
    public TableDataInfo getRemark(TbOtherColumns tbOtherColumns)
    {
        System.out.println("123");
        startPage();

        List<TbOtherColumns> list = tbOtherColumnsService.selectTbOtherColumnsRemarkList(tbOtherColumns);
        return getDataTable(list);
    }

    //通过一级栏目、二级栏目获取新闻
    @PreAuthorize("@ss.hasPermi('system:columns:query')")
    @GetMapping("/getNewsByColumn/{firstColumn}/{secondColumn}")
    public TableDataInfo getNewsByColumn(@PathVariable("firstColumn") String firstColumn,@PathVariable("secondColumn") String secondColumn)
    {
        System.out.println(firstColumn+"  "+secondColumn);
        List<TbOtherColumns> list = tbOtherColumnsService.selectTbOtherColumnsByColumn(firstColumn,secondColumn);
        return getDataTable(list);
    }

    //通过一级栏目获取新闻
    @PreAuthorize("@ss.hasPermi('system:columns:query')")
    @GetMapping("/getNewsByColumn/{firstColumn}")
    public TableDataInfo getNewsByFirstColumn(@PathVariable("firstColumn") String firstColumn)
    {
        System.out.println("2323424");
        System.out.println(firstColumn);
        List<TbOtherColumns> list = tbOtherColumnsService.selectTbOtherColumnsByFirstColumn(firstColumn);
        return getDataTable(list);
    }

    /**
     * 导出其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：列表
     */
    @PreAuthorize("@ss.hasPermi('system:columns:export')")
//    @Log(title = "其它栏目
//       一级栏目              二级栏目 （在字典中设置）
//         学农技：            水稻、小麦..
//         买农资：           节肥增效、虫害防治..
//         找渠道：           供应、求购..
//         推优品：           我的优品、品牌展示..
//         新品种：
//         培训：              园艺培训、粮食种植..
//         热销农产：", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TbOtherColumns tbOtherColumns)
    {
        List<TbOtherColumns> list = tbOtherColumnsService.selectTbOtherColumnsList(tbOtherColumns);
        ExcelUtil<TbOtherColumns> util = new ExcelUtil<TbOtherColumns>(TbOtherColumns.class);
        util.exportExcel(response, list, "其它栏目 数据");
    }

    /**
     * 获取其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：详细信息
     */


    @PreAuthorize("@ss.hasPermi('system:columns:query')")
    @GetMapping(value = "getById/{newsId}")
    public AjaxResult getInfo(@PathVariable("newsId") Long newsId)
    {
        return success(tbOtherColumnsService.selectTbOtherColumnsByNewsId(newsId));
    }

    /**
     * 新增其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：
     */
    @PreAuthorize("@ss.hasPermi('system:columns:add')")
//    @Log(title = "其它栏目
//       一级栏目              二级栏目 （在字典中设置）
//         学农技：            水稻、小麦..
//         买农资：           节肥增效、虫害防治..
//         找渠道：           供应、求购..
//         推优品：           我的优品、品牌展示..
//         新品种：
//         培训：              园艺培训、粮食种植..
//         热销农产：", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbOtherColumns tbOtherColumns)
    {
        return toAjax(tbOtherColumnsService.insertTbOtherColumns(tbOtherColumns));
    }

    /**
     * 修改其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：
     */
    @PreAuthorize("@ss.hasPermi('system:columns:edit')")
//    @Log(title = "其它栏目
//       一级栏目              二级栏目 （在字典中设置）
//         学农技：            水稻、小麦..
//         买农资：           节肥增效、虫害防治..
//         找渠道：           供应、求购..
//         推优品：           我的优品、品牌展示..
//         新品种：
//         培训：              园艺培训、粮食种植..
//         热销农产：", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbOtherColumns tbOtherColumns)
    {
        return toAjax(tbOtherColumnsService.updateTbOtherColumns(tbOtherColumns));
    }

    //修改remark
    @PreAuthorize("@ss.hasPermi('system:columns:edit')")
    @PutMapping("/")
    public AjaxResult eidtRemark(@RequestBody TbOtherColumns tbOtherColumns)
    {
        return toAjax(tbOtherColumnsService.updateTbOtherColumnsRemark(tbOtherColumns));
    }

    /**
     * 删除其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：
     */
    @PreAuthorize("@ss.hasPermi('system:columns:remove')")
//    @Log(title = "其它栏目
//       一级栏目              二级栏目 （在字典中设置）
//         学农技：            水稻、小麦..
//         买农资：           节肥增效、虫害防治..
//         找渠道：           供应、求购..
//         推优品：           我的优品、品牌展示..
//         新品种：
//         培训：              园艺培训、粮食种植..
//         热销农产：", businessType = BusinessType.DELETE)
	@DeleteMapping("/{newsIds}")
    public AjaxResult remove(@PathVariable Long[] newsIds)
    {
        return toAjax(tbOtherColumnsService.deleteTbOtherColumnsByNewsIds(newsIds));
    }
}
