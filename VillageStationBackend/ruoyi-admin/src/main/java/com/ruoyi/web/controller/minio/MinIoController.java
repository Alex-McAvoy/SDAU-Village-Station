package com.ruoyi.web.controller.minio;

import com.ruoyi.minio.utils.MinIoUtil;
import com.ruoyi.system.domain.TbFileServer;
import com.ruoyi.system.service.ITbFileServerService;
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
    @Autowired
    private ITbFileServerService tbFileServerService;

    @Value("${minio.endpoint}")
    private String address;
    @Value("${minio.bucketName}")
    private String bucketName;

    @PostMapping("/upload")
    public Object upload(MultipartFile file) {
        System.out.println("上传");
        List<String> upload = minIoUtil.upload(new MultipartFile[]{file});
        System.out.println("上传中");
        String url = address+"/"+bucketName+"/"+upload.get(0);
        System.out.println(url);
        TbFileServer tbFileServer = new TbFileServer(new Long("0"), file.getContentType(), upload.get(0), file.getOriginalFilename(), bucketName, url, new Long("0"), "0", "tb_new_species", new Long("23"), "");
        System.out.println(tbFileServer.toString());
        tbFileServerService.insertTbFileServer(tbFileServer);
        return address+"/"+bucketName+"/species/"+upload.get(0);
    }
}