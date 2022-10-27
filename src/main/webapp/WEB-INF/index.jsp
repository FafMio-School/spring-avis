<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <title>Liste des jeux</title>

    <jsp:include page="components/header.jsp"/>
</head>
<body>
<jsp:include page="components/portfolio/bar.jsp"/>
<jsp:include page="components/navbar.jsp">
    <jsp:param name="link" value="/"/>
</jsp:include>

<section class="mt-4" id="games-list">
    <div class="container">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>Image</th>
                    <th>Nom <a class="text-muted fst-italic" href="index?sort=nom">trier</a></th>
                    <th>Genre <a class="text-muted fst-italic" href="index?sort=genre">trier</a></th>
                    <th>Plateforme</th>
                    <th>Date de sortie <a class="text-muted fst-italic" href="index?sort=dateSortie">trier</a></th>
                    <th>Editeur <a class="text-muted fst-italic" href="index?sort=editeur">trier</a></th>
                    <th>Modele Economique <a class="text-muted fst-italic" href="index?sort=modeleEconomique">trier</a></th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${pageDeJeux.content}" var="jeu">
                <tr>
                    <td><img src="images/${jeu.image}" width="80px"></td>
                    <td>${jeu.nom}</td>
                    <td>${jeu.genre.nom}</td>
                    <td>
                        <c:forEach items="${jeu.plateformes}" var="plateforme">
                            ${plateforme.nom}<br>
                        </c:forEach>
                    </td>
                    <td>${jeu.dateSortie}</td>
                    <td>${jeu.editeur.nom}</td>
                    <td>${jeu.modeleEconomique.nom}</td>
                    <td>
                        <div class="btn-group" role="group">
                            <a href="/lesAvis?ID=${jeu.id}" class="btn btn-primary">Voir les avis</a>
                            <div class="btn-group" role="group">
                                <button id="btnGroupDrop1" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
                                <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                                    <a class="dropdown-item" href="/televersement?ID=${jeu.id}">Changer l'image</a>
                                    <a class="dropdown-item text-warning" href="/jeu?ID=${jeu.id}">Modifier le jeu</a>
                                </div>
                            </div>
                        </div>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <c:if test="${!pageDeJeux.first}">
            <a href="?page=0&sort=${pageDeJeux.sort.iterator().next().property},${pageDeJeux.sort.iterator().next().direction}">&#x23EE;</a>
            <a href="?page=${pageDeJeux.number-1}&sort=${pageDeJeux.sort.iterator().next().property},${pageDeJeux.sort.iterator().next().direction}">&#x23EA;</a>
        </c:if>
        <p class="text-muted fst-italic">
        Page ${pageDeJeux.getNumber()+1} :
        Jeux de ${pageDeJeux.totalElements == 0 ? 0 : pageDeJeux.size * pageDeJeux.number+1}
        à ${pageDeJeux.numberOfElements + (pageDeJeux.size * pageDeJeux.number)} sur ${pageDeJeux.totalElements} Jeu(x)
        </p>
        <c:if test="${!pageDeJeux.last}">
            <a href="?page=${pageDeJeux.number+1}&sort=${pageDeJeux.sort.iterator().next().property},${pageDeJeux.sort.iterator().next().direction}">&#x23E9;</a>
            <a href="?page=${pageDeJeux.totalPages - 1}&sort=${pageDeJeux.sort.iterator().next().property},${pageDeJeux.sort.iterator().next().direction}">&#x23ED;</a>
        </c:if>

    </div>
</section>


</body>
</html>