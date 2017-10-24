package cch.web;

import org.springframework.core.env.SystemEnvironmentPropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ToController {

    @RequestMapping("/toLogin")
    public String toLogin(){
        return "login";
    }

    @RequestMapping("/toPersonal")
    public String toPersonal(){
        return "personal";
    }

    @RequestMapping("/toResume")
    public String toResume(){
        return "resume";
    }

    @RequestMapping("hello")
    @ResponseBody
    public String helloworld(){
        System.out.println("hello world");
        return "hello world";
    }
}
