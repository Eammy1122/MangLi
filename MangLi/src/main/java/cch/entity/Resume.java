package cch.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "resumes")
@Entity
public class Resume {
    @Id
    @GeneratedValue
    private Integer resume_id;
    private String address_now;
    private String work_exp;
    private String sex;
    private String birth;
    private String work_state;
    private String email;
    private Integer user_id;
    private String salary;
    private String resume_name;
    private String resume_time;
    private Integer resume_state;

    public Integer getResume_id() {
        return resume_id;
    }

    public void setResume_id(Integer resume_id) {
        this.resume_id = resume_id;
    }

    public String getAddress_now() {
        return address_now;
    }

    public void setAddress_now(String address_now) {
        this.address_now = address_now;
    }

    public String getWork_exp() {
        return work_exp;
    }

    public void setWork_exp(String work_exp) {
        this.work_exp = work_exp;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getWork_state() {
        return work_state;
    }

    public void setWork_state(String work_state) {
        this.work_state = work_state;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getResume_name() {
        return resume_name;
    }

    public void setResume_name(String resume_name) {
        this.resume_name = resume_name;
    }

    public String getResume_time() {
        return resume_time;
    }

    public void setResume_time(String resume_time) {
        this.resume_time = resume_time;
    }

    public Integer getResume_state() {
        return resume_state;
    }

    public void setResume_state(Integer resume_state) {
        this.resume_state = resume_state;
    }

    @Override
    public String toString() {
        return "Resume{" +
                "resume_id=" + resume_id +
                ", address_now='" + address_now + '\'' +
                ", work_exp='" + work_exp + '\'' +
                ", sex='" + sex + '\'' +
                ", birth='" + birth + '\'' +
                ", work_state='" + work_state + '\'' +
                ", email='" + email + '\'' +
                ", user_id=" + user_id +
                ", salary='" + salary + '\'' +
                ", resume_name='" + resume_name + '\'' +
                ", resume_time='" + resume_time + '\'' +
                ", resume_state=" + resume_state +
                '}';
    }
}
