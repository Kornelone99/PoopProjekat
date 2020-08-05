package com.poop.services;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.poop.model.Predmet;
import com.poop.model.Profesor;
import com.poop.repository.ProfesorRepository;

@Service
@Transactional
public class ProfesorService {
	private final ProfesorRepository profesorRepository;

	public ProfesorService(ProfesorRepository profesorRepository) {
		super();
		this.profesorRepository = profesorRepository;
	}
	
	public List<Profesor> showAllProfesors(){
		List<Profesor> profesori = new ArrayList<Profesor>();
		for(Profesor profesor : profesorRepository.findAll()) {
			profesori.add(profesor);
		}
		return profesori;
	}

	public void saveMyProfesor(Profesor profesor) {
		profesorRepository.save(profesor);
	}
	
	public void deleteMyProfesor(Long id) {
		profesorRepository.deleteById( id);
	}
	
	public Profesor editProfesor(Long id) {
		return profesorRepository.findById( id).orElse(null);
	}
}
