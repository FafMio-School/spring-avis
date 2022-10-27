package com.fafmio.avis.service.impl;

import com.fafmio.avis.business.Jeu;
import com.fafmio.avis.business.Joueur;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.fafmio.avis.business.Avis;
import com.fafmio.avis.dao.AvisDao;
import com.fafmio.avis.service.AvisService;

@Service
public class AvisServiceImpl implements AvisService {
	
	private AvisDao avisDao;
	
	public AvisServiceImpl(AvisDao avisDao) {
		super();
		this.avisDao=avisDao;
	}

	@Override
	public Avis ajouterAvis(String description, float note, Jeu jeu, Joueur joueur) {
		return avisDao.save(new Avis(description, note, jeu, joueur));
	}

	@Override
	public Page<Avis> recupererAvis(Long id, Pageable pageable) {
		return avisDao.findByJeuId(id, pageable);
	}

	@Override
	public Page<Avis> recupererAvis(Pageable pageable) {
		return avisDao.findAll(pageable);
	}

}