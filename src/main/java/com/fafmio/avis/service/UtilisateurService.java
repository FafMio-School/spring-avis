package com.fafmio.avis.service;

import java.util.List;

import com.fafmio.avis.business.Joueur;
import com.fafmio.avis.business.Moderateur;
import com.fafmio.avis.business.Utilisateur;

public interface UtilisateurService {

	Joueur ajouterJoueur(Joueur joueur);
	
	Utilisateur recupererUtilisateur(String pseudo, String motDePasse);

	Utilisateur recupererUtilisateur(Long id);

	List<Joueur> recupererJoueurs();

	List<Moderateur> recupererModerateurs();

	List<Utilisateur> recupererUtilisateurs();

}
