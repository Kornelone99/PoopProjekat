package com.poop.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poop.model.Predmet;
import com.poop.model.Student;
import com.poop.services.PredmetService;

@Controller
public class PredmetAppController {
	
	@Autowired
	private PredmetService predmetService;
	
	@RequestMapping("/create-predmet")
	public String createStudent(HttpServletRequest request) {
	//	request.setAttribute("mode", "MODE_CREATE_PREDMET");
		return "createPredmet";
	}
	
	@PostMapping("/save-predmet")
	public String registerStudent(@ModelAttribute Predmet predmet,BindingResult bindingResult,HttpServletRequest request) {
		predmetService.saveMyPredmet(predmet);
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}
	
	@GetMapping("/show-subjects")
	public String showAllStudents(HttpServletRequest request) {
		request.setAttribute("mode", "ALL_SUBJECTS");
		request.setAttribute("subjects", predmetService.showAllSubjects());
		return "showPredmets";
	}
	
	@RequestMapping("/delete-subject")
	public String deleteStudent(@RequestParam int id, HttpServletRequest request) {
		predmetService.deleteMySubject(id);
		request.setAttribute("subjects", predmetService.showAllSubjects());
		request.setAttribute("mode", "ALL_SUBJECTS");
		return "showPredmets";
	}
	
	@RequestMapping("/edit-subject")
	public String editStudent(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("predmet", predmetService.editSubject(id));
	//	request.setAttribute("mode", "MODE_UPDATE");
		return "updateSubject";
	}
}
