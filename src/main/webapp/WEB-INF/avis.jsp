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
<jsp:include page="components/navbar.jsp"/>

<section class="mt-4" id="games-list">
    <div class="container">

        <form action="envoyerAvis" method="post">
            <input type="hidden" name="ID_JOUEUR" value="${sessionScope.utilisateur.id }">
            <div class="card">
                <div class="card-header">Rédiger un avis</div>
                <div class="card-body">
                    <div class="row">
                        <%-- Selection du jeu --%>
                        <div class="col-6 mb-4">
                            <div class="form-group">
                                <label for="jeux">Selectionner un jeu</label>
                                <select name="ID_JEU" id="jeux" class="form-select" required>
                                    <option value="">- - -</option>
                                    <c:forEach items="${jeux}" var="jeu">
                                        <option value="${jeu.id}">${jeu.nom}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>

                        <%-- Note --%>
                        <div class="col-6 mb-4">
                            <div class="form-group">
                                <label for="notes">Selectionner une note</label>
                                <select name="NOTE" id="notes" class="form-select" required>
                                    <option value="">- - -</option>
                                    <c:forEach var="i" begin="0" end="10" step="1">
                                        <option value="${i}">${i}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>

                        <%-- Description --%>
                        <div class="col-12 mb-4">
                            <div class="form-group">
                                <label for="DESCRIPTION">Description :</label>
                                <textarea name="DESCRIPTION" id="DESCRIPTION" rows="" cols="" class="form-control"
                                          required></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <button type="submit" class="btn btn-success float-end">Publier mon avis</button>
                    <a href="/" class="btn btn-link float-end">Retour à l'acceuil</a>
                </div>
            </div>
        </form>
    </div>
</section>

</body>
</html>