package cch.dao;


import cch.entity.Person;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;
import org.springframework.data.repository.query.Param;

public interface PersonRepository extends Repository<Person,Integer> {

    @Query("select p from Person p where p.id = :id")
    Person getPerson(@Param("id") Integer id);

}
