package com.ruoyi.system.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

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
 * 新闻发布
 * 
 * @author ruoyi
 * @date 2023-10-02
 */
@RestController
@RequestMapping("/system/news")
public class TbNewsController extends BaseController
{
    @Autowired
    private ITbNewsService tbNewsService;

    /**
     * 查询新闻列表
     * @param tbNews
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:18
     */
    @PreAuthorize("@ss.hasPermi('system:news:list')")
    @GetMapping("/list")
    public TableDataInfo list(TbNews tbNews)
    {
        startPage();
        List<TbNews> list = tbNewsService.selectTbOtherColumnsList(tbNews);
        return getDataTable(list);
    }

    /**
     * 导出其它栏目
     * @param response
     * @param tbNews
     * @return void
     * @author Alex McAvoy
     * @date 2023/10/9 15:35:53
     */
    @PreAuthorize("@ss.hasPermi('system:news:export')")
    @Log(title = "导出其它栏目", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TbNews tbNews)
    {
        List<TbNews> list = tbNewsService.selectTbOtherColumnsList(tbNews);
        ExcelUtil<TbNews> util = new ExcelUtil<TbNews>(TbNews.class);
        util.exportExcel(response, list, "其它栏目 数据");
    }

    /**
     * 获取其它栏目
     * @param newsId
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/9 15:35:43
     */
    @PreAuthorize("@ss.hasPermi('system:news:query')")
    @GetMapping(value = "getById/{newsId}")
    public AjaxResult getInfo(@PathVariable("newsId") Long newsId)
    {
        return success(tbNewsService.selectTbOtherColumnsByNewsId(newsId));
    }

    /**
     * 新增新闻
     * @param tbNews
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/9 15:35:17
     */
    @PreAuthorize("@ss.hasPermi('system:news:add')")
    @Log(title = "新增新闻", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbNews tbNews)
    {

        String nickname = SecurityContextHolder.getContext().getAuthentication().getName();
        tbNews.setCreateBy(nickname);
        tbNews.setReading((long) 0);
        tbNews.setCollect((long) 0);
        tbNews.setLikes((long) 0);
        tbNews.setFirstColumn("0");

        String content = tbNews.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbNews.setContent(content);

        return toAjax(tbNewsService.insertTbOtherColumns(tbNews));
    }

    /**
     * 修改其它栏目
     * @param tbNews
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/9 15:34:59
     */
    @PreAuthorize("@ss.hasPermi('system:news:edit')")
    @Log(title = "修改其它栏目", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbNews tbNews)
    {
        String content = tbNews.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbNews.setContent(content);
        return toAjax(tbNewsService.updateTbOtherColumns(tbNews));
    }

    /**
     * 删除其它栏目
     * @param newsIds
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/9 15:33:36
     */
    @PreAuthorize("@ss.hasPermi('system:news:remove')")
    @Log(title = "删除其它栏目", businessType = BusinessType.DELETE)
	@DeleteMapping("/{newsIds}")
    public AjaxResult remove(@PathVariable Long[] newsIds)
    {
        return toAjax(tbNewsService.deleteTbOtherColumnsByNewsIds(newsIds));
    }


    /**
     * 获取已审核，分类为secondColumn的新闻
     * @param firstColumn 是否审核
     * @param secondColumn 新闻分类
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:55
     */
    @PreAuthorize("@ss.hasPermi('system:news:list:checked')")
    @GetMapping("/getListByColumn/{firstColumn}/{secondColumn}")
    public TableDataInfo getNewsByColumn(@PathVariable("firstColumn") String firstColumn,@PathVariable("secondColumn") String secondColumn)
    {
        List<TbNews> list = tbNewsService.selectTbNewsByColumn(firstColumn,secondColumn);
        return getDataTable(list);
    }

    /**
     * 获取全部未审核的新闻
     * @param tbNews
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:34
     */
    @PreAuthorize("@ss.hasPermi('system:news:list:unchecked')")
    @GetMapping("/getFirstColumns")
    public TableDataInfo getRemark(TbNews tbNews)
    {
        startPage();
        List<TbNews> list = tbNewsService.selectTbNewsFirstColumnsList(tbNews);
        return getDataTable(list);
    }


    /**
     * 修改审核/未审核
     * @param tbNews
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/9 15:34:47
     */
    @PreAuthorize("@ss.hasPermi('system:news:check')")
    @PutMapping("/check")
    public AjaxResult eidtRemark(@RequestBody TbNews tbNews)
    {
        return toAjax(tbNewsService.updateTbNewsFirstColumns(tbNews));
    }

    /**
     * 阅读量
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/updateReading")
    public AjaxResult updateReading(@RequestBody TbNews tbNews)
    {
        return toAjax(tbNewsService.updateReading(tbNews));
    }

    /**
     * 点赞量
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/addLikes")
    public AjaxResult addLikes(@RequestBody TbNews tbNews)
    {
        return toAjax(tbNewsService.addLikes(tbNews));
    }

    /**
     * 收藏量
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/addCollect")
    public AjaxResult addCollect(@RequestBody TbNews tbNews)
    {
        return toAjax(tbNewsService.addCollect(tbNews));
    }
}
