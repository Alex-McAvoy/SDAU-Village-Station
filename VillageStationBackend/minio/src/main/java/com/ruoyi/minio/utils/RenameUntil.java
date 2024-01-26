package com.ruoyi.minio.utils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

/**
 * 文件重命名类
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/10 17:36
 **/
public class RenameUntil {
    public static String generatePrefix() {
        // 获得当前时间
        DateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
        // 转换为字符串
        String formatDate = format.format(new Date());
        // 随机生成文件编号
        int random = new Random().nextInt(10000);
        // 时间戳+随机数
        return new StringBuffer().append(formatDate).append(
                random).toString();
    }

    public static String generateSuffix(String filename) {
        return filename.substring(filename.lastIndexOf("."));
    }
}
