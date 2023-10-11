package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
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
public class TbAskFreeServiceImpl implements ITbAskFreeService 
{
    @Autowired
    private TbAskFreeMapper tbAskFreeMapper;

    /**
     * 查询随时问
     * 
     * @param askFreeId 随时问主键
     * @return 随时问
     */
    @Override
    public TbAskFree selectTbAskFreeByAskFreeId(Long askFreeId)
    {
        return tbAskFreeMapper.selectTbAskFreeByAskFreeId(askFreeId);
    }


    /**
     * 查询随时问
     *
     * @param parentId 父id
     * @return 随时问
     */
    @Override
    public List<TbAskFree> selectTbAskFreeByParentId(Long parentId)
    {
        return tbAskFreeMapper.selectTbAskFreeByParentId(parentId);
    }

    /**
     * 查询随时问列表
     * 
     * @param tbAskFree 随时问
     * @return 随时问
     */
    @Override
    public List<TbAskFree> selectTbAskFreeList(TbAskFree tbAskFree)
    {
        return tbAskFreeMapper.selectTbAskFreeList(tbAskFree);
    }

    /**
     * 新增随时问
     * 
     * @param tbAskFree 随时问
     * @return 结果
     */
    @Override
    public int insertTbAskFree(TbAskFree tbAskFree)
    {
        tbAskFree.setCreateTime(DateUtils.getNowDate());
        return tbAskFreeMapper.insertTbAskFree(tbAskFree);
    }

    /**
     * 修改随时问
     * 
     * @param tbAskFree 随时问
     * @return 结果
     */
    @Override
    public int updateTbAskFree(TbAskFree tbAskFree)
    {
        tbAskFree.setUpdateTime(DateUtils.getNowDate());
        return tbAskFreeMapper.updateTbAskFree(tbAskFree);
    }

    /**
     * 批量删除随时问
     * 
     * @param askFreeIds 需要删除的随时问主键
     * @return 结果
     */
    @Override
    public int deleteTbAskFreeByAskFreeIds(Long[] askFreeIds)
    {
        return tbAskFreeMapper.deleteTbAskFreeByAskFreeIds(askFreeIds);
    }

    /**
     * 删除随时问信息
     * 
     * @param askFreeId 随时问主键
     * @return 结果
     */
    @Override
    public int deleteTbAskFreeByAskFreeId(Long askFreeId)
    {
        return tbAskFreeMapper.deleteTbAskFreeByAskFreeId(askFreeId);
    }

    @Override
    public List<TbAskFree> selectTbAskFreeByColumn(String firstColumn) {
        return tbAskFreeMapper.selectTbAskFreeByColumn(firstColumn);
    }

    @Override
    public List<TbAskFree> selectTbAskFreeFirstColumnsList(TbAskFree tbAskFree) {
        return tbAskFreeMapper.selectTbAskFreeFirstColumnsList(tbAskFree);
    }

    @Override
    public int updateTbAskFreeFirstColumns(TbAskFree tbAskFree) {
        tbAskFree.setUpdateTime(DateUtils.getNowDate());
        return tbAskFreeMapper.updateTbAskFreeFirstColumns(tbAskFree);
    }
}
