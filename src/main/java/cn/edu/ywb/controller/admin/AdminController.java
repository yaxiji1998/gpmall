package cn.edu.ywb.controller.admin;


import cn.edu.ywb.service.admin.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private IAdminService adminService;

    @RequestMapping("/login.do")
    public @ResponseBody
    String login( String username,String password){
        Boolean result = adminService.login(username,password);
        System.out.println(username);
        System.out.println(password);
        return "{\"result\":"+result.toString()+"}";
    }
}
