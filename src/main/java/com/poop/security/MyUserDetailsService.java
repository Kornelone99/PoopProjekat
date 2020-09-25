package com.poop.security;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import com.poop.model.Profesor;
import com.poop.model.Student;
import com.poop.repository.ProfesorRepository;
import com.poop.repository.StudentRepository;

@Component
public class MyUserDetailsService implements UserDetailsService, UserDetails {

	@Autowired
	private StudentRepository studentRepo;
	
	@Autowired
	private ProfesorRepository profesorRepo;
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Student student = studentRepo.findByEmail(username);
		if(student == null) {
			Profesor profesor = profesorRepo.findByJmg(username);
			if(profesor == null) {
				throw new UsernameNotFoundException("User 404");
			}
			
			return new ProfesorPrinciple(profesor);
			
		}
		
		
		return new UserPrinciple(student);
	}

}
