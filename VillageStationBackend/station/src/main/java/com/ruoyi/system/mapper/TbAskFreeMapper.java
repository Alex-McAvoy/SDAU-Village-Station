package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TbAskFree;

/**
 * 随时问Mapper接口
 * 
 * @author ruoyi
 * @date 2023-10-03
 */
public interface TbAskFreeMapper 
{
    /**
     * 查询随时问
     * 
     * @param askFreeId 随时问主键
     * @return 随时问
     */
    public TbAskFree selectTbAskFreeByAskFreeId(Long askFreeId);

    /**
     * 根据父id查评论
     *
     * @param  parentId 父id
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
     * 删除随时问
     * 
     * @param askFreeId 随时问主键
     * @return 结果
     */
    public int deleteTbAskFreeByAskFreeId(Long askFreeId);

    /**
     * 批量删除随时问
     * 
     * @param askFreeIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbAskFreeByAskFreeIds(Long[] askFreeIds);
}
