package com.ruoyi.system.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.system.mapper.TbNewsMapper;
import com.ruoyi.system.service.ISysUserService;
import com.ruoyi.system.service.ITbNewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.domain.TbNews;


/**
 * 新闻Service业务层处理
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/11 11:27
 **/
@Service
public class TbNewsServiceImpl implements ITbNewsService {
    @Autowired
    private TbNewsMapper tbNewsMapper;

    @Autowired
    private ISysUserService sysUserService;

    /**
     * 查询新闻列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:18
     */
    @Override
    public List<TbNews> selectTbNewsList() {
        return tbNewsMapper.selectTbNewsList();
    }


    /**
     * 查询已审核的新闻列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:18
     */
    @Override
    public List<TbNews> selectTbNewsAuditList() {
        return tbNewsMapper.selectTbNewsAuditList();
    }

    /**
     * 查询未审核新闻列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:34
     */
    @Override
    public List<TbNews> selectTbNewsUnauditedList() {
        return tbNewsMapper.selectTbNewsUnauditedList();
    }

    /**
     * 获取已审核的分类新闻信息
     *
     * @param category 类型
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @Override
    public List<TbNews> selectTbNewsCategoryList(String category) {
        return tbNewsMapper.selectTbNewsCategoryList(category);
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
    public List<TbNews> selectTbNewsCategoryAndSortList(String category, Long[] sort) {
        return tbNewsMapper.selectTbNewsCategoryAndSortList(category,sort);
    }


    /**
     * 获取num条已审核的分类新闻信息
     * @param category 类型
     * @param num 获取数量
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2024/1/17 09:42:14
     */
    @Override
    public List<TbNews> selectTbNewsCategoryListLimit(String category, Long num) {
        return tbNewsMapper.selectTbNewsCategoryListLimit(category, num);
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
    public List<TbNews> selectTbNewsCategorySortListLimit(String category, Long num, Long[] sort) {
        return tbNewsMapper.selectTbNewsCategorySortListLimit(category, num,sort);
    }




    /**
     * 获取驿站id为sort的已审核的分类新闻信息
     *
     * @param category 分类
     * @param sort     驿站id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    @Override
    public List<TbNews> selectTbNewsCategorySortList(String category, String sort) {
        return tbNewsMapper.selectTbNewsCategorySortList(category, sort);
    }

    /**
     * 根据id审核新闻信息对象
     *
     * @param tbNews 新闻信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int updateTbNewsAudit(TbNews tbNews) {
        Long userId = SecurityUtils.getUserId();
        String nickname = sysUserService.selectUserById(userId).getNickName();
        tbNews.setUpdateBy(nickname);
        tbNews.setUpdateTime(DateUtils.getNowDate());

        String content = tbNews.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbNews.setContent(content);

        return tbNewsMapper.updateTbNewsAudit(tbNews);
    }

    /**
     * 通过id获取新闻详细信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @Override
    public TbNews selectTbNewsById(Long id) {
        TbNews tbNews = tbNewsMapper.selectTbNewsById(id);
        String content = tbNews.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbNews.setContent(content);
        return tbNews;
    }

    /**
     * 新增新闻
     *
     * @param tbNews 新闻信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/9 15:35:17
     */
    @Override
    public int insertTbNews(TbNews tbNews) {
        Long userId = SecurityUtils.getUserId();
        String nickname = sysUserService.selectUserById(userId).getNickName();
        tbNews.setCreateBy(nickname);
        tbNews.setCreateTime(DateUtils.getNowDate());
        tbNews.setAudit("0");
        tbNews.setReading((long) 0);
        tbNews.setCollect((long) 0);
        tbNews.setLikes((long) 0);

        String content = tbNews.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbNews.setContent(content);

        return tbNewsMapper.insertTbNews(tbNews);
    }

    /**
     * 修改新闻信息
     *
     * @param tbNews 新闻信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    @Override
    public int updateNews(TbNews tbNews) {
        Long userId = SecurityUtils.getUserId();
        String nickname = sysUserService.selectUserById(userId).getNickName();
        tbNews.setUpdateBy(nickname);
        tbNews.setUpdateTime(DateUtils.getNowDate());

        String content = tbNews.getContent();
        content = content.replace("&lt;", "<");
        content = content.replace("&gt;", ">");
        tbNews.setContent(content);
        return tbNewsMapper.updateNews(tbNews);
    }

    /**
     * 通过id删除新闻信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:18:30
     */
    @Override
    public int deleteTbNewsByNewsId(Long id) {
        return tbNewsMapper.deleteTbNewsByNewsId(id);
    }

    /**
     * 通过id列表删除新闻
     *
     * @param ids id列表
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/9 15:33:36
     */
    @Override
    public int deleteTbNewsByNewsIds(Long[] ids) {
        return tbNewsMapper.deleteTbNewsByNewsIds(ids);
    }

    /**
     * 根据id增加阅读量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int updateReading(TbNews tbNews) {
        return tbNewsMapper.updateReading(tbNews);
    }

    /**
     * 根据id增加点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int addLikes(TbNews tbNews) {
        return tbNewsMapper.addLikes(tbNews);
    }

    /**
     * 根据id减少点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int subLikes(TbNews tbNews) {
        return tbNewsMapper.subLikes(tbNews);
    }

    /**
     * 根据id增加收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int addCollect(TbNews tbNews) {
        return tbNewsMapper.addCollect(tbNews);
    }

    /**
     * 根据id减少收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    @Override
    public int subCollect(TbNews tbNews) {
        return tbNewsMapper.subCollect(tbNews);
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
    public List<TbNews> selectNewsByLike(String query) {
        return tbNewsMapper.selectNewsByLike(query);
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
    public List<TbNews> selectNewsListByIds(Long[] ids) {
        return tbNewsMapper.selectNewsListByIds(ids);
    }
}