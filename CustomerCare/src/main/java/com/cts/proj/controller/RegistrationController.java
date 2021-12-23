package com.cts.proj.controller;

import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cts.proj.model.Admin;
import com.cts.proj.model.Analyst;
import com.cts.proj.model.AnalystSecretQuestion;
import com.cts.proj.model.LoginDetails;
import com.cts.proj.model.User;
import com.cts.proj.model.UserSecretQuestion;
import com.cts.proj.security.SecureWithSHA256;
import com.cts.proj.service.AdminService;
import com.cts.proj.service.AnalystSecretQuestionService;
import com.cts.proj.service.AnalystService;
import com.cts.proj.service.LoginDetailsService;
import com.cts.proj.service.SecretQuestionService;
import com.cts.proj.service.UserSecretQuestionService;
import com.cts.proj.service.UserService;
import com.cts.proj.validate.AnalystValidator;
import com.cts.proj.validate.UserValidator;

@Controller
public class RegistrationController {

	@Autowired
	private AnalystService analystService;
	@Autowired
	private UserService userService;
	@Autowired
	private AdminService adminService;
	@Autowired
	AnalystValidator analystValidator;
	@Autowired
	UserValidator userValidator;
	@Autowired
	UserSecretQuestionService userSecretQuestionService;
	@Autowired
	AnalystSecretQuestionService analystSecretQuestionService;
	@Autowired
	SecretQuestionService secretQuestionService;
	@Autowired
	LoginDetailsService loginDetailsService;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}

//	@RequestMapping(value = "/analyst-registration", method = RequestMethod.GET)
//	public String analystRegistration(@ModelAttribute Analyst analyst) {
//		return "analyst-reg";
//	}

	@RequestMapping(value = "/register-analyst", method = RequestMethod.POST)
	public String registerAnalyst(@Validated @ModelAttribute("analyst") Analyst analyst, BindingResult result,
			ModelMap model) {

		analystValidator.validate(analyst, result);

		if (result.hasErrors()) {
			model.put("user", new User());
			model.put("admin", new Admin());
			model.put("analystActive", true);
			model.put("userActive", false);
			model.put("adminActive", false);
			List<String> questions = secretQuestionService.getAllQuestionDescription();
			model.put("secretQuestions", questions);
			return "role-selection";
		}
		try {
			analyst.setPassword(SecureWithSHA256.getSHA(analyst.getPassword()));
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		long lastAnalystId = analystService.getLastId();
		analyst.setAnalystId(lastAnalystId + 1);

		System.out.println("last A Id : " + lastAnalystId);
		long lastSqId = analystSecretQuestionService.getLastId();

		AnalystSecretQuestion qsn1 = new AnalystSecretQuestion(++lastSqId,
				analyst.getSecretQuestionList().get(0).getAnswer(), secretQuestionService.getQuestionById(9000));
		qsn1.setAnalyst(analyst);
		AnalystSecretQuestion qsn2 = new AnalystSecretQuestion(++lastSqId,
				analyst.getSecretQuestionList().get(1).getAnswer(), secretQuestionService.getQuestionById(9001));
		qsn2.setAnalyst(analyst);
		AnalystSecretQuestion qsn3 = new AnalystSecretQuestion(++lastSqId,
				analyst.getSecretQuestionList().get(2).getAnswer(), secretQuestionService.getQuestionById(9002));
		qsn3.setAnalyst(analyst);

		List<AnalystSecretQuestion> questionList = new ArrayList<>();
		questionList.add(qsn1);
		questionList.add(qsn2);
		questionList.add(qsn3);
		
		System.out.println("\n\n" + qsn1 + "\n" + qsn2 + "\n" + qsn3 + "\n\n");

		analyst.setSecretQuestionList(questionList);

		System.out.println(analyst);
		analystService.addAnalyst(analyst);
		loginDetailsService.addLoginDetails(
				new LoginDetails(Long.toString(analyst.getAnalystId()), analyst.getTempPassword(), "ROLE_ANALYST"));
		model.put("isRegisrered", true);
		model.put("analystId", analyst.getAnalystId());
		return "analyst-reg-status";
	}

//	@RequestMapping(value = "/user-registration", method = RequestMethod.GET)
//	public String userRegistration(@ModelAttribute User user) {
//		return "user-reg";
//	}

	@RequestMapping(value = "/register-user", method = RequestMethod.POST)
	public String registerUser(@Validated @ModelAttribute User user, BindingResult result, ModelMap model) {

		System.out.println("Hello");
//		System.out.println(user);

		userValidator.validate(user, result);
		if (result.hasErrors()) {
			System.out.println(result);
			model.put("analyst", new Analyst());
			model.put("admin", new Admin());
			model.put("userActive", true);
			model.put("analystActive", false);
			model.put("adminActive", false);
			List<String> questions = secretQuestionService.getAllQuestionDescription();
			model.put("secretQuestions", questions);
			return "role-selection";
		}
		try {
			user.setPassword(SecureWithSHA256.getSHA(user.getPassword()));
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		long lastUserId = userService.getLastId();
		user.setUserId(lastUserId + 1);

		long lastSqId = userSecretQuestionService.getLastId();

		UserSecretQuestion qsn1 = new UserSecretQuestion(++lastSqId, user.getSecretQuestionList().get(0).getAnswer(),
				secretQuestionService.getQuestionById(9000));
		qsn1.setUser(user);
		UserSecretQuestion qsn2 = new UserSecretQuestion(++lastSqId, user.getSecretQuestionList().get(1).getAnswer(),
				secretQuestionService.getQuestionById(9001));
		qsn2.setUser(user);
		UserSecretQuestion qsn3 = new UserSecretQuestion(++lastSqId, user.getSecretQuestionList().get(2).getAnswer(),
				secretQuestionService.getQuestionById(9002));
		qsn3.setUser(user);

		List<UserSecretQuestion> questionList = new ArrayList<>();
		questionList.add(qsn1);
		questionList.add(qsn2);
		questionList.add(qsn3);

		user.setSecretQuestionList(questionList);
		System.out.println("\n\nBefore Adding : " + user);
		userService.addUser(user);
		loginDetailsService.addLoginDetails(
				new LoginDetails(Long.toString(user.getUserId()), user.getTempPassword(), "ROLE_USER"));

		System.out.println("\n\n" + qsn1);

		model.put("isRegisrered", true);
		model.put("userId", user.getUserId());
		return "user-reg-status";
	}

	@ModelAttribute("genderList")
	public List<String> populateGender() {
		List<String> genderList = new ArrayList<String>();
		genderList.add("Male");
		genderList.add("Female");
		genderList.add("Other");
		return genderList;
	}

	@ModelAttribute("supportLevel")
	public Map<String, String> getCategories() {
		Map<String, String> categories = new HashMap<>();
		categories.put("L1", "Level 1");
		categories.put("L2", "Level 2");
		categories.put("L3", "Level 3");
		return categories;
	}
}
