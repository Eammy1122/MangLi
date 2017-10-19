package cch.service.Impl;

import cch.dao.UserRepository;
import cch.entity.User;
import cch.service.Exce.UserException;
import cch.service.UserService;
import cch.util.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service("userService")
public class UserServiceImpl implements UserService{

    @Autowired
    private UserRepository userRepository;

    public User findByPhone(String phone, String password){
        if(phone==null||phone.trim().isEmpty()) {
            throw new UserException("手机号不能为空");
        }
        User u = userRepository.getUserByPhone(phone);
        if(u==null){
            throw new UserException("手机号输入错误");
        }
        if(password==null||password.trim().isEmpty()){
            throw new UserException("密码不能为空");
        }
        //String md5 = Utils.crypt(password);
        if(!u.getPassword().equals(password)){
            throw new UserException("密码输入错误");
        }
        String token= UUID.randomUUID().toString();
        userRepository.updateTokenById(token,u.getUser_id());

        return u;
    }
}
