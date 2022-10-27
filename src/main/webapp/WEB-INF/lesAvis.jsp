<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <title>Avis sur le jeu </title>

    <jsp:include page="components/header.jsp"/>
</head>
<body>
<jsp:include page="components/portfolio/bar.jsp"/>
<jsp:include page="components/navbar.jsp" />

<section class="mt-4" id="games-list">
    <div class="container">
        <table class="table table-hover">
            <thead class="table-header">
                <tr>
                    <th>Nom joueur</th>
                    <th>Nom jeu</th>
                    <th>Avis</th>
                    <th>Note</th>
                    <th>Date avis</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${pageDAvis.content}" var="avis">
                <tr>
                    <td>${avis.joueur.pseudo}</td>
                    <td>${avis.jeu.nom}</td>
                    <td>${avis.description}</td>
                    <td>${avis.note}</td>
                    <td>${avis.dateEnvoi}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <a href="/" class="btn btn-link float-end">Retour à l'acceuil</a>
        <p class="fst-italic text-muted">
            Avis de <strong>${pageDAvis.totalElements == 0 ? 0 : pageDAvis.size * pageDAvis.number+1}</strong>
            à <strong>${pageDAvis.numberOfElements + (pageDAvis.size * pageDAvis.number)}</strong>
            sur <strong>${pageDAvis.totalElements}</strong> Avis
        </p>
    </div>
</section>
</body>
</html>