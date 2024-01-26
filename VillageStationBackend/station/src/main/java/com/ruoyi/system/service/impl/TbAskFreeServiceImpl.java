package com.ruoyi.system.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.system.service.ISysUserService;
import com.ruoyi.system.service.ITbUserStationService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbAskFreeMapper;
import com.ruoyi.system.domain.TbAskFree;
import com.ruoyi.system.service.ITbAskFreeService;

/**
 * 随时问Service业务层处理
 *
 * @author ruoyi
 * @date 2023-10-03
 */
@Service
public class TbAskFreeServiceImpl implements ITbAskFreeService {
    @Autowired
    private TbAskFreeMapper tbAskFreeMapper;

    @Autowired
    private ISysUserService sysUserService;

    @Autowired
    private ITbUserStationService userStationService;

    /**
     * 获取随时问问题、评论
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @Override
    public List<TbAskFree> selectTbAskFreeList() {
        return tbAskFreeMapper.selectTbAskFreeList();
    }

    /**
     * 获取已审核的随时问问题、评论
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @Override
    public List<TbAskFree> selectTbAskFreeAuditList() {
        return tbAskFreeMapper.selectTbAskFreeAuditList();
    }

    /**
     * 获取未审核的随时问问题、评论
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/11 10:45:54
     */
    @Override
    public List<TbAskFree> selectTbAskFreeUnauditedList() {
        return tbAskFreeMapper.selectTbAskFreeUnauditedList();
    }

    /**
     * 获取驿站id为sort的已审核的随时问问题列表
     *
     * @param sort 驿站id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @Override
    public List<TbAskFree> selectTbAskFreeQuestionList(String sort) {
        return tbAskFreeMapper.selectTbAskFreeQuestionList(sort);
    }

    /**
     * 获取num条驿站id为sort的已审核的随时问问题列表
     * @param sort 驿站id
     * @param num  条数
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2024/1/18 14:37:54
     */
    @Override
    public List<TbAskFree> selectTbAskFreeQuestionListLimit(String sort, Long num) {
        return tbAskFreeMapper.selectTbAskFreeQuestionListLimit(sort, num);
    }

    /**
     * 按时间降序获取已审核的随时问num个问题
     * @param num 问题个数
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2024/1/14 15:02:39
     */
    @Override
    public List<TbAskFree> selectTbAskFreeRandomQuestionList(Long num) {
        return tbAskFreeMapper.selectTbAskFreeRandomQuestionList(num);
    }

    /**
     * 根据用户id获取用户的问题列表
     * @param userId 用户id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2024/1/14 16:42:21
     */
    @Override
    public List<TbAskFree> selectTbAskFreeQuestionListByUserId(Long userId) {
        // 获取用户id对应的问题/评论列表
        List<TbAskFree> questionListGroup = tbAskFreeMapper.selectTbAskFreeQuestionListByUserId(userId);
        // 结果列表
        List<TbAskFree> questionList = new ArrayList<TbAskFree>();
        // 枚举用户id对应的问题/评论列表
        for (TbAskFree tbAskFree: questionListGroup) {
            // 该问题/评论的父id
            Long parentId = tbAskFree.getParentId();
            // 如果父id不为空，说明为评论
            if (parentId != null) {
                // 寻找其对应的问题并添加进结果列表
                questionList.add(tbAskFreeMapper.selectTbAskFreeById(parentId));
            } else {
                // 若为问题，直接添加进结果列表
                questionList.add(tbAskFree);
            }
        }
        return questionList;
    }


    /**
     * 获取父id对应的已审核的评论
     *
     * @param parentId 父id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @Override
    public List<TbAskFree> selectTbAskFreeReviewByParentId(Long parentId) {
        return tbAskFreeMapper.selectTbAskFreeReviewByParentId(parentId);
    }

    /**
     * 通过id获取随时问详情
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @Override
    public TbAskFree selectTbAskFreeById(@Param("id") Long id) {
        return tbAskFreeMapper.selectTbAskFreeById(id);
    }

    /**
     * 根据id审核随时问
     *
     * @param tbAskFree 随时问对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int updateTbAskFreeAudit(TbAskFree tbAskFree) {
        Long userId = SecurityUtils.getUserId();
        String nickname = sysUserService.selectUserById(userId).getNickName();
        tbAskFree.setUpdateBy(nickname);
        tbAskFree.setUpdateTime(DateUtils.getNowDate());

        String content = tbAskFree.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbAskFree.setContent(content);
        return tbAskFreeMapper.updateTbAskFreeAudit(tbAskFree);
    }

    /**
     * 新增随时问
     * @param tbAskFree 随时问对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/19 20:36:30
     */
    @Override
    public int insertTbAskFree(TbAskFree tbAskFree) {
        Long userId = SecurityUtils.getUserId();
        String nickname = sysUserService.selectUserById(userId).getNickName();
        tbAskFree.setCreateBy(nickname);
        tbAskFree.setCreateTime(DateUtils.getNowDate());
        tbAskFree.setAudit("0");

        Long stationId = userStationService.selectTbUserStationByUserId(userId).getStationId();
        tbAskFree.setSort(stationId.toString());

        String content = tbAskFree.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbAskFree.setContent(content);
        return tbAskFreeMapper.insertTbAskFree(tbAskFree);
    }

    /**
     * 通过id删除随时问
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:18:30
     */
    @Override
    public int deleteTbAskFreeById(Long id) {
        return tbAskFreeMapper.deleteTbAskFreeById(id);
    }

    /**
     * 通过id列表删除随时问
     *
     * @param ids id列表
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:18:30
     */
    @Override
    public int deleteTbAskFreeByIds(Long[] ids) {
        return tbAskFreeMapper.deleteTbAskFreeByIds(ids);
    }

}
