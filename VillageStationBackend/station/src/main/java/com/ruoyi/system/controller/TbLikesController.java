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
public class TbLikesController extends BaseController {
    @Autowired
    private ITbLikesService tbLikesService;

    private Map<String, String> path = new HashMap<String, String>();

    /**
     * 初始化 path
     *
     * @return void
     * @author Alex McAvoy
     * @date 2023/10/20 17:22:39
     */
    private void init() {
        if (path.size() == 0) {
            //新闻资讯
            path.put("tb_news", "news");
            //线上培训
            path.put("tb_online_training", "online_training");
            //线下培训
            path.put("tb_offline_training", "offline_training");
            //金融资讯
            path.put("tb_finance", "finance");
            //驿站信息
            path.put("tb_station_information", "station_information");
        }
    }


    /**
     * 根据用户id查询点赞列表
     *
     * @param userId 用户id
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/20 10:08:44
     */
    @GetMapping("/likeList/{userId}")
    public AjaxResult collectList(@PathVariable("userId") Long userId) {
        this.init();
        // 收藏实体的列表 [ {...,table_name:'',article_id:'',},... ]
        List<TbLikes> list = tbLikesService.selectTbLikesByUserId(userId);
        // 根据table_name 进行分组
        // 生成 [ <table_name1:[article_id1,article_id2...]>,<table_name2:[article_id1,article_id2...]>...]
        Map<String, List<Long>> map = new HashMap<>();
        if (list.size() != 0) {
            String tableName = list.get(0).getTableName();
            List<Long> articleIdList = new LinkedList<>();
            for (TbLikes item : list) {
                if (!tableName.equals(item.getTableName())) {
                    // 深copy
                    List<Long> articleIdListTmp = new LinkedList<>(articleIdList);
                    if (path.get(tableName) != null) {
                        map.put(path.get(tableName), articleIdListTmp);
                    }
                    articleIdList.clear();
                    //更新表名
                    tableName = item.getTableName();
                }
                articleIdList.add(item.getArticleId());
            }
            if (path.get(tableName) != null) {
                map.put(path.get(tableName), articleIdList);
            }
            return success(map);
        }
        return success(null);
    }


    /**
     * 通过 userid、table_name、article_id 查询点赞
     *
     * @param userId    用户id
     * @param tableName 表名
     * @param articleId 文章id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/20 23:26:43
     */
    @GetMapping("/{userId}/{tableName}/{articleId}")
    public AjaxResult selectLikes(@PathVariable("userId") Long userId,
                                  @PathVariable("tableName") String tableName,
                                  @PathVariable("articleId") Long articleId) {
        tableName = "tb_" + tableName;
        return success(tbLikesService.selectLikes(userId, tableName, articleId));
    }

    /**
     * 新增点赞
     *
     * @param tbLikes 点赞对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/21 00:55:10
     */
    @Log(title = "点赞", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult addLikes(@RequestBody TbLikes tbLikes) {
        String tableName = tbLikes.getTableName();
        tbLikes.setTableName("tb_" + tableName);
        TbLikes likes = tbLikesService.selectLikes(tbLikes.getUserId(), tableName, tbLikes.getArticleId());
        if (likes == null) {
            return success(tbLikesService.insertTbLikes(tbLikes));
        } else {
            return success();
        }
    }

    /**
     * 通过 userid、table_name、article_id 取消点赞
     *
     * @param userId    用户id
     * @param tableName 表名
     * @param articleId 文章id
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/21 01:23:19
     */
    @Log(title = "取消点赞", businessType = BusinessType.DELETE)
    @DeleteMapping("/{userId}/{tableName}/{articleId}")
    public AjaxResult remove(@PathVariable("userId") Long userId,
                             @PathVariable("tableName") String tableName,
                             @PathVariable("articleId") Long articleId) {
        tableName = "tb_" + tableName;
        return success(tbLikesService.deleteTbLikes(userId, tableName, articleId));
    }

}
