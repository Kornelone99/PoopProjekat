package com.poop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poop.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {
	
}
