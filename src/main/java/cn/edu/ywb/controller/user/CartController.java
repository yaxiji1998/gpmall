package cn.edu.ywb.controller.user;

import cn.edu.ywb.pojo.Cart;
import cn.edu.ywb.pojo.User;
import cn.edu.ywb.service.user.ICartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/cart")
public class CartController {
    @Autowired
    private ICartService cartService;

    @RequestMapping("/addToCart.do")
    @ResponseBody
    public String addToCart(Integer gid, Integer number, HttpServletRequest request){
        User user = (User)request.getSession().getAttribute("user");
        Integer uid = user.getId();
        System.out.println(uid);
        cartService.addToCart(gid,uid,number);
        return "true";
    }


    @ResponseBody
    @RequestMapping("/findCartByUserId.do")
    public String findCartByUserId(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("user");
        List<Cart> cartList = cartService.findCartByUserId(user.getId());
        request.getSession().setAttribute("cartList",cartList);

        return "true";
    }

    @ResponseBody
    @RequestMapping("/updateCartNumberById.do")
    public String updateCartNumberById(Integer shoppingNumber,Integer id,HttpServletRequest request){
        cartService.updateCartNumberById(shoppingNumber,id);
        List<Cart> cartList = (List<Cart>) request.getSession().getAttribute("cartList");
        Integer uid = cartList.get(0).getUserId();
        List<Cart> lll = cartService.findCartByUserId(uid);
        request.getSession().setAttribute("cartList",lll);
        return "true";
    }


}
