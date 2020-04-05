package cn.edu.ywb.controller.user;

import cn.edu.ywb.pojo.Good;
import cn.edu.ywb.pojo.User;
import cn.edu.ywb.pojo.WishList;
import cn.edu.ywb.service.user.IFocusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/wishList")
public class WishListController {
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

    @ResponseBody
    @RequestMapping("/findWishListByUserId.do")
    public String findWishListByUserId(HttpServletRequest request){
        List<WishList> wishListList = new ArrayList<>();
        User user = (User) request.getSession().getAttribute("user");

        wishListList = focusService.findWishListByUserId(user.getId());
        request.getSession().setAttribute("wishListList",wishListList);

        return "true";
    }

    @ResponseBody
    @RequestMapping("/deleteByGoodIdAndUserId.do")
    public String deleteByGoodIdAndUserId(HttpServletRequest request,Integer gid){
        HttpSession session = request.getSession();
        Integer uid = ((User) session.getAttribute("user")).getId();
        focusService.deleteByGoodIdAndUserId(uid,gid);


        return "true";
    }

}
