package com.poop.services;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import com.poop.model.Predmet;
import com.poop.model.StudentiOcene;
import com.poop.repository.PredmetRepository;
import com.poop.repository.StudentiOceneRepository;

@Service
public class ProfesorOceneService {

	@Autowired
	PredmetRepository predmetRepo;

	@Autowired 
	StudentiOceneRepository studentiOceneRepo;



	public Set<Predmet> mySubjects() {
		Set<Predmet> mojPredmeti = new HashSet<>();
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			String username = ((UserDetails) principal).getUsername();

			for(Predmet predmet : predmetRepo.findAllByJmbg(username)) {
				mojPredmeti.add(predmet);
			}
 		}

		return mojPredmeti;
	}

	public List<StudentiOcene> prijavljeniIspiti(String nazivPredmeta) {
		return studentiOceneRepo.findAllByPredmet(nazivPredmeta);
	}

	public void upisiOcenu(StudentiOcene studentiOcene) {
		studentiOceneRepo.save(studentiOcene);
	}
}