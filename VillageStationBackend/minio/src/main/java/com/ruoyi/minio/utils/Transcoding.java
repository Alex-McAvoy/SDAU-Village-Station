package com.ruoyi.minio.utils;

import com.ruoyi.common.utils.spring.SpringUtils;
import com.ruoyi.minio.config.FFmpegConfig;
import net.bramp.ffmpeg.FFmpeg;
import net.bramp.ffmpeg.FFprobe;
import net.bramp.ffmpeg.builder.FFmpegBuilder;

import java.io.IOException;

/**
 * 视频转码类
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/22 15:34:16
 **/
public class Transcoding {
    private static FFmpegConfig ffmpegConfig = SpringUtils.getBean(FFmpegConfig.class);

    // ffmpeg位置
    private String ffmpegPath = ffmpegConfig.getFfmpegPath();
    // ffprobe位置
    private String ffprobePath = ffmpegConfig.getFfprobePath();

    /**
     *  转H.264编码，输出格式必须为mp4格式
     * @param inputUrl 输入视频
     * @param outputUrl 输出视频
     * @author Alex McAvoy
     * @date 2023/10/22 16:24:58
     */
    public void transcode(String inputUrl,String outputUrl) throws IOException {
        FFmpeg ffmpeg = new FFmpeg(ffmpegPath);
        FFprobe ffprobe = new FFprobe(ffprobePath);
        FFmpegBuilder builder = new FFmpegBuilder()
                .setInput(inputUrl)
                .addOutput(outputUrl)
                // 设置视频编码器为 H.264
                .setVideoCodec("h264")
                .done();
        ffmpeg.run(builder);
    }
}
