package cn.edu.ywb.controller.user;

import cn.edu.ywb.pojo.Good;
import cn.edu.ywb.pojo.User;
import cn.edu.ywb.service.admin.IGoodService;
import cn.edu.ywb.service.user.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private IUserService userService;
    @Autowired
    private IGoodService goodService;

    @RequestMapping(value = "/login.do",produces = "application/json;charset=UTF-8")
    public
    ModelAndView login(String username, String password , HttpServletRequest request){
        ModelAndView mv = new ModelAndView();
        User user = userService.login(username,password);
        if(user!=null){
            request.getSession().setAttribute("user",user);
        }
        List<Good> allGood = goodService.findAllGood();
        request.getSession().setAttribute("allGood",allGood);
        /*mv.addObject("goodList",allGood);
        mv.addObject("test","123456666");*/
        mv.setViewName("redirect:/userpages/index.jsp");
        return mv;
    }

    @RequestMapping("/register.do")
    public String register(String username,String password,String email,String gender,String phoneNumber){
        User user = new User();
        user.setEmail(email);
        user.setGender(gender);
        user.setName(username);
        user.setPassword(password);
        user.setPhoneNumber(phoneNumber);
        userService.register(user);


        return "redirect:/index.html";
    }



}
