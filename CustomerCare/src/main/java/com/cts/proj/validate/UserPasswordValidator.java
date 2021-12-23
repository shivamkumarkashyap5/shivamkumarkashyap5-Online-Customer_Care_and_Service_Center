package com.cts.proj.validate;

import java.security.NoSuchAlgorithmException;

import javax.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.cts.proj.model.Complaint;
import com.cts.proj.model.User;
import com.cts.proj.security.SecureWithSHA256;
import com.cts.proj.service.UserService;

@Service
public class UserPasswordValidator implements Validator {

	@Autowired
	UserService userService;

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return User.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		User user = (User) target;

		try {
			if (!SecureWithSHA256.getSHA(user.getTempPassword()).equals(userService.getPasswordSHA(user.getUserId()))) {
				errors.rejectValue("tempPassword", "passwordError", "Please Enter Correct Password");
			}
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (EntityNotFoundException e) {
			// TODO: handle exception
			errors.rejectValue("userId", "UserIdNotPresent", "This User has not registered yet");
		}

	}

}
