package cch.dao;

import cch.entity.User;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

public interface UserRepository extends Repository<User,Integer> {

    @Query(value = "select * from users where user_id = :id",nativeQuery = true)
    User getUserById(@Param("id") Integer id);

    @Query(value = "select * from users where phone = :phone",nativeQuery = true)
    User getUserByPhone(@Param("phone") String phone);

    @Modifying
    @Transactional
    @Query(value = "update users set token = :token where user_id = :id",nativeQuery = true)
    void updateTokenById(@Param("token") String token,@Param("id") Integer id);
}
