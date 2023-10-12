package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TbNews;
import org.apache.ibatis.annotations.Param;

/**
 * 其它栏目
       一级栏目              二级栏目 （在字典中设置）
         学农技：            水稻、小麦..
         买农资：           节肥增效、虫害防治..
         找渠道：           供应、求购..
         推优品：           我的优品、品牌展示..
         新品种：
         培训：              园艺培训、粮食种植..
         热销农产：Mapper接口
 * 
 * @author ruoyi
 * @date 2023-10-02
 */
public interface TbNewsMapper
{

    public TbNews selectTbOtherColumnsByNewsId(Long newsId);

    public List<TbNews> selectTbOtherColumnsList(TbNews tbNews);

    public int insertTbOtherColumns(TbNews tbNews);

    public int updateTbOtherColumns(TbNews tbNews);

    public int deleteTbOtherColumnsByNewsId(Long newsId);

    public int deleteTbOtherColumnsByNewsIds(Long[] newsIds);

    public List<TbNews> selectTbNewsByColumn(@Param("firstColumn") String firstColumn, @Param("secondColumn") String secondColumn);

    public List<TbNews> selectTbNewsFirstColumnsList(TbNews tbNews);

    public int updateTbNewsFirstColumns(TbNews tbNews);

    public int updateReading(TbNews tbNews);

    public int addLikes(TbNews tbNews);

    public int addCollect(TbNews tbNews);

}
