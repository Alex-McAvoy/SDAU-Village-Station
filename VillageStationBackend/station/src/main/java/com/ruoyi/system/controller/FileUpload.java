package com.ruoyi.system.controller;
import com.ruoyi.minio.utils.FileOperation;
import com.ruoyi.minio.utils.MinIoUtil;
import com.ruoyi.minio.utils.Transcoding;
import com.ruoyi.system.domain.TbFileServer;
import com.ruoyi.system.service.ITbFileServerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
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

    // 上传图片接口，
    // type与id参数暂时未使用 type 用于文件服务器 /桶名/type_目录名/文件;
    // id 用于保存到数据库
    @PostMapping("/uploadImg/{type}/{id}")
    public Object upload(MultipartFile file, @PathVariable("id") Long id,@PathVariable("type") String type) {
//        init();
        System.out.println("上传");
        List<String> upload = minIoUtil.upload(new MultipartFile[]{file});
        System.out.println("上传中");
        String url = address + "/" + bucketName + "/" + upload.get(0);
        System.out.println(url);
        TbFileServer tbFileServer = new TbFileServer(new Long("0"), file.getContentType(), upload.get(0), file.getOriginalFilename(), bucketName, url, file.getSize(), "0", "news", new Long("23"), "");

        tbFileServerService.insertTbFileServer(tbFileServer);
        String repsonse = "{\"url\":\"" + address + "/" + bucketName +"/" + upload.get(0) + "\",\"code\":" + "\"200\"}";
        System.out.println(repsonse);
        return repsonse;
    }
    @PostMapping("/uploadVideo")
    public Object uploadVideo(MultipartFile file) throws IOException {
        System.out.println("文件进行保存");
        String originName = file.getOriginalFilename();
        String repsonse="";
        //保存到本地
        FileOperation fileOperation = new FileOperation();//可改成自动注入,需要修改成bean
        List<String>namelist = fileOperation.saveFile(file);
        String filePath = namelist.get(0);
        String fileCopyPath =namelist.get(1);
        try {
            //视频文件转编码
            Transcoding transcoding = new Transcoding();//可改为自动注入
            transcoding.transcode(filePath, fileCopyPath);

            //文件上传
            String severFileName = minIoUtil.uploadVideo(originName, fileCopyPath);
            String url = address + "/" + bucketName + "/" + severFileName;
            repsonse = "{\"url\":\"" + url + "\",\"code\":" + "\"200\"}";

            //保存到数据库
            //                                           文件id            文件类型                 文件名          原始文件名                     桶名        网络链接     文件大小    删除标志      表名默认培训               表数据id         类别
            TbFileServer tbFileServer = new TbFileServer(new Long("0"), file.getContentType(), severFileName, file.getOriginalFilename(), bucketName, url, file.getSize(), "0", "training", new Long("23"), "");
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            //本地文件删除
            fileOperation.delFile(filePath);
            fileOperation.delFile(fileCopyPath);
        }
        System.out.println(repsonse);
        return repsonse;
    }
}