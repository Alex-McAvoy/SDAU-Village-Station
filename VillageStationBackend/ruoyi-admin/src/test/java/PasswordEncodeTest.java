import com.alibaba.excel.EasyExcel;
import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONObject;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.utils.SecurityUtils;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

/**
 * 密码加密
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2024/1/23 9:14
 **/
public class PasswordEncodeTest {
    public static void main(String[] args) {
        String filename = "C:\\Users\\Alex\\Desktop\\password.xlsx";
        List<LinkedHashMap> dataList = EasyExcel.read(filename).sheet().doReadSync();

        List<DemoData> resList = new ArrayList<>();
        for (LinkedHashMap linkedHashMap : dataList) {
            DemoData obj = new DemoData();
            String password = (String) linkedHashMap.get(0);
            obj.setPassword(password);
            obj.setEncodePassword(SecurityUtils.encryptPassword(password));
            resList.add(obj);
        }


        String savepath = "C:\\Users\\Alex\\Desktop\\res.xlsx";
        EasyExcel.write(savepath, DemoData.class).sheet().doWrite(resList);
    }

}
