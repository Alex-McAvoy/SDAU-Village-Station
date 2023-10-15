package com.ruoyi.system.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.system.service.ISysUserService;
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
import com.ruoyi.system.domain.TbStationInfo;
import com.ruoyi.system.service.ITbStationInfoService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 驿站信息Controller
 *
 * @author ruoyi
 * @date 2023-10-09
 */
@RestController
@RequestMapping("/system/info")
public class TbStationInfoController extends BaseController {
    @Autowired
    private ITbStationInfoService tbStationInfoService;
    @Autowired
    private ISysUserService sysUserService;

    /**
     * 查询驿站信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:info:list')")
    @GetMapping("/list")
    public TableDataInfo list(TbStationInfo tbStationInfo) {
        startPage();
        List<TbStationInfo> list = tbStationInfoService.selectTbStationInfoList(tbStationInfo);
        return getDataTable(list);
    }

    /*导出驿站信息列表*/
    @PreAuthorize("@ss.hasPermi('system:info:export')")
    @Log(title = "驿站信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TbStationInfo tbStationInfo) {
        List<TbStationInfo> list = tbStationInfoService.selectTbStationInfoList(tbStationInfo);
        ExcelUtil<TbStationInfo> util = new ExcelUtil<TbStationInfo>(TbStationInfo.class);
        util.exportExcel(response, list, "驿站信息数据");
    }

    /**
     * 获取驿站信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:info:query')")
    @GetMapping(value = "/id/{newsId}")
    public AjaxResult getInfo(@PathVariable("newsId") Long newsId) {
        return success(tbStationInfoService.selectTbStationInfoByNewsId(newsId));
    }

    /**
     * 新增驿站信息
     */
    @PreAuthorize("@ss.hasPermi('system:info:add')")
    @Log(title = "驿站信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbStationInfo tbStationInfo) {
        Long userId = SecurityUtils.getUserId();
        Long deptId = SecurityUtils.getDeptId();
        String nickname = sysUserService.selectUserById(userId).getNickName();
        tbStationInfo.setCreateBy(nickname);
        tbStationInfo.setSort(deptId.toString());
        tbStationInfo.setReading((long) 0);
        tbStationInfo.setCollect((long) 0);
        tbStationInfo.setLikes((long) 0);
        tbStationInfo.setFirstColumn("0");
        return toAjax(tbStationInfoService.insertTbStationInfo(tbStationInfo));
    }

    /**
     * 修改驿站信息
     */
    @PreAuthorize("@ss.hasPermi('system:info:edit')")
    @Log(title = "驿站信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbStationInfo tbStationInfo) {
        return toAjax(tbStationInfoService.updateTbStationInfo(tbStationInfo));
    }

    /**
     * 删除驿站信息
     */
    @PreAuthorize("@ss.hasPermi('system:info:remove')")
    @Log(title = "驿站信息", businessType = BusinessType.DELETE)
    @DeleteMapping("/{newsIds}")
    public AjaxResult remove(@PathVariable Long[] newsIds) {
        return toAjax(tbStationInfoService.deleteTbStationInfoByNewsIds(newsIds));
    }

    /**
     * 获取全部已审核的驿站信息
     *
     * @param firstColumn 是否审核
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @PreAuthorize("@ss.hasPermi('system:info:list:checked')")
    @GetMapping(value = "/getListByColumn/{firstColumn}")
    public AjaxResult getInfo(@PathVariable("firstColumn") String firstColumn) {
        return success(tbStationInfoService.selectTbStationInfoByColumn(firstColumn));
    }

    /**
     * 获取驿站id为sort的已审核的驿站信息
     *
     * @param firstColumn 是否审核
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @GetMapping(value = "/getListByColumn/{firstColumn}/{sort}")
    public AjaxResult getStationInfo(@PathVariable("firstColumn") String firstColumn, @PathVariable("sort") String sort) {
        return success(tbStationInfoService.selectTbStationInfoBySort(firstColumn, sort));
    }

    /**
     * 获取全部未审核的驿站信息
     *
     * @param tbStationInfo 驿站信息对象
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    @PreAuthorize("@ss.hasPermi('system:info:list:unchecked')")
    @GetMapping("/getFirstColumns")
    public TableDataInfo getRemark(TbStationInfo tbStationInfo) {
        startPage();
        List<TbStationInfo> list = tbStationInfoService.selectTbStationInfoFirstColumnsList(tbStationInfo);
        return getDataTable(list);
    }

    /**
     * 修改审核/未审核
     *
     * @param tbStationInfo 驿站信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PreAuthorize("@ss.hasPermi('system:info:check')")
    @PutMapping("/check")
    public AjaxResult eidtRemark(@RequestBody TbStationInfo tbStationInfo) {
        return toAjax(tbStationInfoService.updateTbStationFirstColumns(tbStationInfo));
    }

    /**
     * 阅读量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/updateReading")
    public AjaxResult updateReading(@RequestBody TbStationInfo tbStationInfo) {
        return toAjax(tbStationInfoService.updateReading(tbStationInfo));
    }

    /**
     * 点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/addLikes")
    public AjaxResult addLikes(@RequestBody TbStationInfo tbStationInfo) {
        return toAjax(tbStationInfoService.addLikes(tbStationInfo));
    }

    @PutMapping("/subLikes")
    public AjaxResult subLikes(@RequestBody TbStationInfo tbStationInfo) {
        return toAjax(tbStationInfoService.subLikes(tbStationInfo));
    }

    /**
     * 收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/addCollect")
    public AjaxResult addCollect(@RequestBody TbStationInfo tbStationInfo) {
        return toAjax(tbStationInfoService.addCollect(tbStationInfo));
    }

    @PutMapping("/subCollect")
    public AjaxResult subCollect(@RequestBody TbStationInfo tbStationInfo) {
        return toAjax(tbStationInfoService.subCollect(tbStationInfo));
    }


    /**
     * 获取模糊查询详细信息
     */
    @GetMapping(value = "/like/{query}")
    public AjaxResult getLikeInfo(@PathVariable("query") String query) {
        return success(tbStationInfoService.selectTbStationInfoByLike(query));
    }

    //通过id列表来查询
    @GetMapping("/get_info_idlist/{idlist}")
    public List<TbStationInfo> getNewsByIdList(@PathVariable("idlist")  Long[] idList)
    {
        List<TbStationInfo> list = tbStationInfoService.selectTbStationInfoByIdList(idList);
        return  list;
    }
}
