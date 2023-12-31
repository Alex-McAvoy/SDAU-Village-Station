package com.ruoyi.web.controller.system;

import com.ruoyi.system.service.ISysRoleService;
import com.ruoyi.system.service.ISysUserService;
import com.ruoyi.web.utils.AesEncryptUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.model.RegisterBody;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.web.service.SysRegisterService;
import com.ruoyi.system.service.ISysConfigService;

/**
 * 注册验证
 * 
 * @author ruoyi
 */
@RestController
public class SysRegisterController extends BaseController
{
    @Autowired
    private SysRegisterService registerService;

    @Autowired
    private ISysConfigService configService;

    @Autowired
    private ISysRoleService roleService;

    @Autowired
    private ISysUserService userService;

    @PostMapping("/register")
    public AjaxResult register(@RequestBody RegisterBody user)
    {
        
        String encryptPassword = user.getPassword();
        String password =  AesEncryptUtil.decrypt(encryptPassword);
        user.setPassword(password);

        if (!("true".equals(configService.selectConfigByKey("sys.account.registerUser"))))
        {
            return error("当前系统没有开启注册功能！");
        }
        String msg = registerService.register(user);
        if (StringUtils.isEmpty(msg)) {
            Long userId = userService.selectUserByUserName(user.getUsername()).getUserId();
            // 设置默认角色，106：驿站用户
            roleService.insertDefaultRole(userId, (long) 106);
            return success();
        } else {
            return error(msg);
        }
    }
}
