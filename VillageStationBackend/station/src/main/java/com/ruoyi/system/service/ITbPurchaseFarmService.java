package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TbPurchaseFarm;

/**
 * 买农资Service接口
 * 
 * @author ruoyi
 * @date 2023-10-06
 */
public interface ITbPurchaseFarmService 
{

    /**
     * 查询买农资
     * 
     * @param newsId 买农资主键
     * @return 买农资
     */
    public TbPurchaseFarm selectTbPurchaseFarmByNewsId(Long newsId);

    /**
     * 查询买农资列表
     * 
     * @param tbPurchaseFarm 买农资
     * @return 买农资集合
     */
    public List<TbPurchaseFarm> selectTbPurchaseFarmList(TbPurchaseFarm tbPurchaseFarm);

    /**
     * 新增买农资
     * 
     * @param tbPurchaseFarm 买农资
     * @return 结果
     */
    public int insertTbPurchaseFarm(TbPurchaseFarm tbPurchaseFarm);

    /**
     * 修改买农资
     * 
     * @param tbPurchaseFarm 买农资
     * @return 结果
     */
    public int updateTbPurchaseFarm(TbPurchaseFarm tbPurchaseFarm);

    /**
     * 批量删除买农资
     * 
     * @param newsIds 需要删除的买农资主键集合
     * @return 结果
     */
    public int deleteTbPurchaseFarmByNewsIds(Long[] newsIds);

    /**
     * 删除买农资信息
     * 
     * @param newsId 买农资主键
     * @return 结果
     */
    public int deleteTbPurchaseFarmByNewsId(Long newsId);

    public List<TbPurchaseFarm> selectTbPurchaseFarmByColumn(String firstColumn, String secondColumn);

    public List<TbPurchaseFarm> selectTbPurchaseFarmFirstColumnsList(TbPurchaseFarm tbPurchaseFarm);

    public int updateTbPurchaseFarmFirstColumns(TbPurchaseFarm tbPurchaseFarm);

    public int updateReading(TbPurchaseFarm tbPurchaseFarm);
}
