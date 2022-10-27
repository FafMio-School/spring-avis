package com.fafmio.avis.service.impl;

import java.util.List;

import com.fafmio.avis.business.ModeleEconomique;
import org.springframework.stereotype.Service;

import com.fafmio.avis.dao.ModeleEconomiqueDao;
import com.fafmio.avis.service.ModeleEconomiqueService;

@Service
public class ModeleEconomiqueServiceImpl implements ModeleEconomiqueService {
	
	private ModeleEconomiqueDao modeleEconomiqueDao;

	public ModeleEconomiqueServiceImpl(ModeleEconomiqueDao modeleEconomiqueDao) {
		super();
		this.modeleEconomiqueDao = modeleEconomiqueDao;
	}

	@Override
	public ModeleEconomique ajouterModeleEconomique(String nom) {
		return modeleEconomiqueDao.save(new ModeleEconomique(nom));
	}

	@Override
	public List<ModeleEconomique> recupererModelesEconomiques() {
		return modeleEconomiqueDao.findAll();
	}

	@Override
	public ModeleEconomique recupererModeleEconomique(String nom) {
		return modeleEconomiqueDao.findFirstByNomLike(nom);
	}

	@Override
	public long compterModelesEconomiques() {
		return modeleEconomiqueDao.count();
	}

}