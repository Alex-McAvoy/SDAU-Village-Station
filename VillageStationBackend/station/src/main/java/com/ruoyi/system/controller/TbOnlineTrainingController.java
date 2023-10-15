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
import com.ruoyi.system.domain.TbOnlineTraining;
import com.ruoyi.system.service.ITbOnlineTrainingService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 线上培训Controller
 *
 * @author ruoyi
 * @date 2023-10-11
 */
@RestController
@RequestMapping("/system/online_training")
public class TbOnlineTrainingController extends BaseController {
    @Autowired
    private ITbOnlineTrainingService tbOnlineTrainingService;

    @Autowired
    private ISysUserService sysUserService;

    /**
     * 查询线上培训列表
     */
    @PreAuthorize("@ss.hasPermi('system:training:list')")
    @GetMapping("/list")
    public TableDataInfo list(TbOnlineTraining tbOnlineTraining) {
        startPage();
        List<TbOnlineTraining> list = tbOnlineTrainingService.selectTbOnlineTrainingList(tbOnlineTraining);
        return getDataTable(list);
    }

    /**
     * 导出线上培训列表
     */
    @PreAuthorize("@ss.hasPermi('system:training:export')")
    @Log(title = "线上培训", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TbOnlineTraining tbOnlineTraining) {
        List<TbOnlineTraining> list = tbOnlineTrainingService.selectTbOnlineTrainingList(tbOnlineTraining);
        ExcelUtil<TbOnlineTraining> util = new ExcelUtil<TbOnlineTraining>(TbOnlineTraining.class);
        util.exportExcel(response, list, "线上培训数据");
    }

    /**
     * 获取线上培训详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:training:query')")
    @GetMapping(value = "/{newsId}")
    public AjaxResult getInfo(@PathVariable("newsId") Long newsId) {
        return success(tbOnlineTrainingService.selectTbOnlineTrainingByNewsId(newsId));
    }

    /**
     * 新增线上培训
     */
    @PreAuthorize("@ss.hasPermi('system:training:add')")
    @Log(title = "线上培训", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbOnlineTraining tbOnlineTraining) {
        Long userId = SecurityUtils.getUserId();
        Long deptId = SecurityUtils.getDeptId();
        String nickname = sysUserService.selectUserById(userId).getNickName();
        tbOnlineTraining.setCreateBy(nickname);
        tbOnlineTraining.setSort(deptId.toString());
        tbOnlineTraining.setReading((long) 0);
        tbOnlineTraining.setCollect((long) 0);
        tbOnlineTraining.setLikes((long) 0);

        String content = tbOnlineTraining.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbOnlineTraining.setContent(content);
        return toAjax(tbOnlineTrainingService.insertTbOnlineTraining(tbOnlineTraining));
    }

    /**
     * 修改线上培训
     */
    @PreAuthorize("@ss.hasPermi('system:training:edit')")
    @Log(title = "线上培训", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbOnlineTraining tbOnlineTraining) {
        String content = tbOnlineTraining.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbOnlineTraining.setContent(content);
        return toAjax(tbOnlineTrainingService.updateTbOnlineTraining(tbOnlineTraining));
    }

    /**
     * 删除线上培训
     */
    @PreAuthorize("@ss.hasPermi('system:training:remove')")
    @Log(title = "线上培训", businessType = BusinessType.DELETE)
    @DeleteMapping("/{newsIds}")
    public AjaxResult remove(@PathVariable Long[] newsIds) {
        return toAjax(tbOnlineTrainingService.deleteTbOnlineTrainingByNewsIds(newsIds));
    }

    /**
     * 获取已审核的培训
     *
     * @param firstColumn 是否审核
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @PreAuthorize("@ss.hasPermi('system:training:list:checked')")
    @GetMapping(value = "/getListByColumn/{firstColumn}")
    public AjaxResult getProductsByColumn(@PathVariable("firstColumn") String firstColumn) {
        return success(tbOnlineTrainingService.selectTbOnlineTrainingByColumn(firstColumn));
    }

    /**
     * 获取全部未审核的培训信息
     *
     * @param tbOnlineTraining 培训对象
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    @PreAuthorize("@ss.hasPermi('system:training:list:unchecked')")
    @GetMapping("/getFirstColumns")
    public TableDataInfo getRemark(TbOnlineTraining tbOnlineTraining) {
        startPage();
        List<TbOnlineTraining> list = tbOnlineTrainingService.selectTbOnlineTrainingFirstColumnsList(tbOnlineTraining);
        return getDataTable(list);
    }

    /**
     * 修改审核/未审核
     *
     * @param tbOnlineTraining 培训对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PreAuthorize("@ss.hasPermi('system:training:check')")
    @PutMapping("/check")
    public AjaxResult eidtFirstColumns(@RequestBody TbOnlineTraining tbOnlineTraining) {
        String content = tbOnlineTraining.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbOnlineTraining.setContent(content);
        return toAjax(tbOnlineTrainingService.updateTbOnlineTrainingFirstColumns(tbOnlineTraining));
    }


    /**
     * 阅读量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/updateReading")
    public AjaxResult updateReading(@RequestBody TbOnlineTraining tbOnlineTraining) {
        return toAjax(tbOnlineTrainingService.updateReading(tbOnlineTraining));
    }

    /**
     * 点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/addLikes")
    public AjaxResult addLikes(@RequestBody TbOnlineTraining tbOnlineTraining) {
        return toAjax(tbOnlineTrainingService.addLikes(tbOnlineTraining));
    }

    @PutMapping("/subLikes")
    public AjaxResult subLikes(@RequestBody TbOnlineTraining tbOnlineTraining) {
        return toAjax(tbOnlineTrainingService.subLikes(tbOnlineTraining));
    }

    /**
     * 收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @PutMapping("/addCollect")
    public AjaxResult addCollect(@RequestBody TbOnlineTraining tbOnlineTraining) {
        return toAjax(tbOnlineTrainingService.addCollect(tbOnlineTraining));
    }

    @PutMapping("/subCollect")
    public AjaxResult subCollect(@RequestBody TbOnlineTraining tbOnlineTraining) {
        return toAjax(tbOnlineTrainingService.subCollect(tbOnlineTraining));
    }

    /**
     * 获取模糊查询详细信息
     */
    @GetMapping(value = "/like/{query}")
    public AjaxResult getLikeInfo(@PathVariable("query") String query) {
        return success(tbOnlineTrainingService.selectTbOnlineTrainingByLike(query));
    }

    //通过id列表来查询
    @GetMapping("/get_online_training_idlist/{idlist}")
    public List<TbOnlineTraining> getNewsByIdList(@PathVariable("idlist")  Long[] idList)
    {
        List<TbOnlineTraining> list = tbOnlineTrainingService.selectTbOnlineTrainingByIdList(idList);
        return  list;
    }
}
