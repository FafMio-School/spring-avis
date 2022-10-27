<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <title>Liste des Éditeurs</title>

    <jsp:include page="components/header.jsp"/>
</head>
<body>
<jsp:include page="components/portfolio/bar.jsp"/>
<jsp:include page="components/navbar.jsp">
    <jsp:param name="link" value="editeurs"/>
</jsp:include>

<section id="editors" class="mt-4">
    <div class="container">
        <h2 class="mb-3">Voici la liste des éditeurs :</h2>
        <table class="table table-hover">
            <thead>
            <th>Nom de l'éditeur</th>
            </thead>
            <tbody>
            <c:forEach items="${editeurs}" var="editeur">
                <tr>
                    <td>${editeur.nom}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</section>
</body>
</html>