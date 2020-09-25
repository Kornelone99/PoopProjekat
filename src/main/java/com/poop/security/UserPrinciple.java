package com.poop.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.poop.model.Student;

public class UserPrinciple implements UserDetails {
	
	private Student student;
	
	

	public UserPrinciple(Student student) {
		super();
		this.student = student;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		if(student.getEmail().equals("admin") && student.getPassword().equals("admin")) {
			System.out.println("Admin");
			return Collections.singleton(new SimpleGrantedAuthority("ROLE_ADMIN"));
		}
		else {
			System.out.println("USER");
			return Collections.singleton(new SimpleGrantedAuthority("ROLE_USER"));
		}
		
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return student.getPassword();
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return student.getEmail();
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}

}
