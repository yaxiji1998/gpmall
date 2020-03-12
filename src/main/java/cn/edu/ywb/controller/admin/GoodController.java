package cn.edu.ywb.controller.admin;

import cn.edu.ywb.pojo.Good;
import cn.edu.ywb.service.admin.IGoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.*;

@Controller
@RequestMapping("/good")
public class GoodController {
    @Autowired
    private IGoodService goodService;


    @RequestMapping("/addGood.do")
    public String addGood(Good good , MultipartFile file, HttpServletRequest request) throws IOException {
        String fileName="";
        String uploadFileName = file.getOriginalFilename();
        String extendName = uploadFileName.substring(uploadFileName.lastIndexOf(".")+1,uploadFileName.length());
        String uuid = UUID.randomUUID().toString().replace("-","").toUpperCase();
        fileName = uuid+"_"+uploadFileName;
        ServletContext context = request.getSession().getServletContext();
        String basePath = context.getRealPath("/images");
        System.out.println(context.getContextPath());
        File file1 = new File(basePath);
        if(!file1.exists()){
            file1.mkdir();
        }
        file.transferTo(new File(file1,fileName));
        good.setGpicture("/gpmall/images/"+fileName);
        System.out.println(good);

        Map<String,String> map = new HashMap<>();

        Boolean result = goodService.addGood(good);

        return "redirect:/adminpages/main.html";
    }

    @RequestMapping("/deleteGood.do")
    @ResponseBody
    public Map deletedGood(Good good){
        Map<String,String> map = new HashMap<>();
        Boolean result = goodService.deleteGood(good);
        //System.out.println(result);
        map.put("result",result.toString());
        return map;
    }

    @RequestMapping("/updateGood.do")
    @ResponseBody
    public Map updateGood(Good good){
        System.out.println(good);
        Map<String,String> map = new HashMap<>();
        Boolean result = goodService.updateGood(good);
        map.put("result",result.toString());
        return map;
    }

    @ResponseBody
    @RequestMapping("/findAllGood.do")
    public List<Good> findAllGood(){
        List<Good> all = null;
        all = goodService.findAllGood();
        return all;
    }

    @ResponseBody
    @RequestMapping("/findGoodByName.do")
    public List<Good> findGoodByName(@RequestParam(value = "goodName",required = true) String goodName){
        List<Good> all = goodService.findGoodByName(goodName);
        return all;
    }
    @ResponseBody
    @RequestMapping("/findGoodById.do")
    public Good findGoodById(Integer id){
        //System.out.println(id);
        Good good = goodService.findGoodById(id);
        //System.out.println(good);
        return good;
    }
}
