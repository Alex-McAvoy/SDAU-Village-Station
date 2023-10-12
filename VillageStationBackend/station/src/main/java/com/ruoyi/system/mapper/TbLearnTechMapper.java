package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TbLearnTech;
import org.apache.ibatis.annotations.Param;

/**
 * 学农技Mapper接口
 * 
 * @author ruoyi
 * @date 2023-10-05
 */
public interface TbLearnTechMapper 
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
     * 删除学农技
     * 
     * @param articleId 学农技主键
     * @return 结果
     */
    public int deleteTbLearnTechByArticleId(Long articleId);

    /**
     * 批量删除学农技
     * 
     * @param articleIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbLearnTechByArticleIds(Long[] articleIds);

    public List<TbLearnTech> selectTbLearnTechByColumn(@Param("firstColumn")String firstColumn, @Param("secondColumn")String secondColumn);

    public List<TbLearnTech> selectTbLearnTechFirstColumnsList(TbLearnTech tbLearnTech);

    public int updateTbLearnTechFirstColumns(TbLearnTech tbLearnTech);

    public int updateReading(TbLearnTech tbLearnTech);

    public int addLikes(TbLearnTech tbLearnTech);

    public int subLikes(TbLearnTech tbLearnTech);

    public int addCollect(TbLearnTech tbLearnTech);

    public int subCollect(TbLearnTech tbLearnTech);
}
