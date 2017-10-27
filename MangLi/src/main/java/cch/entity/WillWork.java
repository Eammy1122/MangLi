package cch.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "willwork")
@Entity
public class WillWork {

    @Id
    @GeneratedValue
    private Integer will_id;
    private String salary;
    private String address;
    private String will_work;
    private String trade;
    private String will_type;
    private Integer resume_id;

    public Integer getWill_id() {
        return will_id;
    }

    public void setWill_id(Integer will_id) {
        this.will_id = will_id;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getWill_work() {
        return will_work;
    }

    public void setWill_work(String will_work) {
        this.will_work = will_work;
    }

    public String getTrade() {
        return trade;
    }

    public void setTrade(String trade) {
        this.trade = trade;
    }

    public String getWill_type() {
        return will_type;
    }

    public void setWill_type(String will_type) {
        this.will_type = will_type;
    }

    public Integer getResume_id() {
        return resume_id;
    }

    public void setResume_id(Integer resume_id) {
        this.resume_id = resume_id;
    }

    @Override
    public String toString() {
        return "WillWork{" +
                "will_id=" + will_id +
                ", salary='" + salary + '\'' +
                ", address='" + address + '\'' +
                ", will_work='" + will_work + '\'' +
                ", trade='" + trade + '\'' +
                ", will_type='" + will_type + '\'' +
                ", resume_id=" + resume_id +
                '}';
    }
}
