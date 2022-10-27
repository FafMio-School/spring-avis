package com.fafmio.avis.service;

import java.util.List;

import com.fafmio.avis.business.ModeleEconomique;

public interface ModeleEconomiqueService {

	ModeleEconomique ajouterModeleEconomique(String nom);

	List<ModeleEconomique> recupererModelesEconomiques();

	ModeleEconomique recupererModeleEconomique(String nom);

	long compterModelesEconomiques();
	
}
