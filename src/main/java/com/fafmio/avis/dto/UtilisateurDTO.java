package com.fafmio.avis.dto;

import lombok.*;
import lombok.experimental.FieldDefaults;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.validation.constraints.NotNull;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class UtilisateurDTO {

    @GeneratedValue(strategy= GenerationType.IDENTITY)
    protected Long id;

    @NotNull(message="{utilisateur.pseudo.manquant}")
    protected String pseudo;

    @NotNull(message="Veuillez renseigner votre mot de passe")
    protected String motDePasse;

    protected String email;
}

