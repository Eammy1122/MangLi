package cch.service.Impl;

import cch.dao.ResumeRepository;
import cch.dao.WillWorkRepository;
import cch.entity.Resume;
import cch.entity.WillWork;
import cch.service.Exce.ResumeException;
import cch.service.ResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;

@Service("resumeService")
public class ResumeServiceImpl implements ResumeService {

    @Autowired
    private ResumeRepository resumeRepository;

    @Autowired
    private WillWorkRepository willWorkRepository;

    @Override
    public Resume findByUserId(Integer userId) {
        Resume resume = new Resume();
        resume = resumeRepository.getByUserId(userId);
        return resume;
    }

    @Override
    public Resume updateXin(Resume resume) throws ResumeException {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        String time = df.format(new Date());
        String[] str1 = time.split("-");
        int t1 = Integer.parseInt(str1[0]);
        if(resume.getAddress_now()==null||resume.getAddress_now().trim().isEmpty()){
            throw new ResumeException("请输入现居住地址");
        }
        if(resume.getWork_exp()==null||resume.getWork_exp().trim().isEmpty()){
            throw new ResumeException("请选择工作经验");
        }
        if(resume.getSex()==null||resume.getSex().trim().isEmpty()){
            throw new ResumeException("请选择性别");
        }
        if(resume.getBirth()==null||resume.getBirth().trim().isEmpty()){
            throw new ResumeException("请选择出生日期");
        }
        String[] str2 = resume.getBirth().split("-");
        int t2 = Integer.parseInt(str2[0]);
        if(t2>t1){
            throw new ResumeException("出生日期有误");
        }
        if(resume.getWork_state()==null||resume.getWork_state().trim().isEmpty()){
            throw new ResumeException("请选择当前工作状态");
        }
        if(resume.getEmail()==null||resume.getEmail().trim().isEmpty()){
            throw new ResumeException("请输入邮箱地址");
        }
        Resume r1 = resumeRepository.getByUserId(resume.getUser_id());
        if(r1==null){
            resumeRepository.save(resume);
        }else{
            resumeRepository.updateXinXi(resume.getAddress_now(),resume.getWork_exp()
             ,resume.getSex(),resume.getBirth(),resume.getWork_state(),resume.getEmail()
            ,resume.getUser_id());
        }
        return resume;
    }

    @Override
    public Resume updateSalary(Resume resume) throws ResumeException {
        if(resume.getSalary()==null||resume.getSalary().trim().isEmpty()){
            throw new ResumeException("请填写当前收入");
        }
        resumeRepository.updateXinSalary(resume.getSalary(),resume.getUser_id());
        return resume;
    }

    @Override
    public WillWork updateQiuZhi(WillWork willWork) throws ResumeException {
        if(willWork.getSalary()==null||willWork.getSalary().trim().isEmpty()){
            throw new ResumeException("请填写期望的薪资");
        }
        if(willWork.getAddress()==null||willWork.getAddress().trim().isEmpty()){
            throw new ResumeException("请填写期望的地址");
        }
        if(willWork.getWill_work()==null||willWork.getWill_work().trim().isEmpty()){
            throw new ResumeException("请填写期望的工作");
        }
        if(willWork.getTrade()==null||willWork.getTrade().trim().isEmpty()){
            throw new ResumeException("请填写期望的行业");
        }
        if(willWork.getWill_type()==null||willWork.getWill_type().trim().isEmpty()){
            throw new ResumeException("请填写期望的工作类型");
        }
        WillWork w = willWorkRepository.getByResumeId(willWork.getResume_id());
        if(w==null){
            willWorkRepository.save(willWork);
        }else{
            willWorkRepository.updateQiu(willWork.getSalary(),willWork.getAddress(),
                    willWork.getWill_work(),willWork.getTrade(),
                    willWork.getWill_type(),willWork.getResume_id());
        }
        return willWork;
    }

    @Override
    public WillWork findByResumeId(String resume_id) throws ResumeException {
        if(resume_id==null||resume_id.trim().isEmpty()){
            return null;
        }
        return willWorkRepository.getByResumeId(Integer.parseInt(resume_id));
    }
}
