package com.poop.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.poop.email.EmailCfg;
import com.poop.model.Predmet;
import com.poop.model.Student;
import com.poop.model.StudentiOcene;
import com.poop.services.StudentService;
import com.poop.services.StudentiOceneService;

@Controller
public class AppController {
	
	private EmailCfg emailCfg;
	
	
	
	public AppController(EmailCfg emailCfg) {
		this.emailCfg = emailCfg;
	}

	@Autowired
	public StudentService studentServie;
	
	@Autowired
	private StudentiOceneService studentiOceneService;
	
	@RequestMapping("/")
	public String Home(HttpServletRequest request) {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			String username = ((UserDetails) principal).getUsername();
			System.out.println("Username: " + username);
			Student student = studentServie.findByEmail(username);
			if(username.equals("admin")) {
				request.setAttribute("mode", "MODE_HOME");
				return "welcomepage";
			}
			else {
				return "studentWelcome";
			}
		}
		
		
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}
	
	@RequestMapping("/home")
	public String home(HttpServletRequest request) {
		return "home";
	}
	
	
	@RequestMapping("/welcome")
	public String Welcome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}
	
	@RequestMapping("/create-student")
	public String createStudent(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_CREATE_STUDENT");
		return "welcomepage";
	}
	
	@PostMapping("/save-student")
	public String registerStudent(@ModelAttribute Student student,BindingResult bindingResult,HttpServletRequest request) {
		
		if(!studentServie.existsByIndeks(student.getIndeks()))
			studentServie.saveMyStudent(student);
		
		request.setAttribute("students", studentServie.showAllStudents());
		request.setAttribute("mode", "ALL_STUDENTS");
		
		// Create a mail sender
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        mailSender.setHost(this.emailCfg.getHost());
        mailSender.setPort(this.emailCfg.getPort());
        mailSender.setUsername(this.emailCfg.getUsername());
        mailSender.setPassword(this.emailCfg.getPassword());

        // Create an email instance
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setFrom("imisluzba@gmail.com");
        mailMessage.setTo(student.getEmail());
        mailMessage.setSubject("Upisani ste u studentsku sluzbu");
        mailMessage.setText("Sifra je " + student.getPassword() + " a username je " + student.getEmail());

        // Send mail
        mailSender.send(mailMessage);
		
		
		return "welcomepage";
	}
	
	@GetMapping("/show-students")
	public String showAllStudents(HttpServletRequest request) {
		request.setAttribute("students", studentServie.showAllStudents());
		request.setAttribute("mode", "ALL_STUDENTS");
		return "welcomepage";
	}
	
	@RequestMapping("/delete-student")
	public String deleteStudent(@RequestParam int id, HttpServletRequest request) {
		Student student = studentServie.findById(id);
		List<StudentiOcene> sos = studentiOceneService.findByEmail(student.getEmail());
		
		for(StudentiOcene so : sos) {
			studentiOceneService.deleteStudentOceneById(so.getId());
		}
		
		//System.out.println("STUDENTI OCENE " + so);
		
		studentServie.deleteMyStudent(id);
		request.setAttribute("students", studentServie.showAllStudents());
		request.setAttribute("mode", "ALL_STUDENTS");
		return "welcomepage";
	}
	
	@RequestMapping("/edit-student")
	public String editStudent(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("student", studentServie.editUser(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "welcomepage";
	}
}