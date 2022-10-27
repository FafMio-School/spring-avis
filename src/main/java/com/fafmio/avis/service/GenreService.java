package com.fafmio.avis.service;

import java.util.List;

import com.fafmio.avis.business.Genre;

public interface GenreService {

	Genre ajouterGenre(String nom);

	List<Genre> recupererGenres(String nom);

	Genre recupererGenre(String nom);

	List<Genre> recupererGenres();

	long compterGenres();
	
}
