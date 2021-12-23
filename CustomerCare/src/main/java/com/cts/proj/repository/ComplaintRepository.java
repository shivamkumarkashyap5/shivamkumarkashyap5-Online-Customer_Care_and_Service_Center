package com.cts.proj.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.cts.proj.model.Complaint;

@Repository
public interface ComplaintRepository extends PagingAndSortingRepository<Complaint, Long> {

	@Query("select c FROM Complaint c where assigned_analyst_id = ?1")
	Page<Complaint> findComplaintsByAnalyst(Pageable pageable, long analystId);

	@Query("select c from Complaint c where complaint_user_id = ?1")
	List<Complaint> findComplaintForUser(long userId);
	
	@Query(value="select * from complaint c where category like %:keyword% ", nativeQuery=true)
	List<Complaint> findByKeyword(@Param("keyword") String keyword);
	
	@Query(value="select * from complaint c where date(date_of_complaint)=:date", nativeQuery=true)
	List<Complaint> findByDate(@Param("date") String date);
	
	@Query(value="select * from complaint c where complaint_user_id=:userId ", nativeQuery=true)
	List<Complaint> findByUserId(@Param("userId") String userId);	
	
	@Query(value="select * from complaint c where complaint_id=:complaintId ", nativeQuery=true)
	List<Complaint> findComplaintId(@Param("complaintId") String complaintId);
		
	/*
	 * 
	 */
	@Query("select c from Complaint c where category like ?1 and date_of_complaint like ?2")
//	@Query(value="select * from complaint c where category like %:keyword% and date(date_of_complaint)=:date", nativeQuery=true)
	Page<Complaint> findByFiltersPageanation(Pageable pageable , String keyword, String date);
	
	
	@Query("select c from Complaint c where complaint_user_id = ?1")
	Page<Complaint> findComplaintByUserIdPaged(Pageable pageable, long userId);
	

}
