package cch.web;

import cch.entity.User;
import cch.service.Exce.UserException;
import cch.service.UserService;
import cch.util.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/user")
public class UserController extends AbstractController{

    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public JsonResult<User> login(String phone, String password){
        User user = userService.findByPhone(phone,password);
        return new JsonResult<User>(user);
    }



    @SuppressWarnings("rawtypes")
    @ExceptionHandler(UserException.class)
    @ResponseBody
    public JsonResult work(UserException e){
        e.printStackTrace();
        return new JsonResult(2,e);
    }
}
