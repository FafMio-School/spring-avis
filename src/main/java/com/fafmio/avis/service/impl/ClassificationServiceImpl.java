package com.fafmio.avis.service.impl;

import java.util.List;

import com.fafmio.avis.business.Classification;
import org.springframework.stereotype.Service;

import com.fafmio.avis.dao.ClassificationDao;
import com.fafmio.avis.service.ClassificationService;

@Service
public class ClassificationServiceImpl implements ClassificationService {

	private ClassificationDao classificationDao;

	public ClassificationServiceImpl(ClassificationDao classificationDao) {
		super();
		this.classificationDao = classificationDao;
	}

	@Override
	public Classification ajouterClassification(String nom) {
		return classificationDao.save(new Classification(nom));
	}

	@Override
	public List<Classification> recupererClassifications() {
		return classificationDao.findAll();
	}

	@Override
	public Classification recupererClassification(String nom) {
		return classificationDao.findFirstByNomLike(nom);
	}

	@Override
	public long compterClassifications() {
		return classificationDao.count();
	}

}
