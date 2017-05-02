package com.helloWorld.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.helloWorld.model.User;
import com.helloWorld.repository.UserRepository;

@Controller
@SessionAttributes("user")
public class UserController {
	@Autowired
	private UserRepository userRepository;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String addUserGet(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "user";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String addUserPost(@Valid @ModelAttribute("user") User user, BindingResult result) {
		if (result.hasErrors()) {
			return "user";
		}
		userRepository.save(user);
		return "confirmation";
	}

	@RequestMapping(value = "/report", method = RequestMethod.GET)
	public String getAllUsers(Model model) {
//		List<User> list = userRepository.list();
		model.addAttribute("message", userRepository.list());
		return "report";
	}
}