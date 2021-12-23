package com.cts.proj.repository;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cts.proj.model.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin, Long> {
	
	@Query("select a from Admin a where admin_id = ?1")
	Optional<Admin> findAdminById(long adminId);
	
	@Transactional
	@Modifying
	@Query("update Admin a set first_name = ?1, last_name = ?2 where admin_id = ?3")
	void setAdminInfoById(String firstname, String lastname,Long userId);


}
