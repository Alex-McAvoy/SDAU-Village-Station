package com.ruoyi.system.domain.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

/**
 * 用户头像Vo
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2024/1/15 18:57
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProfileVo {
    private Long userId;

    private String avatar;
}
