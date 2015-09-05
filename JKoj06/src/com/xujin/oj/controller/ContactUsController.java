package com.xujin.oj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xujin.oj.auth.AuthClass;

@Controller("contactController")
@AuthClass("login")
public class ContactUsController {
	
	@RequestMapping(value="/contactUs",method=RequestMethod.GET)
	public String ContactUs(Model model) {
		
		return "contact/contactUs";
	}
	
}
