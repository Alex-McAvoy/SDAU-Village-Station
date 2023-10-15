package com.ruoyi.minio.config;

import io.minio.MinioClient;
import lombok.Data;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

/**
 * MinIO 配置类
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/2 16:57
 **/
@Data
@Component
public class MinIoClientConfig {
    @Value("${minio.endpoint}")
    private String endpoint;
    @Value("${minio.accessKey}")
    private String accessKey;
    @Value("${minio.secretKey}")
    private String secretKey;

    /**
     * 注入配置类
     *
     * @return io.minio.MinioClient
     * @author Alex McAvoy
     * @date 2023/10/2 17:00:14
     */
    @Bean
    public MinioClient minioClient(){
        return MinioClient.builder()
                .endpoint(endpoint)
                .credentials(accessKey, secretKey)
                .build();
    }
}
