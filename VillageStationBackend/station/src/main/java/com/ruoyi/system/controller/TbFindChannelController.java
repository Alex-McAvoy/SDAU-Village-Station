package com.ruoyi.system.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
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
import com.ruoyi.system.domain.TbFindChannel;
import com.ruoyi.system.service.ITbFindChannelService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 找渠道Controller
 * 
 * @author ruoyi
 * @date 2023-10-05
 */
@RestController
@RequestMapping("/system/channel")
public class TbFindChannelController extends BaseController
{
    @Autowired
    private ITbFindChannelService tbFindChannelService;

    /**
     * 查询找渠道列表
     */
    @PreAuthorize("@ss.hasPermi('system:channel:list')")
    @GetMapping("/list")
    public TableDataInfo list(TbFindChannel tbFindChannel)
    {
        startPage();
        List<TbFindChannel> list = tbFindChannelService.selectTbFindChannelList(tbFindChannel);
        return getDataTable(list);
    }

    @PreAuthorize("@ss.hasPermi('system:channel:list')")
    @GetMapping("/getListByColumn/{firstColumn}")
    public TableDataInfo getListByColumn(@PathVariable("firstColumn") String firstColumn)
    {
        startPage();
        List<TbFindChannel> list = tbFindChannelService.selectTbFindChannelListByColumn(firstColumn);
        return getDataTable(list);
    }

    /**
     * 导出找渠道列表
     */
    @PreAuthorize("@ss.hasPermi('system:channel:export')")
    @Log(title = "找渠道", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TbFindChannel tbFindChannel)
    {
        List<TbFindChannel> list = tbFindChannelService.selectTbFindChannelList(tbFindChannel);
        ExcelUtil<TbFindChannel> util = new ExcelUtil<TbFindChannel>(TbFindChannel.class);
        util.exportExcel(response, list, "找渠道数据");
    }

    /**
     * 获取找渠道详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:channel:query')")
    @GetMapping(value = "/{newsId}")
    public AjaxResult getInfo(@PathVariable("newsId") Long newsId)
    {
        return success(tbFindChannelService.selectTbFindChannelByNewsId(newsId));
    }

    /**
     * 新增找渠道
     */
    @PreAuthorize("@ss.hasPermi('system:channel:add')")
    @Log(title = "找渠道", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbFindChannel tbFindChannel)
    {
        return toAjax(tbFindChannelService.insertTbFindChannel(tbFindChannel));
    }

    /**
     * 修改找渠道
     */
    @PreAuthorize("@ss.hasPermi('system:channel:edit')")
    @Log(title = "找渠道", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbFindChannel tbFindChannel)
    {
        return toAjax(tbFindChannelService.updateTbFindChannel(tbFindChannel));
    }

    /**
     * 删除找渠道
     */
    @PreAuthorize("@ss.hasPermi('system:channel:remove')")
    @Log(title = "找渠道", businessType = BusinessType.DELETE)
	@DeleteMapping("/{newsIds}")
    public AjaxResult remove(@PathVariable Long[] newsIds)
    {
        return toAjax(tbFindChannelService.deleteTbFindChannelByNewsIds(newsIds));
    }
}
