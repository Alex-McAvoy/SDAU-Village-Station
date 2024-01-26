import com.alibaba.excel.annotation.ExcelProperty;
import lombok.Data;

/**
 * 数据字段
 *
 * @author Alex McAvoy
 * @version 1.0
 * @date 2024/1/23 9:15
 **/
@Data
public class DemoData {
    @ExcelProperty(value = "密码", index = 0)
    private String password;

    @ExcelProperty(value = "加密密码", index = 1)
    private String encodePassword;
}
