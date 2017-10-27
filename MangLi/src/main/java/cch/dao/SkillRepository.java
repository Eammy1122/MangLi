package cch.dao;

import cch.entity.Skill;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface SkillRepository extends Repository<Skill,Integer> {

    @Query(value = "select * from skill", nativeQuery = true)
    List<Skill> getAll();

    <S extends Skill> S save(S entity);

    @Query("select s from Skill s where s.skill_id = :id")
    Skill getById(@Param("id") Integer id);

    void delete(Skill entity);

    @Modifying
    @Transactional
    @Query("update Skill s set s.skill_name = :name where s.skill_id = :id")
    void updateById(@Param("name") String name, @Param("id") Integer id);


    @Modifying
    @Transactional
    @Query("update Skill s set s.skill_name = :name,s.skill_level = :level where s.skill_id = :id")
    void updateSkill(@Param("name") String sk,@Param("level")String level, @Param("id") Integer id);

}
