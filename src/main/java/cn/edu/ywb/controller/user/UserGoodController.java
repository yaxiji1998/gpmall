package cn.edu.ywb.controller.user;

import cn.edu.ywb.pojo.Good;
import cn.edu.ywb.pojo.GoodsType;
import cn.edu.ywb.service.admin.IGoodService;
import cn.edu.ywb.service.admin.ITypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/userGood")
public class UserGoodController {
    @Autowired
    private IGoodService goodService;
    @Autowired
    private ITypeService goodTypeService;

    @RequestMapping("/saveGoodInfoToSession.do")
    @ResponseBody
    public String saveGoodInfoToSession(HttpServletRequest request){
        List<Good> allGood = goodService.findAllGood();
        List<GoodsType> allType = goodTypeService.findAllGoodType();
        request.getSession().setAttribute("allGood",allGood);
        request.getSession().setAttribute("allType",allType);
        return "true";
    }
}
