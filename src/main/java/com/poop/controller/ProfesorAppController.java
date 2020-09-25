package com.poop.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poop.email.EmailCfg;
import com.poop.model.Predmet;
import com.poop.model.Profesor;
import com.poop.services.PredmetService;
import com.poop.services.ProfesorService;

@Controller
public class ProfesorAppController {
	
	@Autowired
	private ProfesorService profesorService;
	
	private EmailCfg emailCfg;
	
	
	
	public ProfesorAppController(EmailCfg emailCfg) {
		super();
		this.emailCfg = emailCfg;
	}

	@RequestMapping("/create-profesor")
	public String createStudent(HttpServletRequest request) {
	//	request.setAttribute("mode", "MODE_CREATE_PREDMET");
		return "createProfesor";
	}
	
	@PostMapping("/save-profesor")
	public String registerProfesor(@ModelAttribute Profesor profesor,BindingResult bindingResult,HttpServletRequest request) {
		profesorService.saveMyProfesor(profesor);
		request.setAttribute("profesors", profesorService.showAllProfesors());
		request.setAttribute("mode", "ALL_PROFESORS");
		
		JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        mailSender.setHost(this.emailCfg.getHost());
        mailSender.setPort(this.emailCfg.getPort());
        mailSender.setUsername(this.emailCfg.getUsername());
        mailSender.setPassword(this.emailCfg.getPassword());

        // Create an email instance
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setFrom("imisluzba@gmail.com");
        mailMessage.setTo(profesor.getJmg());
        mailMessage.setSubject("Upisani ste u studentsku sluzbu");
        mailMessage.setText("Sifra je " + profesor.getPassword() + " a username je " + profesor.getJmg());

        // Send mail
        mailSender.send(mailMessage);
		
		return "showProfesors";
	}
	
	@GetMapping("/show-profesors")
	public String showAllStudents(HttpServletRequest request) {
		request.setAttribute("mode", "ALL_PROFESORS");
		request.setAttribute("profesors", profesorService.showAllProfesors());
		return "showProfesors";
	}
	
	@RequestMapping("/delete-profesor")
	public String deleteProfesor(@RequestParam Long id, HttpServletRequest request) {
		profesorService.deleteMyProfesor(id);;
		request.setAttribute("profesors", profesorService.showAllProfesors());
		request.setAttribute("mode", "ALL_PROFESORS");
		return "showProfesors";
	}
	
	@RequestMapping("/edit-profesor")
	public String editStudent(@RequestParam Long id, HttpServletRequest request) {
		request.setAttribute("profesor", profesorService.editProfesor(id));
	//	request.setAttribute("mode", "MODE_UPDATE");
		return "updateProfesor";
	}
	
}
