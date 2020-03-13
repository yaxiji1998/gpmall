package cn.edu.ywb.controller.user;

import cn.edu.ywb.pojo.Order;
import cn.edu.ywb.pojo.User;
import cn.edu.ywb.service.user.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    private IOrderService orderService;


    @ResponseBody
    @RequestMapping("/findOrderByUserId.do")
    public String findOrderByUserId(HttpServletRequest request){
        HttpSession session = request.getSession();
        Integer userId = ((User) session.getAttribute("user")).getId();
        List<Order> orderList = orderService.findOrderByUserId(userId);
        session.setAttribute("orderList",orderList);
        return "true";
    }

    @ResponseBody
    @RequestMapping("/receive.do")
    public String receive(Integer id){
        orderService.receive(id);

        return "true";
    }
}
