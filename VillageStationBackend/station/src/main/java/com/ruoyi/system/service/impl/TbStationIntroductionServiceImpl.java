package com.ruoyi.system.service.impl;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.system.domain.TbStationIntroduction;
import com.ruoyi.system.mapper.TbStationIntroductionMapper;
import com.ruoyi.system.service.ISysUserService;
import com.ruoyi.system.service.ITbStationIntroductionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 驿站介绍Service接口实现类
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2024/1/19 10:54
 **/
@Service
public class TbStationIntroductionServiceImpl implements ITbStationIntroductionService {
    @Autowired
    private TbStationIntroductionMapper stationIntroductionMapper;

    @Autowired
    private ISysUserService sysUserService;

    /**
     * 查询驿站介绍列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:18
     */
    @Override
    public List<TbStationIntroduction> selectTbStationIntroductionList() {
        return stationIntroductionMapper.selectTbStationIntroductionList();
    }


    /**
     * 查询驿站id为id的已审核的驿站介绍列表
     *
     * @param stationId 驿站id
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/18 18:09:10
     */
    @Override
    public List<TbStationIntroduction> selectTbStationIntroductionListByStationId(Long stationId) {
        return stationIntroductionMapper.selectTbStationIntroductionListByStationId(stationId);
    }



    /**
     * 查询已审核的驿站介绍列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:18
     */
    @Override
    public List<TbStationIntroduction> selectTbStationIntroductionAuditList() {
        return stationIntroductionMapper.selectTbStationIntroductionAuditList();
    }

    /**
     * 查询未审核驿站介绍列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:34
     */
    @Override
    public List<TbStationIntroduction> selectTbStationIntroductionUnauditedList() {
        return stationIntroductionMapper.selectTbStationIntroductionUnauditedList();
    }

    /**
     * 根据驿站id查询未审核驿站介绍列表
     * @param stationId 驿站id
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:34
     */
    @Override
    public List<TbStationIntroduction> selectTbStationIntroductionUnauditedListByStationId(Long stationId) {
        return stationIntroductionMapper.selectTbStationIntroductionUnauditedListByStationId(stationId);
    }


    /**
     * 根据id审核驿站介绍对象
     *
     * @param tbStationIntroduction 驿站介绍对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int updateTbStationIntroductionAudit(TbStationIntroduction tbStationIntroduction) {
        Long userId = SecurityUtils.getUserId();
        String nickname = sysUserService.selectUserById(userId).getNickName();
        tbStationIntroduction.setUpdateBy(nickname);
        tbStationIntroduction.setUpdateTime(DateUtils.getNowDate());

        String content = tbStationIntroduction.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbStationIntroduction.setContent(content);

        return stationIntroductionMapper.updateTbStationIntroductionAudit(tbStationIntroduction);
    }

    /**
     * 通过id获取驿站介绍详细信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @Override
    public TbStationIntroduction selectTbStationIntroductionById(Long id) {
        TbStationIntroduction tbStationIntroduction = stationIntroductionMapper.selectTbStationIntroductionById(id);
        String content = tbStationIntroduction.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbStationIntroduction.setContent(content);
        return tbStationIntroduction;
    }

    /**
     * 新增驿站介绍
     *
     * @param tbStationIntroduction 驿站介绍对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/9 15:35:17
     */
    @Override
    public int insertTbStationIntroduction(TbStationIntroduction tbStationIntroduction) {
        Long userId = SecurityUtils.getUserId();
        String nickname = sysUserService.selectUserById(userId).getNickName();
        tbStationIntroduction.setCreateBy(nickname);
        tbStationIntroduction.setCreateTime(DateUtils.getNowDate());
        tbStationIntroduction.setAudit("0");

        String content = tbStationIntroduction.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbStationIntroduction.setContent(content);

        return stationIntroductionMapper.insertTbStationIntroduction(tbStationIntroduction);
    }

    /**
     * 修改驿站介绍
     *
     * @param tbStationIntroduction 驿站介绍对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @Override
    public int updateStationIntroduction(TbStationIntroduction tbStationIntroduction) {
        Long userId = SecurityUtils.getUserId();
        String nickname = sysUserService.selectUserById(userId).getNickName();
        tbStationIntroduction.setUpdateBy(nickname);
        tbStationIntroduction.setUpdateTime(DateUtils.getNowDate());

        String content = tbStationIntroduction.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbStationIntroduction.setContent(content);
        return stationIntroductionMapper.updateStationIntroduction(tbStationIntroduction);
    }

    /**
     * 通过id删除驿站介绍
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:18:30
     */
    @Override
    public int deleteTbStationIntroductionByStationIntroductionId(Long id) {
        return stationIntroductionMapper.deleteTbStationIntroductionByStationIntroductionId(id);
    }

    /**
     * 通过id列表删除驿站介绍
     *
     * @param ids id列表
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/9 15:33:36
     */
    @Override
    public int deleteTbStationIntroductionByStationIntroductionIds(Long[] ids) {
        return stationIntroductionMapper.deleteTbStationIntroductionByStationIntroductionIds(ids);
    }



    /**
     * 模糊查询已审核数据
     *
     * @param query 查询内容
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 19:17:49
     */
    @Override
    public List<TbStationIntroduction> selectStationIntroductionByLike(String query) {
        return stationIntroductionMapper.selectStationIntroductionByLike(query);
    }

    /**
     * 通过id列表查询对应数据
     *
     * @param ids id列表
     * @return java.util.List<com.ruoyi.system.domain.TbOnlineTraining>
     * @author Alex McAvoy
     * @date 2023/10/18 19:21:47
     */
    @Override
    public List<TbStationIntroduction> selectStationIntroductionListByIds(Long[] ids) {
        return stationIntroductionMapper.selectStationIntroductionListByIds(ids);
    }
}
