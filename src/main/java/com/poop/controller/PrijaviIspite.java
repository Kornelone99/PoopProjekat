package com.poop.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poop.model.Predmet;
import com.poop.model.Student;
import com.poop.services.PredmetService;
import com.poop.services.StudentService;

@Controller
public class PrijaviIspite {
	
	@Autowired
	StudentService studentService;
	
	@Autowired
	PredmetService predmetService;

	@RequestMapping("/student/prijavi-ispite")
	public String createStudent(HttpServletRequest request) {

		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			String username = ((UserDetails) principal).getUsername();
			System.out.println("Username: " + username);
			Student student = studentService.findByEmail(username);
		//	System.out.println(student);
		//	request.setAttribute("student", student);
			List<Predmet> predmeti = predmetService.findByGodina(student.getGodina());
			System.out.println("Predmeti:"+predmeti);
			System.out.println(predmeti);
			request.setAttribute("mode", "PRIJAVI_ISPIT");
			request.setAttribute("student", student);
			request.setAttribute("predmeti", predmeti);
		} else {
			String username = principal.toString();
			System.out.println("Nema Username: " + username);
		}
		return "prijavaIspita";
	}
}