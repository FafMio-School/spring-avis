package com.fafmio.avis.service;

import com.fafmio.avis.business.Avis;
import com.fafmio.avis.business.Jeu;
import com.fafmio.avis.business.Joueur;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface AvisService {
	
	Avis ajouterAvis(String description, float note, Jeu jeu, Joueur joueur);

	Page<Avis> recupererAvis(Long id, Pageable pageable);

	Page<Avis> recupererAvis(Pageable pageable);
}
