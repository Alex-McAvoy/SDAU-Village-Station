package com.ruoyi.minio.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * FFmpeg配置
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/22 15:10
 **/
@Data
@Component
@ConfigurationProperties(prefix = "ffmpeg")
public class FFmpegConfig {
    /* 存储路径 */
    private String savePath;

    /* ffmpeg 位置 */
    private String ffmpegPath;

    /* ffprobe 位置 */
    private String ffprobePath;
}
