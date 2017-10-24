package bhz;

import bhz.sys.entity.SysUser;
import bhz.sys.facade.SysUserFacade;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
     * @param dataYear 年份
     * @return ModelAndView 模型视图
     */
    @RequestMapping("/index")
    public ModelAndView index(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView ret = new ModelAndView();

        SysUser sysUser = sysUserFacade.getUser(1);
        System.out.println(sysUser.getName());

        ret.setViewName("sys/sysindex");
        ret.addObject("object", sysUser);
        return ret;
    }


}
