package com.tommy.dojoSurvey;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	boolean submitted = false;
	
	@RequestMapping("")
	public String indexPage1() {
		return "index.jsp";
	}
	
	@RequestMapping("/")
	public String indexPage2() {
		return "index.jsp";
	}
	
	@RequestMapping(value="/formSubmit", method=RequestMethod.POST)
	public String formAction(@RequestParam(value="nameInput") String nameInput, @RequestParam(value="locationInput") String locationInput, 
			@RequestParam(value="languageInput") String languageInput, @RequestParam(value="commentInput") String commentInput, HttpSession session) {
		System.out.println("Location ->>>>>>> " + locationInput);
		
		submitted = true;
		session.setAttribute("nameOutput", nameInput);
		session.setAttribute("locationOutput", locationInput);
		session.setAttribute("languageOutput", languageInput);
		session.setAttribute("commentOutput", commentInput);
		
		return "redirect:/result";
	}
	
	@RequestMapping("/result")
	public String formPage(HttpSession session) {
		
		if(submitted == true) {
			return "result.jsp";
		} else {
			return "notFound.jsp";
		}
	}
}
