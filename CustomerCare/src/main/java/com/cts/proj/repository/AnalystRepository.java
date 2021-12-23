package com.cts.proj.repository;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.cts.proj.model.Analyst;

@Repository
public interface AnalystRepository extends JpaRepository<Analyst, Long> {
	
	@Query("select a from Analyst a where support_level = ?1")
	List<Analyst> getAnalystOfSupportLevel(String supportLevel);

	@Query("select a from Analyst a where support_level <> ?1")
	List<Analyst> getAllAnalystNotOfSupportLevel(String supportLevel);

	@Query("select a from Analyst a where support_level > ?1")
	List<Analyst> getAllAnalystGreaterThanSupportLevel(String supportLevel);

	@Query("select a from Analyst a where support_level < ?1")
	List<Analyst> getAllAnalystLessThanSupportLevel(String supportLevel);
	
	@Query("select a from Analyst a where analyst_id = ?1")
	Optional<Analyst> findAnalystById(long analystId);
	
	@Query("select a from Analyst a where email_id = ?1")
	Analyst getAnalystFromMailId(String mailId);
	
	@Query(value="select * from analyst a where analyst_id=:analystId and phone_number=:mob and email_id=:email ", nativeQuery=true)
	Analyst findAnalyst(@Param("analystId") String analystId,@Param("mob") String mob,@Param("email") String email);
	
	@Transactional
	@Modifying
	@Query("update Analyst a set first_name = ?1, last_name = ?2, phone_number=?3, gender=?4 where analyst_id = ?5")
	void setAnalystInfoById(String firstname, String lastname,Long phoneNumber,String gender, Long analystId);
	
}
