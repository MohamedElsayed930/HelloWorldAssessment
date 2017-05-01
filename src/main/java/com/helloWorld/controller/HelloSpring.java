package com.helloWorld.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloSpring {
	/**
	 * Main Controller
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/hello")
	public String helloMan(Model model) {
		model.addAttribute("message", "Hello Mr.Mohamed");
		return "home";
	}
}
