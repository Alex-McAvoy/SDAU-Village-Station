package com.ruoyi.system.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.system.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbOfflineTrainingMapper;
import com.ruoyi.system.domain.TbOfflineTraining;
import com.ruoyi.system.service.ITbOfflineTrainingService;


/**
 * 线下培训Service业务层处理
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/11 11:27
 **/
@Service
public class TbOfflineTrainingServiceImpl implements ITbOfflineTrainingService {
    @Autowired
    private TbOfflineTrainingMapper tbOfflineTrainingMapper;

    @Autowired
    private ISysUserService sysUserService;

    /**
     * 查询线下培训列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/18 18:09:10
     */
    @Override
    public List<TbOfflineTraining> selectTbOfflineTrainingList() {
        return tbOfflineTrainingMapper.selectTbOfflineTrainingList();
    }

    /**
     * 查询已审核的线下培训列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/18 18:09:10
     */
    @Override
    public List<TbOfflineTraining> selectTbOfflineTrainingAuditList() {
        return tbOfflineTrainingMapper.selectTbOfflineTrainingAuditList();
    }

    /**
     * 查询未审核线下培训列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    @Override
    public List<TbOfflineTraining> selectTbOfflineTrainingUnauditedList() {
        return tbOfflineTrainingMapper.selectTbOfflineTrainingUnauditedList();
    }

    /**
     * 获取已审核的分类线下培训信息
     *
     * @param category 类型
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @Override
    public List<TbOfflineTraining> selectTbOfflineTrainingCategoryList(String category) {
        return tbOfflineTrainingMapper.selectTbOfflineTrainingCategoryList(category);
    }

    /**
     * 获取驿站id为sort的已审核的分类线下培训信息
     *
     * @param category 分类
     * @param sort     驿站id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @Override
    public List<TbOfflineTraining> selectTbOfflineTrainingCategorySortList(String category, String sort) {
        return tbOfflineTrainingMapper.selectTbOfflineTrainingCategorySortList(category, sort);
    }


    /**
     * 根据id审核线下培训对象
     *
     * @param tbOfflineTraining 线下培训对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int updateTbOfflineTrainingAudit(TbOfflineTraining tbOfflineTraining) {
        Long userId = SecurityUtils.getUserId();
        String nickname = sysUserService.selectUserById(userId).getNickName();
        tbOfflineTraining.setUpdateBy(nickname);
        tbOfflineTraining.setUpdateTime(DateUtils.getNowDate());

        String content = tbOfflineTraining.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbOfflineTraining.setContent(content);

        return tbOfflineTrainingMapper.updateTbOfflineTrainingAudit(tbOfflineTraining);
    }

    /**
     * 通过id获取线下培训详细信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @Override
    public TbOfflineTraining selectTbOfflineTrainingById(Long id) {
        return tbOfflineTrainingMapper.selectTbOfflineTrainingById(id);
    }

    /**
     * 新增线下培训信息
     *
     * @param tbOfflineTraining 线下培训信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @Override
    public int insertTbOfflineTraining(TbOfflineTraining tbOfflineTraining) {
//        Long deptId = SecurityUtils.getDeptId();
//        tbOfflineTraining.setSort(deptId.toString());

        Long userId = SecurityUtils.getUserId();
        String nickname = sysUserService.selectUserById(userId).getNickName();
        tbOfflineTraining.setCreateBy(nickname);
        tbOfflineTraining.setCreateTime(DateUtils.getNowDate());
        tbOfflineTraining.setAudit("0");
        tbOfflineTraining.setReading((long) 0);
        tbOfflineTraining.setCollect((long) 0);
        tbOfflineTraining.setLikes((long) 0);

        String content = tbOfflineTraining.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbOfflineTraining.setContent(content);
        return tbOfflineTrainingMapper.insertTbOfflineTraining(tbOfflineTraining);
    }

    /**
     * 修改线下培训信息
     *
     * @param tbOfflineTraining 线下培训信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @Override
    public int updateTbOfflineTraining(TbOfflineTraining tbOfflineTraining) {
        Long userId = SecurityUtils.getUserId();
        String nickname = sysUserService.selectUserById(userId).getNickName();
        tbOfflineTraining.setUpdateBy(nickname);
        tbOfflineTraining.setUpdateTime(DateUtils.getNowDate());

        String content = tbOfflineTraining.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbOfflineTraining.setContent(content);
        return tbOfflineTrainingMapper.updateTbOfflineTraining(tbOfflineTraining);
    }

    /**
     * 通过id删除线下培训信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:18:30
     */
    @Override
    public int deleteTbOfflineTrainingById(Long id) {
        return tbOfflineTrainingMapper.deleteTbOfflineTrainingById(id);
    }

    /**
     * 通过id列表删除线下培训信息
     *
     * @param ids id列表
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:18:30
     */
    @Override
    public int deleteTbOfflineTrainingByIds(Long[] ids) {
        return tbOfflineTrainingMapper.deleteTbOfflineTrainingByIds(ids);
    }

    /**
     * 根据id增加阅读量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int updateReading(TbOfflineTraining tbOfflineTraining) {
        return tbOfflineTrainingMapper.updateReading(tbOfflineTraining);
    }

    /**
     * 根据id增加点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int addLikes(TbOfflineTraining tbOfflineTraining) {
        return tbOfflineTrainingMapper.addLikes(tbOfflineTraining);
    }

    /**
     * 根据id减少点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int subLikes(TbOfflineTraining tbOfflineTraining) {
        return tbOfflineTrainingMapper.subLikes(tbOfflineTraining);
    }

    /**
     * 根据id增加收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int addCollect(TbOfflineTraining tbOfflineTraining) {
        return tbOfflineTrainingMapper.addCollect(tbOfflineTraining);
    }

    /**
     * 根据id减少收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int subCollect(TbOfflineTraining tbOfflineTraining) {
        return tbOfflineTrainingMapper.subCollect(tbOfflineTraining);
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
    public List<TbOfflineTraining> selectTbOfflineTrainingByLike(String query) {
        return tbOfflineTrainingMapper.selectTbOfflineTrainingByLike(query);
    }

    /**
     * 通过id列表查询对应数据
     *
     * @param ids id列表
     * @return java.util.List<com.ruoyi.system.domain.TbOfflineTraining>
     * @author Alex McAvoy
     * @date 2023/10/18 19:21:47
     */
    @Override
    public List<TbOfflineTraining> selectTbOfflineTrainingListByIds(Long[] ids) {
        return tbOfflineTrainingMapper.selectTbOfflineTrainingListByIds(ids);
    }

}
