package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TbLearnTech;

/**
 * 学农技Service接口
 * 
 * @author ruoyi
 * @date 2023-10-05
 */
public interface ITbLearnTechService 
{
    /**
     * 查询学农技
     * 
     * @param articleId 学农技主键
     * @return 学农技
     */
    public TbLearnTech selectTbLearnTechByArticleId(Long articleId);

    /**
     * 查询学农技列表
     * 
     * @param tbLearnTech 学农技
     * @return 学农技集合
     */
    public List<TbLearnTech> selectTbLearnTechList(TbLearnTech tbLearnTech);

    /**
     * 新增学农技
     * 
     * @param tbLearnTech 学农技
     * @return 结果
     */
    public int insertTbLearnTech(TbLearnTech tbLearnTech);

    /**
     * 修改学农技
     * 
     * @param tbLearnTech 学农技
     * @return 结果
     */
    public int updateTbLearnTech(TbLearnTech tbLearnTech);

    /**
     * 批量删除学农技
     * 
     * @param articleIds 需要删除的学农技主键集合
     * @return 结果
     */
    public int deleteTbLearnTechByArticleIds(Long[] articleIds);

    /**
     * 删除学农技信息
     * 
     * @param articleId 学农技主键
     * @return 结果
     */
    public int deleteTbLearnTechByArticleId(Long articleId);

    public List<TbLearnTech> selectTbLearnTechByColumn(String firstColumn, String secondColumn);

    public List<TbLearnTech> selectTbLearnTechBySort(String firstColumn, String secondColumn,String sort);

    List<TbLearnTech> selectTbLearnTechFirstColumnsList(TbLearnTech tbLearnTech);

    public int updateTbLearnTechFirstColumns(TbLearnTech tbLearnTech);

    public int updateReading(TbLearnTech tbLearnTech);

    public int addLikes(TbLearnTech tbLearnTech);

    public int subLikes(TbLearnTech tbLearnTech);

    public int addCollect(TbLearnTech tbLearnTech);

    public int subCollect(TbLearnTech tbLearnTech);

    public List<TbLearnTech> selectTbLearnTechByLike(String query);

    //通过id列表来查询
    List<TbLearnTech> selectTbLearnTechByIdList(Long[] idList);
}