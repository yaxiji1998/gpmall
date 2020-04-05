package cn.edu.ywb.controller.admin;

import cn.edu.ywb.pojo.Good;
import cn.edu.ywb.pojo.GoodsType;
import cn.edu.ywb.service.admin.ITypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/type")
public class TypeController {
    @Autowired
    private ITypeService typeService;

    @RequestMapping("/addType.do")

    public
    String addType(GoodsType type){
        Map<String,String> map = new HashMap<>();
        Boolean result = typeService.addType(type);
        map.put("result",result.toString());
        return "redirect:/adminpages/manageType.html";
    }

    @RequestMapping("/deleteType.do")
    @ResponseBody
    public Map deleteType(GoodsType type){
        Map<String,String> map = new HashMap<>();
        Boolean result = typeService.deleteType(type);
        map.put("result",result.toString());
        return map;
    }



    @ResponseBody
    @RequestMapping("/findAllGoodType.do")
    public List<GoodsType> findAllType(){
        List<GoodsType> all = null;
        all = typeService.findAllGoodType();
        return all;
    }
}
