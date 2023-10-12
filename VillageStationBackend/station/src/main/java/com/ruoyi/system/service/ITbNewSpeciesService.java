package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TbNewSpecies;

/**
 * 新品种Service接口
 * 
 * @author ruoyi
 * @date 2023-10-05
 */
public interface ITbNewSpeciesService 
{
    /**
     * 查询新品种
     * 
     * @param newsId 新品种主键
     * @return 新品种
     */
    public TbNewSpecies selectTbNewSpeciesByNewsId(Long newsId);

    /**
     * 查询新品种列表
     * 
     * @param tbNewSpecies 新品种
     * @return 新品种集合
     */
    public List<TbNewSpecies> selectTbNewSpeciesList(TbNewSpecies tbNewSpecies);

    /**
     * 新增新品种
     * 
     * @param tbNewSpecies 新品种
     * @return 结果
     */
    public int insertTbNewSpecies(TbNewSpecies tbNewSpecies);

    /**
     * 修改新品种
     * 
     * @param tbNewSpecies 新品种
     * @return 结果
     */
    public int updateTbNewSpecies(TbNewSpecies tbNewSpecies);

    /**
     * 批量删除新品种
     * 
     * @param newsIds 需要删除的新品种主键集合
     * @return 结果
     */
    public int deleteTbNewSpeciesByNewsIds(Long[] newsIds);

    /**
     * 删除新品种信息
     * 
     * @param newsId 新品种主键
     * @return 结果
     */
    public int deleteTbNewSpeciesByNewsId(Long newsId);

    public List<TbNewSpecies> selectTbNewSpeciesByColumn(String firstColumn);

    List<TbNewSpecies> selectTbNewSpeciesFirstColumnsList(TbNewSpecies tbNewSpecies);

    public int updateTbNewSpeciesFirstColumns(TbNewSpecies tbNewSpecies);

    public int updateReading(TbNewSpecies tbNewSpecies);

    public int addLikes(TbNewSpecies tbNewSpecies);

    public int subLikes(TbNewSpecies tbNewSpecies);

    public int addCollect(TbNewSpecies tbNewSpecies);

    public int subCollect(TbNewSpecies tbNewSpecies);
}
