package com.ruoyi.system.mapper;

import java.util.List;

import com.ruoyi.system.domain.TbNews;
import org.apache.ibatis.annotations.Param;

/**
 * 新闻Mapper接口
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/11 11:27
 **/
public interface TbNewsMapper {

    /**
     * 查询新闻列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:18
     */
    public List<TbNews> selectTbNewsList();

    /**
     * 查询已审核的新闻列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:18
     */
    public List<TbNews> selectTbNewsAuditList();

    /**
     * 查询未审核新闻列表
     *
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/9 15:32:34
     */
    public List<TbNews> selectTbNewsUnauditedList();

    /**
     * 获取已审核的分类新闻信息
     *
     * @param category 类型
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    public List<TbNews> selectTbNewsCategoryList(@Param("category") String category);

    /**
     * 获取已审核的分类、标签信息
     * @param category 类型
     * @param sort 标签列表
     * @return java.util.List<com.ruoyi.system.domain.TbNews>
     * @author Alex McAvoy
     * @date 2024/1/21 17:29:03
     */
    public List<TbNews> selectTbNewsCategoryAndSortList(@Param("category") String category, @Param("sort")Long [] sort);

    /**
     * 获取num条已审核的分类新闻信息
     * @param category 类型
     * @param num 获取数量
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2024/1/17 09:42:14
     */
    public List<TbNews> selectTbNewsCategoryListLimit(@Param("category") String category, @Param("num") Long num);

    /**
     * 获取num条已审核的分类、标签信息
     * @param category 类型
     * @param num 获取数量
     * @param sort 标签数组
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2024/1/17 09:42:14
     */
    public List<TbNews> selectTbNewsCategorySortListLimit(@Param("category") String category, @Param("num") Long num, @Param("sort")Long [] sort);

    /**
     * 获取驿站id为sort的已审核的分类金融新闻信息
     *
     * @param category 分类
     * @param sort     驿站id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 11:12:59
     */
    public List<TbNews> selectTbNewsCategorySortList(@Param("category") String category, @Param("sort") String sort);

    /**
     * 根据id审核新闻信息对象
     *
     * @param tbNews 新闻信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int updateTbNewsAudit(TbNews tbNews);

    /**
     * 通过id获取新闻详细信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    public TbNews selectTbNewsById(@Param("id") Long id);

    /**
     * 新增新闻
     *
     * @param tbNews 新闻信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/9 15:35:17
     */
    public int insertTbNews(TbNews tbNews);

    /**
     * 修改新闻信息
     *
     * @param tbNews 新闻信息对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:16:10
     */
    public int updateNews(TbNews tbNews);

    /**
     * 通过id删除新闻信息
     *
     * @param id id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 18:18:30
     */
    public int deleteTbNewsByNewsId(@Param("id") Long id);

    /**
     * 通过id列表删除新闻
     *
     * @param ids id列表
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/9 15:33:36
     */
    public int deleteTbNewsByNewsIds(@Param("ids") Long[] ids);

    /**
     * 根据id增加阅读量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int updateReading(TbNews tbNews);

    /**
     * 根据id增加点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int addLikes(TbNews tbNews);

    /**
     * 根据id减少点赞量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int subLikes(TbNews tbNews);

    /**
     * 根据id增加收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int addCollect(TbNews tbNews);

    /**
     * 根据id减少收藏量
     *
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/11 10:47:52
     */
    public int subCollect(TbNews tbNews);

    /**
     * 模糊查询已审核数据
     *
     * @param query 查询内容
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/18 19:17:49
     */
    public List<TbNews> selectNewsByLike(@Param("query")String query);

    /**
     * 通过id列表查询对应数据
     *
     * @param ids id列表
     * @return java.util.List<com.ruoyi.system.domain.TbOnlineTraining>
     * @author Alex McAvoy
     * @date 2023/10/18 19:21:47
     */
    public List<TbNews> selectNewsListByIds(@Param("ids") Long[] ids);
}
