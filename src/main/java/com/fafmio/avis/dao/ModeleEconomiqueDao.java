package com.fafmio.avis.dao;

import com.fafmio.avis.business.ModeleEconomique;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ModeleEconomiqueDao extends JpaRepository<ModeleEconomique, Long> {

	ModeleEconomique findFirstByNomLike(String nom);
}
