package com.fafmio.avis.dao;

import com.fafmio.avis.business.Classification;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ClassificationDao extends JpaRepository<Classification, Long> {

	Classification findFirstByNomLike(String nom);

}
