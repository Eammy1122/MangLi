package cch.web;

import cch.entity.Resume;
import cch.entity.WillWork;
import cch.service.Exce.ResumeException;
import cch.service.ResumeService;
import cch.util.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("resume")
public class ResumeController extends AbstractController{

    @Autowired
    private ResumeService resumeService;

    @RequestMapping("/loadResume")
    public JsonResult<Resume> loadResume(String user_id){
        int id = Integer.parseInt(user_id);
        Resume resume = resumeService.findByUserId(id);
        return new JsonResult<Resume>(resume);
    }

    @RequestMapping("/updateXinXi")
    public JsonResult<Resume> updateXinXi(Resume resume){
        System.out.println(resume);
        Resume r = resumeService.updateXin(resume);
        return new JsonResult<Resume>(r);
    }

    @RequestMapping("/updateSalry")
    public JsonResult<Resume> updateSalry(Resume resume){
        System.out.println(resume);
        Resume r = resumeService.updateSalary(resume);
        return new JsonResult<Resume>(r);
    }

    @RequestMapping("/loadQiuZhi")
    public JsonResult<WillWork> loadQiuZhi(String resume_id){
        System.out.println(resume_id);
        WillWork w = resumeService.findByResumeId(resume_id);
        return  new JsonResult<WillWork>(w);
    }



    @SuppressWarnings("rawtypes")
    @ExceptionHandler(ResumeException.class)
    @ResponseBody
    public JsonResult work(ResumeException e){
        e.printStackTrace();
        return new JsonResult(2,e);
    }


}
