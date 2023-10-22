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
import com.ruoyi.system.domain.TbUserStation;
import com.ruoyi.system.service.ITbUserStationService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;
/**
 * 用户-驿站Controller
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/14 21:27
 **/
@RestController
@RequestMapping("/system/user_station")
public class TbUserStationController extends BaseController
{
    @Autowired
    private ITbUserStationService tbUserStationService;

    /**
     * 新增用户-驿站信息
     * @param tbUserStation 用户-驿站对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 17:39:33
     */
    @Log(title = "用户-驿站", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbUserStation tbUserStation)
    {
        return toAjax(tbUserStationService.insertTbUserStation(tbUserStation));
    }

    /**
     * 通过用户id，修改用户-驿站信息
     * @param tbUserStation 用户-驿站对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 17:40:00
     */
    @Log(title = "用户-驿站", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbUserStation tbUserStation)
    {
        TbUserStation temp = tbUserStationService.selectTbUserStationByUserId(tbUserStation.getUserId());
        temp.setStationId(tbUserStation.getStationId());
        return toAjax(tbUserStationService.updateTbUserStation(temp));
    }

    /**
     * 通过用户id，获取用户-驿站信息
     * @param userId 用户id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 17:40:00
     */
    @GetMapping(value = "/{userId}")
    public AjaxResult getInfo(@PathVariable("userId") Long userId)
    {
        TbUserStation userStation = tbUserStationService.selectTbUserStationByUserId(userId);
        return success(userStation);
    }
}
