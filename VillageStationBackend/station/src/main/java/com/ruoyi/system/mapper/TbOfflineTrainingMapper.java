package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TbOfflineTraining;
import org.apache.ibatis.annotations.Param;

/**
 * 线下培训Mapper接口
 * 
 * @author ruoyi
 * @date 2023-10-09
 */
public interface TbOfflineTrainingMapper 
{
    /**
     * 查询线下培训
     * 
     * @param newsId 线下培训主键
     * @return 线下培训
     */
    public TbOfflineTraining selectTbOfflineTrainingByNewsId(Long newsId);

    /**
     * 查询线下培训列表
     * 
     * @param tbOfflineTraining 线下培训
     * @return 线下培训集合
     */
    public List<TbOfflineTraining> selectTbOfflineTrainingList(TbOfflineTraining tbOfflineTraining);

    /**
     * 新增线下培训
     * 
     * @param tbOfflineTraining 线下培训
     * @return 结果
     */
    public int insertTbOfflineTraining(TbOfflineTraining tbOfflineTraining);

    /**
     * 修改线下培训
     * 
     * @param tbOfflineTraining 线下培训
     * @return 结果
     */
    public int updateTbOfflineTraining(TbOfflineTraining tbOfflineTraining);

    /**
     * 删除线下培训
     * 
     * @param newsId 线下培训主键
     * @return 结果
     */
    public int deleteTbOfflineTrainingByNewsId(Long newsId);

    /**
     * 批量删除线下培训
     * 
     * @param newsIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbOfflineTrainingByNewsIds(Long[] newsIds);

    public List<TbOfflineTraining> selectTbOfflineTrainingByColumn(@Param("firstColumn")String firstColumn);

    public List<TbOfflineTraining> selectTbOfflineTrainingFirstColumnsList(TbOfflineTraining tbOfflineTraining);

    public int updateTbOfflineTrainingFirstColumns(TbOfflineTraining tbOfflineTraining);

    public int updateReading(TbOfflineTraining tbOfflineTraining);

    public int addLikes(TbOfflineTraining tbOfflineTraining);

    public int addCollect(TbOfflineTraining tbOfflineTraining);
}
