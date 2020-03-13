package cn.edu.ywb.controller.user;

import cn.edu.ywb.pojo.Address;
import cn.edu.ywb.pojo.User;
import cn.edu.ywb.service.user.IAddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/address")
public class AddressController {
    @Autowired
    private IAddressService addressService;

    @ResponseBody
    @RequestMapping("/findAddressByUserId.do")
    public String findAddressByUserId(HttpServletRequest request){
        HttpSession session = request.getSession();
        Integer userId = ((User) session.getAttribute("user")).getId();
        List<Address> addressList = addressService.findAddressByUserId(userId);

        session.setAttribute("addressList",addressList);
        return "true";
    }

    @ResponseBody
    @RequestMapping("/modifyAddressById.do")
    public String modifyAddressById(Address address,HttpServletRequest request){

        HttpSession session = request.getSession();
        Integer userId = ((User) session.getAttribute("user")).getId();
        address.setUserId(userId);
        addressService.modifyAddressById(address);
        List<Address> addressList = addressService.findAddressByUserId(userId);
        session.setAttribute("addressList",addressList);

        return "true";
    }
}
