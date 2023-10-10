package com.ruoyi.system.controller;
import com.ruoyi.minio.utils.MinIoUtil;
import com.ruoyi.system.domain.TbFileServer;
import com.ruoyi.system.service.ITbFileServerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.util.HashMap;
import java.util.List;

/**
 * MinIO 控制器
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/2 17:13
 **/
@RestController
public class FileUpload {
    @Autowired
    private MinIoUtil minIoUtil;
    @Autowired
    private ITbFileServerService tbFileServerService;
    private HashMap<String, String> table_name = new HashMap<String, String>();
    @Value("${minio.endpoint}")
    private String address;
    @Value("${minio.bucketName}")
    private String bucketName;
    private void init(){
        table_name.put("新闻", "news");
    }

    @PostMapping("/uploadImg/{type}/{id}")
    public Object upload(MultipartFile file, @PathVariable("id") Long id,@PathVariable("type") String type) {
        init();
        System.out.println("上传");
        List<String> upload = minIoUtil.upload(new MultipartFile[]{file}, "species");
        System.out.println("上传中");
        String url = address + "/" + bucketName + "/" + upload.get(0);
        TbFileServer tbFileServer = new TbFileServer(new Long("0"), file.getContentType(), upload.get(0), file.getOriginalFilename(), bucketName, url, file.getSize(), "0", table_name.get(type), new Long("23"), "");
        tbFileServerService.insertTbFileServer(tbFileServer);
        return "{\"url\":\"" + address + "/" + bucketName + "/" + upload.get(0) + "\",\"code\":" + "\"200\"}";
    }
}