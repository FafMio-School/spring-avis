package com.fafmio.avis.dao;

import java.util.List;

import com.fafmio.avis.business.Genre;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GenreDao extends JpaRepository<Genre, Long> {
	
	List<Genre> findByNomLike(String nom);

	Genre findFirstByNomLike(String nom);
	
}