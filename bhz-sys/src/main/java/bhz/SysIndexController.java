package bhz;

import bhz.sys.facade.SysUserFacade;
import com.alibaba.fastjson.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * <B>系统名称：</B><BR>
 * <B>模块名称：</B><BR>
 * <B>中文类名：</B><BR>
 * <B>概要说明：</B><BR>
 *
 * @author bhz（Alienware）
 * @since 2016年2月29日
 */
@Controller
@RequestMapping("/sys")
public class SysIndexController {

    @Resource
    private SysUserFacade sysUserFacade;

    /**
     * <B>方法名称：</B>系统首页<BR>
     * <B>概要说明：</B><BR>
     *
     * @param request  页面请求
     * @param response 页面响应
     * @return ModelAndView 模型视图
     */
    @RequestMapping("/index")
    public ModelAndView index(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView ret = new ModelAndView();
        List<JSONObject> list = this.sysUserFacade.getList();
        for (JSONObject jsonObject : list) {
            System.out.println(jsonObject);
        }
        System.out.println(this.sysUserFacade.getById("admin"));
        //FIXME:主键生成方法要修改
//        System.out.println(this.sysUserFacade.generateKey());
        ret.setViewName("sys/sysindex");
        return ret;
    }


}
