package com.ruoyi.minio.utils;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.spring.SpringUtils;
import com.ruoyi.minio.config.FFmpegConfig;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * 文件操作，保存在本地
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/22 15:34:16
 **/
public class FileOperation {
    private static FFmpegConfig ffmpegConfig = SpringUtils.getBean(FFmpegConfig.class);

    // 全局保存路径
    private String savePath = ffmpegConfig.getSavePath();
    /**
     * 保存在本地
     * @param multipartFile 上传的文件
     * @return java.util.List<java.lang.String> [保存到本地的文件路径, 保存到本地文件的文件路径副本]
     * @author Alex McAvoy
     * @date 2023/10/22 15:35:22
     */
    public List<String> saveFile(MultipartFile multipartFile) throws IOException {
        String originName = multipartFile.getOriginalFilename();
        String newName = getNewName(originName);
        String copyName = getCopyName(originName);
        String path = savePath+newName;

        File destinationFile = new File(path);
        multipartFile.transferTo(destinationFile);
        List<String>list = new ArrayList<String>();
        list.add(savePath+newName);
        list.add(savePath+copyName);
        return list;
    }

    public boolean delFile(String url){
        File file = new File(url);



        // 检查文件是否存在
        if(file.exists()) {
            // 删除文件
            boolean isDeleted = file.delete();
            // 检查文件是否被成功删除
            if(isDeleted) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    /**
     * 加入时间戳的新文件名
     * @param name 文件名
     * @return java.lang.String
     * @author Alex McAvoy
     * @date 2023/10/22 15:36:29
     */
    private String getNewName(String name){
        return name.split("\\.")[0]+"_"+String.valueOf(DateUtils.dateTimeNow())+"."+name.split("\\.")[1];
    }

    /**
     * 生成副本文件名，上面的文件名_.类型
     * @param name 文件名
     * @return java.lang.String
     * @author Alex McAvoy
     * @date 2023/10/22 15:36:41
     */
    private String getCopyName(String name){
        return name.split("\\.")[0]+"_"+String.valueOf(DateUtils.dateTimeNow())+"_."+name.split("\\.")[1];
    }

}
