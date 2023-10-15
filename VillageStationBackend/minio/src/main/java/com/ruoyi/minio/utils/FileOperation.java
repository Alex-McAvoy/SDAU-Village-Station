package com.ruoyi.minio.utils;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

//文件操作
//multiPartFile文件保存在本地
//删除文件
public class FileOperation {
    //配置全局保存路径

    String savePath="F:\\picture\\demo\\";

    //文件保存在本地
    //输入参数 上传的文件
    //输出 [保存到本地的文件路径, 保存到本地文件的文件路径副本]
    public List<String> saveFile(MultipartFile multipartFile) throws IOException {
        String originName = multipartFile.getOriginalFilename();
        String newName = getNewName(originName);
        String copyName = getCopyName(originName);
        String path = savePath+newName;
        File destinationFile = new File(path);
        System.out.println("原名称:"+originName+"  新名字" + newName + "  目标地址" + path);
        multipartFile.transferTo(destinationFile);
        List<String>list = new ArrayList<String>();
        list.add(savePath+newName);
        list.add(savePath+copyName);
        return list;
    }

    public boolean delFile(String url){
        File file = new File(url);
        if(file.exists()) {//检查文件是否存在
            boolean isDeleted = file.delete();// 删除文件
            if(isDeleted) {// 检查文件是否被成功删除
                System.out.println("文件删除成功！");
                return true;
            } else {
                System.out.println("文件删除失败！");
            }
        } else {
            System.out.println("文件不存在！");
        }
        return false;
    }
    //加入时间戳的新文件名
    private String getNewName(String name){
        return name.split("\\.")[0]+"_"+String.valueOf(new Date().getTime())+"."+name.split("\\.")[1];
    }
    //生成副本文件名，上面的文件名_.类型
    private String getCopyName(String name){
        return name.split("\\.")[0]+"_"+String.valueOf(new Date().getTime())+"_."+name.split("\\.")[1];
    }

//    public static void main(String[] args){
//    }
}
