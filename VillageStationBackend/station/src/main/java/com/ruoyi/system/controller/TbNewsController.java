package com.ruoyi.system.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.system.service.ISysUserService;
import com.ruoyi.system.service.ITbNewsService;
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
import com.ruoyi.system.domain.TbNews;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;


/**
 * 新闻Controller
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/11 11:27
 **/
@RestController
@RequestMapping("/system/news")
public class TbNewsController extends BaseController {
    @Autowired
    private ITbNewsService tbNewsService;

    /**
     * 查询新闻列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:18
     */
    @PreAuthorize("@ss.hasPermi('system:news:list')")
    @GetMapping("/list")
    public TableDataInfo list() {
        startPage();
        List<TbNews> list = tbNewsService.selectTbNewsList();
        return getDataTable(list);
    }

    /**
     * 查询已审核的新闻列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:18
     */
    @PreAuthorize("@ss.hasPermi('system:news:list:checked')")
    @GetMapping("/audit_list")
    public TableDataInfo auditList() {
        startPage();
        List<TbNews> list = tbNewsService.selectTbNewsAuditList();
        return getDataTable(list);
    }

    /**
     * 查询未审核新闻列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:34
     */
    @PreAuthorize("@ss.hasPermi('system:news:list:unchecked')")
    @GetMapping("/unaudited_list")
    public TableDataInfo unauditedList() {
        startPage();
        List<TbNews> list = tbNewsService.selectTbNewsUnauditedList();
        return getDataTable(list);
    }

    /**
     * 获取已审核的分类新闻信息
     *
     * @param category 类型
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:55
     */
    @PreAuthorize("@ss.hasPermi('system:news:list:checked')")
    @GetMapping(value = "/category_list/{category}")
    public AjaxResult getTbNewsCategoryList(@PathVariable("category") String category) {
        return success(tbNewsService.selectTbNewsCategoryList(category));
    }

    /**
     * 获取驿站id为sort的已审核的分类新闻信息
     *
     * @param category 分类
     * @param sort     驿站id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @PreAuthorize("@ss.hasPermi('system:news:list:checked')")
    @GetMapping(value = "/category_sort_list/{category}/{sort}")
    public AjaxResult getTbNewsCategorySortList(@PathVariable("category") String category, @PathVariable("sort") String sort) {
        return success(tbNewsService.selectTbNewsCategorySortList(category, sort));
    }

    /**
     * 根据id审核新闻信息对象
     *
     * @param tbNews 新闻信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PreAuthorize("@ss.hasPermi('system:news:check')")
    @PutMapping("/check")
    public AjaxResult eidtAudit(@RequestBody TbNews tbNews) {
        return toAjax(tbNewsService.updateTbNewsAudit(tbNews));
    }

    /**
     * 导出已审核的新闻列表
     *
     * @author Alex McAvoy
     * @date 2023/10/18 18:09:10
     */
    @PreAuthorize("@ss.hasPermi('system:news:export')")
    @Log(title = "导出新闻信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response) {
        List<TbNews> list = tbNewsService.selectTbNewsList();
        ExcelUtil<TbNews> util = new ExcelUtil<TbNews>(TbNews.class);
        util.exportExcel(response, list, "其它栏目 数据");
    }

    /**
     * 通过id获取新闻详细信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @PreAuthorize("@ss.hasPermi('system:news:list:checked')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) {
        return success(tbNewsService.selectTbNewsById(id));
    }

    /**
     * 新增新闻
     *
     * @param tbNews 新闻信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/9 15:35:17
     */
    @PreAuthorize("@ss.hasPermi('system:news:add')")
    @Log(title = "新增新闻", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbNews tbNews) {
        return toAjax(tbNewsService.insertTbNews(tbNews));
    }

    /**
     * 修改新闻信息
     *
     * @param tbNews 新闻信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @PreAuthorize("@ss.hasPermi('system:news:edit')")
    @Log(title = "修改新闻信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbNews tbNews) {
        return toAjax(tbNewsService.updateNews(tbNews));
    }

    /**
     * 通过id列表删除新闻
     *
     * @param ids id列表
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/9 15:33:36
     */
    @PreAuthorize("@ss.hasPermi('system:news:remove')")
    @Log(title = "删除新闻信息", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(tbNewsService.deleteTbNewsByNewsIds(ids));
    }

    /**
     * 根据id增加阅读量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/updateReading")
    public AjaxResult updateReading(@RequestBody TbNews tbNews) {
        return toAjax(tbNewsService.updateReading(tbNews));
    }

    /**
     * 根据id增加点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/addLikes")
    public AjaxResult addLikes(@RequestBody TbNews tbNews) {
        return toAjax(tbNewsService.addLikes(tbNews));
    }

    /**
     * 根据id减少点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/subLikes")
    public AjaxResult subLikes(@RequestBody TbNews tbNews) {
        return toAjax(tbNewsService.subLikes(tbNews));
    }

    /**
     * 根据id增加收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/addCollect")
    public AjaxResult addCollect(@RequestBody TbNews tbNews) {
        return toAjax(tbNewsService.addCollect(tbNews));
    }

    /**
     * 根据id减少收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/subCollect")
    public AjaxResult subCollect(@RequestBody TbNews tbNews) {
        return toAjax(tbNewsService.subCollect(tbNews));
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
    @PreAuthorize("@ss.hasPermi('system:news:query')")
    public AjaxResult getLikeInfo(@PathVariable("query") String query) {
        return success(tbNewsService.selectNewsByLike(query));
    }

    /**
     * 通过id列表查询对应数据
     *
     * @param ids id列表
     * @return java.util.List<com.ruoyi.system.domain.TbOnlineTraining>
     * @author Alex McAvoy
     * @date 2023/10/18 19:21:47
     */
    @PreAuthorize("@ss.hasPermi('system:news:list:checked')")
    @GetMapping(value = "/get_ids/{ids}")
    public List<TbNews> getNewsListByIds(@PathVariable("ids") Long[] ids) {
        return tbNewsService.selectNewsListByIds(ids);
    }
}
