package cn.edu.ywb.controller.user;

import cn.edu.ywb.pojo.User;
import cn.edu.ywb.service.user.IFocusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/focus")
public class FocusController {
    @Autowired
    private IFocusService focusService;

    @ResponseBody
    @RequestMapping("/addToWishList.do")
    public String addToWishList(Integer gid, HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("user");
        Integer uid = user.getId();
        focusService.addToWishList(uid,gid);
        return "true";
    }

}
