package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TbOnlineTraining;

/**
 * 线上培训Mapper接口
 * 
 * @author ruoyi
 * @date 2023-10-11
 */
public interface TbOnlineTrainingMapper 
{
    /**
     * 查询线上培训
     * 
     * @param newsId 线上培训主键
     * @return 线上培训
     */
    public TbOnlineTraining selectTbOnlineTrainingByNewsId(Long newsId);

    /**
     * 查询线上培训列表
     * 
     * @param tbOnlineTraining 线上培训
     * @return 线上培训集合
     */
    public List<TbOnlineTraining> selectTbOnlineTrainingList(TbOnlineTraining tbOnlineTraining);

    /**
     * 新增线上培训
     * 
     * @param tbOnlineTraining 线上培训
     * @return 结果
     */
    public int insertTbOnlineTraining(TbOnlineTraining tbOnlineTraining);

    /**
     * 修改线上培训
     * 
     * @param tbOnlineTraining 线上培训
     * @return 结果
     */
    public int updateTbOnlineTraining(TbOnlineTraining tbOnlineTraining);

    /**
     * 删除线上培训
     * 
     * @param newsId 线上培训主键
     * @return 结果
     */
    public int deleteTbOnlineTrainingByNewsId(Long newsId);

    /**
     * 批量删除线上培训
     * 
     * @param newsIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbOnlineTrainingByNewsIds(Long[] newsIds);

    public int updateReading(TbOnlineTraining tbOnlineTraining);

    public int addLikes(TbOnlineTraining tbOnlineTraining);

    public int subLikes(TbOnlineTraining tbOnlineTraining);

    public int addCollect(TbOnlineTraining tbOnlineTraining);

    public int subCollect(TbOnlineTraining tbOnlineTraining);
}
