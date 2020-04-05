package cn.edu.ywb.controller.user;

import cn.edu.ywb.pojo.Order;
import cn.edu.ywb.pojo.User;
import cn.edu.ywb.service.user.IOrderService;
import org.aspectj.weaver.ast.Or;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    @ResponseBody
    @RequestMapping("/deleteOrderById.do")
    public Map deleteOrderById(Integer id){
        Map<String,String> map = new HashMap<>();
        orderService.deleteOrderById(id);
        map.put("result","true");
        return map;
    }

    @ResponseBody
    @RequestMapping("/findOrderByStatus/{status}.do")
    public List<Order> findOrderByStatus(@PathVariable Integer status){
        List<Order> list = orderService.findOrderByStatus(status);

        return list;
    }

    @ResponseBody
    @RequestMapping("/changeStatusById/{status}.do")
    public Map changeStatusById(Integer id,@PathVariable Integer status){
        Map<String,String> map = new HashMap<>();
        orderService.changeStatusById(id,status);
        map.put("result","true");
        return map;
    }
}
