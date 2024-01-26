package com.ruoyi.system.controller;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson2.JSON;
import com.ruoyi.framework.web.domain.server.Sys;
import com.ruoyi.system.service.impl.TbCollectServiceImpl;
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
import com.ruoyi.system.domain.TbCollect;
import com.ruoyi.system.service.ITbCollectService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 收藏Controller
 *
 * @author ruoyi
 * @date 2023-10-13
 */
@RestController
@RequestMapping("/system/collect")
public class TbCollectController extends BaseController {
    @Autowired
    private ITbCollectService tbCollectService;

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
     * 根据用户id查询收藏列表
     *
     * @param userId 用户id
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @author Alex McAvoy
     * @date 2023/10/20 10:08:44
     */
    @GetMapping("/collectList/{userId}")
    public AjaxResult collectList(@PathVariable("userId") Long userId) {
        this.init();
        // 收藏实体的列表 [ {...,table_name:'',article_id:'',},... ]
        List<TbCollect> list = tbCollectService.selectTbCollectListByUserId(userId);
        // 根据 table_name 进行分组
        // 生成 [ <table_name1:[article_id1,article_id2...]>,<table_name2:[article_id1,article_id2...]>...]
        Map<String, List<Long>> map = new HashMap<>();
        if (list.size() != 0) {
            String tableName = list.get(0).getTableName();
            List<Long> articleIdList = new LinkedList<>();
            for (TbCollect item : list) {
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
     * 通过 userid、table_name、article_id 查询收藏
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
        return success(tbCollectService.selectCollect(userId, tableName, articleId));
    }


    /**
     * 新增收藏
     *
     * @param tbCollect 收藏对象
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author Alex McAvoy
     * @date 2023/10/21 01:15:40
     */
    @Log(title = "收藏", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbCollect tbCollect) {
        String tableName = tbCollect.getTableName();
        tbCollect.setTableName("tb_" + tableName);
        TbCollect collect = tbCollectService.selectCollect(tbCollect.getUserId(), tableName, tbCollect.getArticleId());
        if (collect == null) {
            return success(tbCollectService.insertTbCollect(tbCollect));
        } else {
            return success();
        }
    }

    /**
     * 通过 userid、table_name、article_id 取消收藏
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
        return success(tbCollectService.deleteTbCollect(userId, tableName, articleId));
    }

}
