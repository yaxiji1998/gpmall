package cn.edu.ywb.controller.user;

import cn.edu.ywb.pojo.Address;
import cn.edu.ywb.pojo.Good;
import cn.edu.ywb.pojo.Order;
import cn.edu.ywb.pojo.User;
import cn.edu.ywb.service.admin.IGoodService;
import cn.edu.ywb.service.user.IAddressService;
import cn.edu.ywb.service.user.IOrderService;
import cn.edu.ywb.service.user.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.jws.soap.SOAPBinding;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
    @Autowired
    private IAddressService addressService;
    @Autowired
    private IOrderService orderService;

    @RequestMapping("/login.do")
    @ResponseBody
    public String login(String username, String password , HttpServletRequest request){
        User user = userService.login(username,password);
        if(user!=null){
            request.getSession().setAttribute("user",user);
            List<Good> allGood = goodService.findAllGood();
            request.getSession().setAttribute("allGood",allGood);
            List<Address> addressList = addressService.findAddressByUserId(user.getId());
            request.getSession().setAttribute("addressList",addressList);
            List<Order> orderList = orderService.findOrderByUserId(user.getId());
            request.getSession().setAttribute("orderList",orderList);
            return "true";
        }else {
            return "false";
        }

    }

    @ResponseBody
    @RequestMapping("/logout.do")
    public String logout(HttpServletRequest request){
        request.getSession().invalidate();
        return "true";
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
        addressService.initAddressByUserId(user.getId());

        return "redirect:/index.html";
    }


    @ResponseBody
    @RequestMapping("/modifyUserInfo.do")
    public String modifyUserInfo(User user,HttpServletRequest request){
        userService.modifyUserInfo(user);
        HttpSession session = request.getSession();
        User old = (User) session.getAttribute("user");
        user.setName(old.getName());
        session.setAttribute("user",user);
        return "true";
    }



    @ResponseBody
    @RequestMapping("/findAllUser.do")
    public List<User> findAllUser(){
        List<User> allUser = userService.findAllUser();

        return allUser;
    }

}
