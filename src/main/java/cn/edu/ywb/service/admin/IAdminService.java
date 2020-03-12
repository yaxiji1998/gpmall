package cn.edu.ywb.service.admin;


import org.springframework.stereotype.Service;

public interface IAdminService {
    Boolean login(String username, String password);
}
