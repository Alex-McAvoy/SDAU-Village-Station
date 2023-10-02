package com.ruoyi.web.controller.minio;

import com.ruoyi.minio.utils.MinIoUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * MinIO 控制器
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/2 17:13
 **/
@RestController
public class MinIoController {
    @Autowired
    private MinIoUtil minIoUtil;

    @Value("${minio.endpoint}")
    private String address;
    @Value("${minio.bucketName}")
    private String bucketName;

    @PostMapping("/upload")
    public Object upload(MultipartFile file) {

        List<String> upload = minIoUtil.upload(new MultipartFile[]{file});

        return address+"/"+bucketName+"/"+upload.get(0);
    }
}
