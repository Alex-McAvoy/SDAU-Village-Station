package com.ruoyi.minio.utils;

import net.bramp.ffmpeg.FFmpeg;
import net.bramp.ffmpeg.FFprobe;
import net.bramp.ffmpeg.builder.FFmpegBuilder;

import java.io.IOException;

//转码类
public class Transcoding {

    //配置 ffmpegPath ffmpeg应用位置

    private String ffmpegPath = "F:\\ffmpeg\\bin\\ffmpeg.exe";
    //配置 ffprobePath 应用位置
    private String ffprobePath ="F:\\ffmpeg\\bin\\ffprobe.exe";

    //转H.264编码 和 mp4格式
    // 参数 inputUrl  输入视频;outputUrl 输出视频; 输出视频的格式必须为mp4
    public void transcode(String inputUrl,String outputUrl) throws IOException {
        FFmpeg ffmpeg = new FFmpeg(ffmpegPath);
        FFprobe ffprobe = new FFprobe(ffprobePath);
        FFmpegBuilder builder = new FFmpegBuilder()
                .setInput(inputUrl)
                .addOutput(outputUrl)
                .setVideoCodec("h264") // 设置视频编码器为 H.264
                .done();
        ffmpeg.run(builder);
    }

    public static void main(String[] args) throws IOException {


    }
}
