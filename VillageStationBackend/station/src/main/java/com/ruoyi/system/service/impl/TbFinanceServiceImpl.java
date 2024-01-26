package com.ruoyi.system.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.system.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbFinanceMapper;
import com.ruoyi.system.domain.TbFinance;
import com.ruoyi.system.service.ITbFinanceService;

/**
 * 金融Service业务层处理
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/11 11:27
 **/
@Service
public class TbFinanceServiceImpl implements ITbFinanceService {
    @Autowired
    private TbFinanceMapper tbFinanceMapper;

    @Autowired
    private ISysUserService sysUserService;

    /**
     * 查询金融列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    @Override
    public List<TbFinance> selectTbFinanceList() {
        return tbFinanceMapper.selectTbFinanceList();
    }

    /**
     * 查询已审核的金融列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    @Override
    public List<TbFinance> selectTbFinanceAuditList() {
        return tbFinanceMapper.selectTbFinanceAuditList();
    }

    /**
     * 查询未审核金融列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    @Override
    public List<TbFinance> selectTbFinanceUnauditedList() {
        return tbFinanceMapper.selectTbFinanceUnauditedList();
    }

    /**
     * 获取已审核的分类金融信息
     *
     * @param category 类型
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @Override
    public List<TbFinance> selectTbFinanceCategoryList(String category) {
        return tbFinanceMapper.selectTbFinanceCategoryList(category);
    }

    /**
     * 获取已审核的分类、标签信息
     * @param category 类型
     * @param sort 标签列表
     * @return java.util.List<com.ruoyi.system.domain.TbNews>
     * @author Alex McAvoy
     * @date 2024/1/21 17:29:03
     */
    @Override
    public List<TbFinance> selectTbFinanceCategoryAndSortList(String category,Long[] sort) {
        return tbFinanceMapper.selectTbFinanceCategoryAndSortList(category,sort);
    }

    /**
     * 获取num条已审核的分类金融信息
     * @param category 类型
     * @param num 获取数量
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2024/1/17 09:42:14
     */
    @Override
    public List<TbFinance> selectTbFinanceCategoryListLimit(String category, Long num) {
        return tbFinanceMapper.selectTbFinanceCategoryListLimit(category, num);
    }

    /**
     * 获取num条已审核的分类、标签信息
     * @param category 类型
     * @param num 获取数量
     * @param sort 标签数组
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2024/1/17 09:42:14
     */
    @Override
    public List<TbFinance> selectTbFinanceCategorySortListLimit(String category, Long num,Long[]sort) {
        return tbFinanceMapper.selectTbFinanceCategorySortListLimit(category, num,sort);
    }

    /**
     * 获取驿站id为sort的已审核的分类金融信息
     *
     * @param category 分类
     * @param sort     驿站id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @Override
    public List<TbFinance> selectTbFinanceCategorySortList(String category, String sort) {
        return tbFinanceMapper.selectTbFinanceCategorySortList(category, sort);
    }

    /**
     * 根据id审核金融信息对象
     *
     * @param tbFinance 金融信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int updateTbFinanceAudit(TbFinance tbFinance) {
        Long userId = SecurityUtils.getUserId();
        String nickname = sysUserService.selectUserById(userId).getNickName();
        tbFinance.setUpdateBy(nickname);
        tbFinance.setUpdateTime(DateUtils.getNowDate());

        String content = tbFinance.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbFinance.setContent(content);

        return tbFinanceMapper.updateTbFinanceAudit(tbFinance);
    }

    /**
     * 通过id获取金融详细信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @Override
    public TbFinance selectTbFinanceById(Long id) {
        return tbFinanceMapper.selectTbFinanceById(id);
    }

    /**
     * 新增金融信息
     *
     * @param tbFinance 金融信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @Override
    public int insertTbFinance(TbFinance tbFinance) {
//        Long deptId = SecurityUtils.getDeptId();
//        tbFinance.setSort(deptId.toString());

        Long userId = SecurityUtils.getUserId();
        String nickname = sysUserService.selectUserById(userId).getNickName();
        tbFinance.setCreateBy(nickname);
        tbFinance.setCreateTime(DateUtils.getNowDate());
        tbFinance.setAudit("0");
        tbFinance.setReading((long) 0);
        tbFinance.setCollect((long) 0);
        tbFinance.setLikes((long) 0);

        String content = tbFinance.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbFinance.setContent(content);

        return tbFinanceMapper.insertTbFinance(tbFinance);
    }

    /**
     * 修改金融信息
     *
     * @param tbFinance 金融信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @Override
    public int updateTbFinance(TbFinance tbFinance) {
        Long userId = SecurityUtils.getUserId();
        String nickname = sysUserService.selectUserById(userId).getNickName();
        tbFinance.setUpdateBy(nickname);
        tbFinance.setUpdateTime(DateUtils.getNowDate());

        String content = tbFinance.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbFinance.setContent(content);
        return tbFinanceMapper.updateTbFinance(tbFinance);
    }

    /**
     * 通过id删除金融信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:18:30
     */
    @Override
    public int deleteTbFinanceById(Long id) {
        return tbFinanceMapper.deleteTbFinanceById(id);
    }

    /**
     * 通过id列表删除金融信息
     *
     * @param ids id列表
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:18:30
     */
    @Override
    public int deleteTbFinanceByIds(Long[] ids) {
        return tbFinanceMapper.deleteTbFinanceByIds(ids);
    }

    /**
     * 根据id增加阅读量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int updateReading(TbFinance tbFinance) {
        return tbFinanceMapper.updateReading(tbFinance);
    }

    /**
     * 根据id增加点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int addLikes(TbFinance tbFinance) {
        return tbFinanceMapper.addLikes(tbFinance);
    }

    /**
     * 根据id减少点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int subLikes(TbFinance tbFinance) {
        return tbFinanceMapper.subLikes(tbFinance);
    }

    /**
     * 根据id增加收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int addCollect(TbFinance tbFinance) {
        return tbFinanceMapper.addCollect(tbFinance);
    }

    /**
     * 根据id减少收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int subCollect(TbFinance tbFinance) {
        return tbFinanceMapper.subCollect(tbFinance);
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
    public List<TbFinance> selectTbFinanceByLike(String query) {
        return tbFinanceMapper.selectTbFinanceByLike(query);
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
    public List<TbFinance> selectTbFinanceListByIds(Long[] ids) {
        return tbFinanceMapper.selectTbFinanceListByIds(ids);
    }
}