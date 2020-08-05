package com.poop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poop.model.Student;

public interface StudentRepository extends JpaRepository<Student, Long> {

}
