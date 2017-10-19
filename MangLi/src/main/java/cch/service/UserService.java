package cch.service;

import cch.entity.User;
import cch.service.Exce.UserException;

public interface UserService {

    //根据电话号码查询用户信息
    User findByPhone(String phone, String password) throws UserException;

}
