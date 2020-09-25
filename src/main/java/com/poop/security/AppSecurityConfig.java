package com.poop.security;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class AppSecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private UserDetailsService userDetailsService;
	
	@Bean
	public AuthenticationProvider authProvider() {
		DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
		provider.setUserDetailsService(userDetailsService);
		provider.setPasswordEncoder(NoOpPasswordEncoder.getInstance());
		return provider;
	}
	

	@Override
	protected void configure(HttpSecurity http) throws Exception {
//		http.csrf().disable();
		
//		http.authorizeRequests().antMatchers("/**").authenticated().anyRequest().permitAll().and()
//		.authorizeRequests().antMatchers("/welcome/**").authenticated().anyRequest().hasAnyRole("USER").and()
//		.formLogin().permitAll();
		
//		http.authorizeRequests()
//		.antMatchers("/**").hasRole("ADMIN").antMatchers("/student/**").hasRole("USER")
//		.and().formLogin();
		
		http
        .csrf().disable()      
        .httpBasic()
        .and()
        .authorizeRequests()
        .antMatchers("/home").permitAll()
        .antMatchers("/","/student/**").hasRole("USER")
        .antMatchers("/profesor/**").hasRole("PROFESOR")
        .antMatchers("/**").hasRole("ADMIN")
        .anyRequest().authenticated()
        .and()
        .formLogin()
        .loginPage("/login")
        .permitAll();
	}
}