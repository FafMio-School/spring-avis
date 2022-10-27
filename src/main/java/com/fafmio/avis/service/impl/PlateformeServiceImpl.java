package com.fafmio.avis.service.impl;

import java.util.List;

import com.fafmio.avis.business.Plateforme;
import org.springframework.stereotype.Service;

import com.fafmio.avis.dao.PlateformeDao;
import com.fafmio.avis.service.PlateformeService;

@Service 
public class PlateformeServiceImpl implements PlateformeService {

	private PlateformeDao plateformeDao;
	
	public PlateformeServiceImpl(PlateformeDao plateformeDao) {
		super();
        this.plateformeDao=plateformeDao;
	}
	
	@Override
	public Plateforme ajouterPlateforme(String nom) {
		return plateformeDao.save(new Plateforme(nom));
	}
	
	@Override
	public List<Plateforme> recupererPlateformes() {
		return plateformeDao.findAll();
	}
	
	@Override
	public Plateforme recupererPlateforme(String nom) {
		return plateformeDao.findFirstByNomLike(nom);
	}

}