package com.fafmio.avis.dao;

import java.util.Date;
import java.util.List;

import com.fafmio.avis.business.Editeur;
import com.fafmio.avis.business.Genre;
import com.fafmio.avis.business.Jeu;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface JeuDao extends JpaRepository<Jeu, Long> {

	Jeu findFirstById(Long id);

	Jeu findFirstByNom(String nom);

	List<Jeu> findByEditeur(Editeur editeur);

	List<Jeu> findByEditeurAndGenre(Editeur editeur, Genre genre);

	List<Jeu> findByGenre(Genre genre);

	List<Jeu> findByNomLike(String nom);

	List<Jeu> findByNomLikeAndDateSortieBetween(String nom, Date dateDebut, Date dateFin);

	List<Jeu> findByEditeurAndNomLikeAndDateSortieBetween(Editeur editeur, String nom, Date dateDebut, Date dateFin);

	@Query("FROM Jeu WHERE dateSortie BETWEEN ?1 AND ?2")
	List<Jeu> findByDateSortieBetweenAndSort(Date dateDebut, Date dateFin, Sort sort);

	@Query("FROM Jeu WHERE dateSortie BETWEEN :dateDebut AND :dateFin")
	List<Jeu> findByDateSortieBetween(@Param("dateDebut") Date dateDebut, @Param("dateFin") Date dateFin);

	Page<Jeu> findByGenreId(Long idGenre, Pageable pageable);

	Page<Jeu> findByGenre(Genre genre, Pageable pageable);

}
