package cch.dao;

import cch.entity.Resume;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface ResumeRepository extends Repository<Resume,Integer> {

    @Query("select r from Resume r where r.user_id = :id")
    Resume getByUserId(@Param("id") Integer id);

    List<Resume> findAllBySex(String ad);

    <S extends Resume> S save(S entity);

    @Modifying
    @Transactional
    @Query("update Resume r set r.address_now=:address,r.work_exp=:exp,r.sex=:sex" +
            ",r.birth=:birth,r.work_state=:workstate,r.email=:email where r.user_id=:id")
    void updateXinXi(@Param("address") String address,@Param("exp") String exp,
                     @Param("sex") String sex,@Param("birth") String birth,
                     @Param("workstate") String state,@Param("email") String email,
                     @Param("id") Integer id);

    @Modifying
    @Transactional
    @Query("update Resume r set r.salary =:salary where r.user_id=:id")
    void updateXinSalary(@Param("salary") String salary,@Param("id") Integer id);

}
