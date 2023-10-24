package com.ruoyi.system.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.system.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbOnlineTrainingMapper;
import com.ruoyi.system.domain.TbOnlineTraining;
import com.ruoyi.system.service.ITbOnlineTrainingService;


/**
 * 线上培训Service业务层处理
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/11 11:27
 **/
@Service
public class TbOnlineTrainingServiceImpl implements ITbOnlineTrainingService {
    @Autowired
    private TbOnlineTrainingMapper tbOnlineTrainingMapper;

    @Autowired
    private ISysUserService sysUserService;

    /**
     * 查询线上培训列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/18 18:09:10
     */
    @Override
    public List<TbOnlineTraining> selectTbOnlineTrainingList() {
        return tbOnlineTrainingMapper.selectTbOnlineTrainingList();
    }

    /**
     * 查询已审核的线上培训列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/18 18:09:10
     */
    @Override
    public List<TbOnlineTraining> selectTbOnlineTrainingAuditList() {
        return tbOnlineTrainingMapper.selectTbOnlineTrainingAuditList();
    }

    /**
     * 查询未审核线上培训列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    @Override
    public List<TbOnlineTraining> selectTbOnlineTrainingUnauditedList() {
        return tbOnlineTrainingMapper.selectTbOnlineTrainingUnauditedList();
    }

    /**
     * 获取已审核的分类线上培训信息
     *
     * @param category 类型
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @Override
    public List<TbOnlineTraining> selectTbOnlineTrainingCategoryList(String category) {
        return tbOnlineTrainingMapper.selectTbOnlineTrainingCategoryList(category);
    }

    /**
     * 获取驿站id为sort的已审核的分类线上培训信息
     *
     * @param category 分类
     * @param sort     驿站id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @Override
    public List<TbOnlineTraining> selectTbOnlineTrainingCategorySortList(String category, String sort) {
        return tbOnlineTrainingMapper.selectTbOnlineTrainingCategorySortList(category, sort);
    }


    /**
     * 根据id审核线上培训对象
     *
     * @param tbOnlineTraining 线上培训对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int updateTbOnlineTrainingAudit(TbOnlineTraining tbOnlineTraining) {
        Long userId = SecurityUtils.getUserId();
        String nickname = sysUserService.selectUserById(userId).getNickName();
        tbOnlineTraining.setUpdateBy(nickname);
        tbOnlineTraining.setUpdateTime(DateUtils.getNowDate());

        String content = tbOnlineTraining.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbOnlineTraining.setContent(content);

        return tbOnlineTrainingMapper.updateTbOnlineTrainingAudit(tbOnlineTraining);
    }

    /**
     * 通过id获取线上培训详细信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @Override
    public TbOnlineTraining selectTbOnlineTrainingById(Long id) {
        return tbOnlineTrainingMapper.selectTbOnlineTrainingById(id);
    }

    /**
     * 新增线上培训信息
     *
     * @param tbOnlineTraining 线上培训信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @Override
    public int insertTbOnlineTraining(TbOnlineTraining tbOnlineTraining) {
//        Long deptId = SecurityUtils.getDeptId();
//        tbOnlineTraining.setSort(deptId.toString());

        Long userId = SecurityUtils.getUserId();
        String nickname = sysUserService.selectUserById(userId).getNickName();
        tbOnlineTraining.setCreateBy(nickname);
        tbOnlineTraining.setCreateTime(DateUtils.getNowDate());
        tbOnlineTraining.setAudit("0");
        tbOnlineTraining.setReading((long) 0);
        tbOnlineTraining.setCollect((long) 0);
        tbOnlineTraining.setLikes((long) 0);

        String content = tbOnlineTraining.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbOnlineTraining.setContent(content);
        return tbOnlineTrainingMapper.insertTbOnlineTraining(tbOnlineTraining);
    }

    /**
     * 修改线上培训信息
     *
     * @param tbOnlineTraining 线上培训信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @Override
    public int updateTbOnlineTraining(TbOnlineTraining tbOnlineTraining) {
        Long userId = SecurityUtils.getUserId();
        String nickname = sysUserService.selectUserById(userId).getNickName();
        tbOnlineTraining.setUpdateBy(nickname);
        tbOnlineTraining.setUpdateTime(DateUtils.getNowDate());

        String content = tbOnlineTraining.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbOnlineTraining.setContent(content);
        return tbOnlineTrainingMapper.updateTbOnlineTraining(tbOnlineTraining);
    }

    /**
     * 通过id删除线上培训信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:18:30
     */
    @Override
    public int deleteTbOnlineTrainingById(Long id) {
        return tbOnlineTrainingMapper.deleteTbOnlineTrainingById(id);
    }

    /**
     * 通过id列表删除线上培训信息
     *
     * @param ids id列表
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:18:30
     */
    @Override
    public int deleteTbOnlineTrainingByIds(Long[] ids) {
        return tbOnlineTrainingMapper.deleteTbOnlineTrainingByIds(ids);
    }

    /**
     * 根据id增加阅读量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int updateReading(TbOnlineTraining tbOnlineTraining) {
        return tbOnlineTrainingMapper.updateReading(tbOnlineTraining);
    }

    /**
     * 根据id增加点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int addLikes(TbOnlineTraining tbOnlineTraining) {
        return tbOnlineTrainingMapper.addLikes(tbOnlineTraining);
    }

    /**
     * 根据id减少点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int subLikes(TbOnlineTraining tbOnlineTraining) {
        return tbOnlineTrainingMapper.subLikes(tbOnlineTraining);
    }

    /**
     * 根据id增加收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int addCollect(TbOnlineTraining tbOnlineTraining) {
        return tbOnlineTrainingMapper.addCollect(tbOnlineTraining);
    }

    /**
     * 根据id减少收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int subCollect(TbOnlineTraining tbOnlineTraining) {
        return tbOnlineTrainingMapper.subCollect(tbOnlineTraining);
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
    public List<TbOnlineTraining> selectTbOnlineTrainingByLike(String query) {
        return tbOnlineTrainingMapper.selectTbOnlineTrainingByLike(query);
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
    public List<TbOnlineTraining> selectTbOnlineTrainingListByIds(Long[] ids) {
        return tbOnlineTrainingMapper.selectTbOnlineTrainingListByIds(ids);
    }

}
