package com.fafmio.avis.service;

import java.util.List;

import com.fafmio.avis.business.Classification;

public interface ClassificationService {
	
	Classification ajouterClassification(String nom);

	List<Classification> recupererClassifications();

	Classification recupererClassification(String nom);

	long compterClassifications();
	
}
