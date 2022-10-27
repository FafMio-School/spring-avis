package com.fafmio.avis.dao;

import com.fafmio.avis.business.Plateforme;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PlateformeDao extends JpaRepository<Plateforme, Long> {

	Plateforme findFirstByNomLike(String nom);
	
}
