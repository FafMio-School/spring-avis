package com.fafmio.avis.dao;

import com.fafmio.avis.business.Utilisateur;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UtilisateurDao extends JpaRepository<Utilisateur, Long> {

}
