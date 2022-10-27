package com.fafmio.avis.service.impl;

import java.util.List;

import com.fafmio.avis.business.Joueur;
import com.fafmio.avis.business.Moderateur;
import com.fafmio.avis.business.Utilisateur;
import org.springframework.stereotype.Service;

import com.fafmio.avis.dao.JoueurDao;
import com.fafmio.avis.dao.ModerateurDao;
import com.fafmio.avis.dao.UtilisateurDao;
import com.fafmio.avis.service.UtilisateurService;
import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class UtilisateurServiceImpl implements UtilisateurService {
	
	private JoueurDao joueurDao;
	private ModerateurDao moderateurDao;
	private UtilisateurDao utilisateurDao;

	@Override
	public Joueur ajouterJoueur(Joueur joueur) {
		return joueurDao.save(joueur);
	}

	@Override
	public Utilisateur recupererUtilisateur(String pseudo, String motDePasse) {
		return joueurDao.findByPseudoAndMotDePasse(pseudo, motDePasse);
	}

	@Override
	public List<Joueur> recupererJoueurs() {
		return joueurDao.findAll();
	}

	@Override
	public Utilisateur recupererUtilisateur(Long id) {
		return utilisateurDao.findById(id).orElse(null);
	}

	@Override
	public List<Moderateur> recupererModerateurs() {
		return moderateurDao.findAll();
	}

	@Override
	public List<Utilisateur> recupererUtilisateurs() {
		return utilisateurDao.findAll();
	}

}