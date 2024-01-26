package com.ruoyi.system.service.impl;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.system.domain.TbStationInformation;
import com.ruoyi.system.mapper.TbStationInformationMapper;
import com.ruoyi.system.service.ISysUserService;
import com.ruoyi.system.service.ITbStationInformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 驿站信息Service接口实现类
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2024/1/17 15:23
 **/
@Service
public class TbStationInformationServiceImpl implements ITbStationInformationService {
    @Autowired
    private TbStationInformationMapper tbStationInformationMapper;

    @Autowired
    private ISysUserService sysUserService;

    /**
     * 查询驿站信息列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:18
     */
    @Override
    public List<TbStationInformation> selectTbStationInformationList() {
        return tbStationInformationMapper.selectTbStationInformationList();
    }


    /**
     * 查询驿站id为id的已审核的驿站信息列表
     *
     * @param stationId 驿站id
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/18 18:09:10
     */
    @Override
    public List<TbStationInformation> selectTbStationInformationListByStationId(Long stationId) {
        return tbStationInformationMapper.selectTbStationInformationListByStationId(stationId);
    }



    /**
     * 查询已审核的驿站信息列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:18
     */
    @Override
    public List<TbStationInformation> selectTbStationInformationAuditList() {
        return tbStationInformationMapper.selectTbStationInformationAuditList();
    }

    /**
     * 查询未审核驿站信息列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:34
     */
    @Override
    public List<TbStationInformation> selectTbStationInformationUnauditedList() {
        return tbStationInformationMapper.selectTbStationInformationUnauditedList();
    }
    /**
     * 根据驿站id查询未审核驿站信息列表
     *
     * @param stationId 驿站id
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:34
     */
    @Override
    public List<TbStationInformation> selectTbStationInformationUnauditedListByStationId(Long stationId) {
        return tbStationInformationMapper.selectTbStationInformationUnauditedListByStationId(stationId);
    }

    /**
     * 获取已审核的分类驿站信息
     *
     * @param category 类型
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @Override
    public List<TbStationInformation> selectTbStationInformationCategoryList(String category) {
        return tbStationInformationMapper.selectTbStationInformationCategoryList(category);
    }

    /**
     * 获取num条已审核的分类驿站信息
     * @param category 类型
     * @param num 获取数量
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2024/1/17 09:42:14
     */
    @Override
    public List<TbStationInformation> selectTbStationInformationCategoryListLimit(String category, Long num) {
        return tbStationInformationMapper.selectTbStationInformationCategoryListLimit(category, num);
    }

    /**
     * 获取驿站id为sort的已审核的分类驿站信息
     *
     * @param category 分类
     * @param sort     驿站id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @Override
    public List<TbStationInformation> selectTbStationInformationCategorySortList(String category, String sort) {
        return tbStationInformationMapper.selectTbStationInformationCategorySortList(category, sort);
    }

    /***
     * 获取num条驿站号为sort的已审核的分类驿站信息
     * @param category 分类
     * @param num      数据条数
     * @param sort     驿站id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2024/1/17 18:05:31
     */
    @Override
    public List<TbStationInformation> selectTbStationInformationCategorySortListLimit(String category, Long num, String sort) {
        return tbStationInformationMapper.selectTbStationInformationCategorySortListLimit(category, num, sort);
    }

    /**
     * 根据id审核驿站信息对象
     *
     * @param tbStationInformation 驿站信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int updateTbStationInformationAudit(TbStationInformation tbStationInformation) {
        Long userId = SecurityUtils.getUserId();
        String nickname = sysUserService.selectUserById(userId).getNickName();
        tbStationInformation.setUpdateBy(nickname);
        tbStationInformation.setUpdateTime(DateUtils.getNowDate());

        String content = tbStationInformation.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbStationInformation.setContent(content);

        return tbStationInformationMapper.updateTbStationInformationAudit(tbStationInformation);
    }

    /**
     * 通过id获取驿站信息详细信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @Override
    public TbStationInformation selectTbStationInformationById(Long id) {
        TbStationInformation tbStationInformation = tbStationInformationMapper.selectTbStationInformationById(id);
        String content = tbStationInformation.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbStationInformation.setContent(content);
        return tbStationInformation;
    }

    /**
     * 新增驿站信息
     *
     * @param tbStationInformation 驿站信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/9 15:35:17
     */
    @Override
    public int insertTbStationInformation(TbStationInformation tbStationInformation) {
        Long userId = SecurityUtils.getUserId();
        String nickname = sysUserService.selectUserById(userId).getNickName();
        tbStationInformation.setCreateBy(nickname);
        tbStationInformation.setCreateTime(DateUtils.getNowDate());
        tbStationInformation.setAudit("0");
        tbStationInformation.setReading((long) 0);
        tbStationInformation.setCollect((long) 0);
        tbStationInformation.setLikes((long) 0);

        String content = tbStationInformation.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbStationInformation.setContent(content);

        return tbStationInformationMapper.insertTbStationInformation(tbStationInformation);
    }

    /**
     * 修改驿站信息
     *
     * @param tbStationInformation 驿站信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @Override
    public int updateStationInformation(TbStationInformation tbStationInformation) {
        Long userId = SecurityUtils.getUserId();
        String nickname = sysUserService.selectUserById(userId).getNickName();
        tbStationInformation.setUpdateBy(nickname);
        tbStationInformation.setUpdateTime(DateUtils.getNowDate());

        String content = tbStationInformation.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbStationInformation.setContent(content);
        return tbStationInformationMapper.updateStationInformation(tbStationInformation);
    }

    /**
     * 通过id删除驿站信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:18:30
     */
    @Override
    public int deleteTbStationInformationByStationInformationId(Long id) {
        return tbStationInformationMapper.deleteTbStationInformationByStationInformationId(id);
    }

    /**
     * 通过id列表删除驿站信息
     *
     * @param ids id列表
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/9 15:33:36
     */
    @Override
    public int deleteTbStationInformationByStationInformationIds(Long[] ids) {
        return tbStationInformationMapper.deleteTbStationInformationByStationInformationIds(ids);
    }

    /**
     * 根据id增加阅读量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int updateReading(TbStationInformation tbStationInformation) {
        return tbStationInformationMapper.updateReading(tbStationInformation);
    }

    /**
     * 根据id增加点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int addLikes(TbStationInformation tbStationInformation) {
        return tbStationInformationMapper.addLikes(tbStationInformation);
    }

    /**
     * 根据id减少点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int subLikes(TbStationInformation tbStationInformation) {
        return tbStationInformationMapper.subLikes(tbStationInformation);
    }

    /**
     * 根据id增加收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int addCollect(TbStationInformation tbStationInformation) {
        return tbStationInformationMapper.addCollect(tbStationInformation);
    }

    /**
     * 根据id减少收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int subCollect(TbStationInformation tbStationInformation) {
        return tbStationInformationMapper.subCollect(tbStationInformation);
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
    public List<TbStationInformation> selectStationInformationByLike(String query) {
        return tbStationInformationMapper.selectStationInformationByLike(query);
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
    public List<TbStationInformation> selectStationInformationListByIds(Long[] ids) {
        return tbStationInformationMapper.selectStationInformationListByIds(ids);
    }
}
