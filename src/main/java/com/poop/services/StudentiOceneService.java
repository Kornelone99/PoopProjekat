package com.poop.services;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import com.poop.model.Student;
import com.poop.model.StudentiOcene;
import com.poop.repository.StudentiOceneRepository;

@Service
public class StudentiOceneService {
	@Autowired
	StudentiOceneRepository studentiOceneRepository;
	
	public void saveMyStudentOcene(StudentiOcene studentiOcene) {
		System.out.println("Service " + studentiOcene);
		studentiOceneRepository.save(studentiOcene);
	}
	
	public List<StudentiOcene> showOcene() {
		List<StudentiOcene> studentiOcene = new ArrayList<StudentiOcene>();
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			String username = ((UserDetails) principal).getUsername();
			Set<String> prijavljeniPredmeti = new HashSet<>();
			
			for(StudentiOcene studentOcena : studentiOceneRepository.findAll()) {
				if(studentOcena.getEmail().equals(username) && studentOcena.getOcena() == 1) {
					if(prijavljeniPredmeti.add(studentOcena.getPredmet()))
						studentiOcene.add(studentOcena);
				}
			}
		}
		
		return studentiOcene;
	}
	
	public List<StudentiOcene> showProsek() {
		List<StudentiOcene> studentiOcene = new ArrayList<StudentiOcene>();
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			String username = ((UserDetails) principal).getUsername();
			
			for(StudentiOcene studentOcena : studentiOceneRepository.findAll()) {
				if(studentOcena.getEmail().equals(username) && studentOcena.getOcena() > 1) {
					studentiOcene.add(studentOcena);
				}
			}
		}
		
		return studentiOcene;
	}
	
	public double dajProsek(List<StudentiOcene> studentiOcene) {
		double prosek = 0.0;
		for(StudentiOcene studentOcena : studentiOcene) {
			prosek += studentOcena.getOcena();
		}
		
		if(studentiOcene.size() == 0) return prosek;
		return prosek / studentiOcene.size();
	}
	
	public void deleteStudentOceneById(Long id) {
		studentiOceneRepository.deleteById(id);
	}
	
	public List<StudentiOcene> findByEmail(String email) {
		return studentiOceneRepository.findAllByEmail(email);
	}
}