package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TbFinance;
import org.apache.ibatis.annotations.Param;

/**
 * 金融Mapper接口
 * 
 * @author ruoyi
 * @date 2023-10-10
 */
public interface TbFinanceMapper 
{/**
     * 查询金融
     * 
     * @param newsId 金融主键
     * @return 金融
     */
    public TbFinance selectTbFinanceByNewsId(Long newsId);

    /**
     * 查询金融列表
     * 
     * @param tbFinance 金融
     * @return 金融集合
     */
    public List<TbFinance> selectTbFinanceList(TbFinance tbFinance);

    /**
     * 新增金融
     * 
     * @param tbFinance 金融
     * @return 结果
     */
    public int insertTbFinance(TbFinance tbFinance);

     /**
     * 修改金融
     * 
     * @param tbFinance 金融
     * @return 结果
     */
    public int updateTbFinance(TbFinance tbFinance);

    /**
     * 删除金融
     * 
     * @param newsId 金融主键
     * @return 结果
     */
    public int deleteTbFinanceByNewsId(Long newsId);

    /**
     * 批量删除金融
     * 
     * @param newsIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbFinanceByNewsIds(Long[] newsIds);

    public List<TbFinance> selectTbFinanceByFirstColumn(@Param("firstColumn")String firstColumn, @Param("secondColumn")String secondColumn);

    public List<TbFinance> selectTbFinanceFirstColumnsList(TbFinance tbFinance);

    public int updateTbFinanceFirstColumns(TbFinance tbFinance);

    public int updateReading(TbFinance tbFinance);

}