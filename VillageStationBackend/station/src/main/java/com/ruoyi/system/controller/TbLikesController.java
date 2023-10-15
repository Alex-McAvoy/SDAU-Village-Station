package com.ruoyi.system.controller;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.TbLikes;
import com.ruoyi.system.service.ITbLikesService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 点赞Controller
 * 
 * @author ruoyi
 * @date 2023-10-14
 */
@RestController
@RequestMapping("/system/likes")
public class TbLikesController extends BaseController
{
    @Autowired
    private ITbLikesService tbLikesService;
    private Map<String,String> path =  new HashMap<String, String>();
    private void init(){
        if(path.size()==0) {
            path.put("tb_news", "news_detail");//新闻资讯
            path.put("tb_recommend_products", "products_detail");//优品
            path.put("tb_online_training", "online_training_detail");//线上培训
            path.put("tb_offline_training", "offline_training_detail");//线下培训
            path.put("tb_finance", "finance_detail");//金融资讯
            path.put("tb_station_info", "station_info_detail");//驿站信息
            path.put("tb_learn_tech", "learningTechnology");//学农技
            path.put("tb_purchase_farm", "purchaseFarm");//买农资
            path.put("tb_find_channel", "channel_detail");//找渠道
            path.put("tb_new_species", "species_detail");//新品种
        }
    }

    /**
     * 查询点赞列表
     */
    @GetMapping("/list")
    public TableDataInfo list(TbLikes tbLikes)
    {
        startPage();
        List<TbLikes> list = tbLikesService.selectTbLikesList(tbLikes);
        return getDataTable(list);
    }

    /**
     * 通过用户 user_id查询收藏列表
     */
    @GetMapping("/likeList/{userId}")
    public Map<String,List<Long>> collectList(@PathVariable("userId") Long userId)
    {
        init();
        System.out.println("userId:"+userId);
        List<TbLikes> list =  tbLikesService.selectTbLikesByUserId(userId);
        // 处理函数
        //数据库返回 收藏实体的列表 [ {...,table_name:'',article_id:'',},... ]
        // 根据table_name 进行分组
        //生成 [ <table_name1:[article_id1,article_id2...]>,<table_name2:[article_id1,article_id2...]>...]
        //返回结果 table_name 用 路径 替换
        Map<String, List<Long> > map = new HashMap<>();
        if(list.size()!=0) {
            String tableName = list.get(0).getTableName();
            List<Long> articleIdList = new LinkedList<>();
            for (TbLikes item : list) {
                //System.out.println(item.toString());
                if(!tableName.equals(item.getTableName())){
                    //保存上一种
                    //深拷贝
                    List<Long> articleIdListTmp = new LinkedList<>();
                    for (Long id : articleIdList) {
                        articleIdListTmp.add(id);
                    }
                    if(path.get(tableName)!=null) {
                        map.put(path.get(tableName), articleIdListTmp);
                    }
                    articleIdList.clear();
                    //更新表名
                    tableName = item.getTableName();
                }
                articleIdList.add(item.getArticleId());
            }
            if(path.get(tableName)!=null) {
                map.put(path.get(tableName), articleIdList);
            }
            return map;
        }
        return null;
    }

    /**
     * 导出点赞列表
     */
    @Log(title = "点赞", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TbLikes tbLikes)
    {
        List<TbLikes> list = tbLikesService.selectTbLikesList(tbLikes);
        ExcelUtil<TbLikes> util = new ExcelUtil<TbLikes>(TbLikes.class);
        util.exportExcel(response, list, "点赞数据");
    }

    /**
     * 获取点赞详细信息
     */
    @GetMapping(value = "/{newsId}")
    public AjaxResult getInfo(@PathVariable("newsId") Long newsId)
    {
        return success(tbLikesService.selectTbLikesByNewsId(newsId));
    }

    /**
     * 新增点赞
     */
    @Log(title = "点赞", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult addLikes(@RequestBody TbLikes tbLikes)
    {
        init();
        //确保输入正确的表名
        System.out.println(tbLikes.getTableName());
        System.out.println(path.containsValue(tbLikes.getTableName()));
        if(path.containsValue( tbLikes.getTableName())) {
            String targetKey = null;
            for (Map.Entry<String, String> entry : path.entrySet()) {
                if (entry.getValue().equals(tbLikes.getTableName())) {
                    targetKey = entry.getKey();
                    break;
                }
            }
            System.out.println(targetKey);
            tbLikes.setTableName(targetKey);
            System.out.println(tbLikes.toString());
            return toAjax(tbLikesService.insertTbLikes(tbLikes));
        }
        return toAjax(0);
    }
    /**
     * 修改点赞
     */
    @Log(title = "点赞", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbLikes tbLikes)
    {
        return toAjax(tbLikesService.updateTbLikes(tbLikes));
    }

    /**
     * 删除点赞
     */
    @Log(title = "点赞", businessType = BusinessType.DELETE)
	@DeleteMapping("/{newsIds}")
    public AjaxResult remove(@PathVariable Long[] newsIds)
    {
        return toAjax(tbLikesService.deleteTbLikesByNewsIds(newsIds));
    }

    /**
     * 通过userid,table_name,article_id 删除收藏
     */
    @Log(title = "收藏", businessType = BusinessType.DELETE)
    @DeleteMapping("del_likes/{userid}/{tablename}/{articleid}")
    public AjaxResult remove(@PathVariable("userid")Long userId,@PathVariable("tablename")String tableName,@PathVariable("articleid")Long articleId)
    {
        init();
        //确保输入正确的表名
        if(path.containsValue( tableName)) {
            String targetKey = null;
            for (Map.Entry<String, String> entry : path.entrySet()) {
                if (entry.getValue().equals(tableName)) {
                    targetKey = entry.getKey();
                    break;
                }
            }
            return toAjax(tbLikesService.deleteTbCollectByMultiId(userId,targetKey,articleId));
        }
        return toAjax(0);
    }
}
