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
    <jsp:param name="link" value="/"/>
</jsp:include>
<h1>Les éditeurs</h1>
<h2>Voici la liste des éditeurs :</h2>
<c:forEach items="${editeurs}" var="editeur">
    ${editeur.nom}<br>
</c:forEach>
</body>
</html>