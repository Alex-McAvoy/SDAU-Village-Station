package com.ruoyi.minio.domain;

import lombok.Data;

/**
 * 对象实体
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2023/10/2 17:00
 **/
@Data
public class ObjectItem {
    private String objectName;
    private Long size;
}
