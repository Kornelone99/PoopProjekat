package com.poop.security;

import java.util.Collection;
import java.util.Collections;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.poop.model.Profesor;

public class ProfesorPrinciple implements UserDetails {
	
	private Profesor profesor;
	
	

	public ProfesorPrinciple(Profesor profesor) {
		super();
		this.profesor = profesor;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		System.out.println("PROFESOR");
		return Collections.singleton(new SimpleGrantedAuthority("ROLE_PROFESOR"));
	
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return profesor.getPassword();
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return profesor.getJmg();
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
