package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TbAskFree;

/**
 * 随时问Service接口
 * 
 * @author ruoyi
 * @date 2023-10-03
 */
public interface ITbAskFreeService 
{
    /**
     * 查询随时问
     * 
     * @param askFreeId 随时问主键
     * @return 随时问
     */
    public TbAskFree selectTbAskFreeByAskFreeId(Long askFreeId);



    /**
     * 查询随时问
     *
     * @param parentId 父id
     * @return 随时问
     */
    public List<TbAskFree> selectTbAskFreeByParentId(Long parentId);





    /**
     * 查询随时问列表
     * 
     * @param tbAskFree 随时问
     * @return 随时问集合
     */
    public List<TbAskFree> selectTbAskFreeList(TbAskFree tbAskFree);

    /**
     * 新增随时问
     * 
     * @param tbAskFree 随时问
     * @return 结果
     */
    public int insertTbAskFree(TbAskFree tbAskFree);

    /**
     * 修改随时问
     * 
     * @param tbAskFree 随时问
     * @return 结果
     */
    public int updateTbAskFree(TbAskFree tbAskFree);

    /**
     * 批量删除随时问
     * 
     * @param askFreeIds 需要删除的随时问主键集合
     * @return 结果
     */
    public int deleteTbAskFreeByAskFreeIds(Long[] askFreeIds);

    /**
     * 删除随时问信息
     * 
     * @param askFreeId 随时问主键
     * @return 结果
     */
    public int deleteTbAskFreeByAskFreeId(Long askFreeId);

    public List<TbAskFree> selectTbAskFreeByColumn(String firstColumn);

    public List<TbAskFree> selectTbAskFreeBySort(String firstColumn,String sort);

    public List<TbAskFree> selectTbAskFreeFirstColumnsList(TbAskFree tbAskFree);

    public int updateTbAskFreeFirstColumns(TbAskFree tbAskFree);

    public List<TbAskFree> selectTbAskFreeByLike(String query);
}
