package com.poop.services;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

import com.poop.model.Predmet;
import com.poop.model.Student;
import com.poop.repository.PredmetRepository;

@Service
@Transactional
public class PredmetService {
	private final PredmetRepository predmetRepository;

	public PredmetService(PredmetRepository predmetRepository) {
		this.predmetRepository = predmetRepository;
	}
	
	public void saveMyPredmet(Predmet predmet) {
		predmetRepository.save(predmet);
	}
	
	
	public List<Predmet> showAllSubjects(){
		List<Predmet> predmeti = new ArrayList<Predmet>();
		for(Predmet predmet : predmetRepository.findAll()) {
			predmeti.add(predmet);
		}
		return predmeti;
	}
	
	public void deleteMySubject(int id) {
		predmetRepository.deleteById((long) id);
	}
	
	public Predmet editSubject(int id) {
		return predmetRepository.findById((long) id).orElse(null);
	}
}
