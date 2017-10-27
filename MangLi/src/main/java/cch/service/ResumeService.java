package cch.service;

import cch.entity.Resume;
import cch.entity.WillWork;
import cch.service.Exce.ResumeException;

public interface ResumeService {
    Resume findByUserId(Integer userId) throws ResumeException;

    Resume updateXin(Resume resume) throws ResumeException;

    Resume updateSalary(Resume resume) throws  ResumeException;

    WillWork updateQiuZhi(WillWork willWork) throws ResumeException;

    WillWork findByResumeId(String resume_id) throws ResumeException;
}
