package com.cts.proj.validate;

import java.security.NoSuchAlgorithmException;

import javax.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.cts.proj.model.Analyst;
import com.cts.proj.model.Complaint;
import com.cts.proj.security.SecureWithSHA256;
import com.cts.proj.service.AnalystService;

@Service
public class AnalystPasswordValidator implements Validator {

	@Autowired
	AnalystService analystService;

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return Analyst.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		Analyst analyst = (Analyst) target;
		try {
			if (!SecureWithSHA256.getSHA(analyst.getTempPassword())
					.equals(analystService.getPasswordSHA(analyst.getAnalystId()))) {
				errors.rejectValue("tempPassword", "passwordError", "Please Enter Correct Password");
			}
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (EntityNotFoundException e) {
			// TODO: handle exception
			errors.rejectValue("analystId", "Id Not Present", "This analyst has not registered yet");
		}

	}

}
