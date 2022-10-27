package com.fafmio.avis.service;

import java.util.List;

import com.fafmio.avis.business.Plateforme;

public interface PlateformeService {

	Plateforme ajouterPlateforme(String nom);

	List<Plateforme> recupererPlateformes();

	Plateforme recupererPlateforme(String nom);
	
}