package com.fafmio.avis.dao;

import com.fafmio.avis.business.Avis;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AvisDao extends JpaRepository<Avis, Long> {

	Page<Avis> findByJeuId(Long id, Pageable pageable);
	
}
