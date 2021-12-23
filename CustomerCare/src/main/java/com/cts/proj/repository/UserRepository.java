package com.cts.proj.repository;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.cts.proj.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

	@Query(value="select * from user u where user_id=:userId and phone_number=:mob and email_id=:email ", nativeQuery=true)
	User findUser(@Param("userId") String userId,@Param("mob") String mob,@Param("email") String email);

	@Query("select u from User u where user_id = ?1")
	Optional<User> findUserById(long userId);
	
	@Query(value="select * from user u where email_id=:email", nativeQuery=true)
	User findUser(@Param("email") String email);
	
	@Transactional
	@Modifying
	@Query("update User u set first_name = ?1, last_name = ?2, phone_number=?3, gender=?4 where user_id = ?5")
	void setUserInfoById(String firstname, String lastname,Long phoneNumber,String gender, Long userId);

}
