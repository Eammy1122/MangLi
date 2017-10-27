package cch.dao;

import cch.entity.WillWork;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;


public interface WillWorkRepository extends Repository<WillWork,Integer> {

    @Query("select w from WillWork w where w.resume_id = :id")
    WillWork getByResumeId(@Param("id") Integer id);

    <S extends WillWork> S save(S entity);

    @Modifying
    @Transactional
    @Query("update WillWork w set w.salary=:salary,w.address=:address,w.will_work=:willwork" +
            ",w.trade=:trade,w.will_type=:type where w.resume_id = :id")
    void updateQiu(@Param("salary") String sal,@Param("address") String add,
                   @Param("willwork") String will,@Param("trade") String trade,
                   @Param("type") String type,@Param("id") Integer id);
}
