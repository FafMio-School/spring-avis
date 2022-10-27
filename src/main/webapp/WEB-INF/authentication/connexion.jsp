<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <title>Liste des jeux</title>

    <jsp:include page="../components/header.jsp"/>
</head>
<body>
<jsp:include page="../components/portfolio/bar.jsp"/>
<section class="container" id="connexion">
    <div class="row justify-content-center">
        <div class="col-6">
            <form action="connexion" method="post" >
                <div class="card mt-5">
                    <div class="card-header">Connexion</div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6 col-12">
                                <label for="pseudo">Pseudo</label>
                                <input type="text" name="pseudo" id="pseudo" class="form-control"/>
                            </div>
                            <div class="col-md-6 col-12">
                                <label for="motDePasse">Mot de passe</label>
                                <input type="password" name="motDePasse" id="motDePasse" class="form-control"/>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <button type="submit" class="btn btn-success float-end mx-1">Me connecter</button>
                        <a href="/inscription" class="btn btn-outline-primary float-end mx-1">Je n'ai pas de compte</a>
                        <a href="/" class="btn btn-link">Retour à l'acceuil</a>
                    </div>
                </div>
            </form>
        </div>
    </div>

<%--    <div class="row justify-content-center">--%>
<%--        <div class="col-6">--%>
<%--            <form:form action="connexion" method="post" modelAttribute="utilisateur">--%>
<%--            <div class="card mt-5">--%>
<%--                <div class="card-header">Connexion</div>--%>
<%--                <div class="card-body">--%>
<%--                    <div class="row">--%>
<%--                        <div class="col-md-6 col-12">--%>
<%--                            <form:label path="pseudo">Pseudo</form:label>--%>
<%--                            <form:input path="pseudo" cssClass="form-control" cssErrorClass="form-control is-invalid"/>--%>
<%--                            <form:errors path="pseudo" cssClass="text-danger"/>--%>
<%--                        </div>--%>
<%--                        <div class="col-md-6 col-12">--%>
<%--                            <form:label path="motDePasse">Mot de passe</form:label>--%>
<%--                            <form:input path="motDePasse" cssClass="form-control" cssErrorClass="form-control is-invalid"/>--%>
<%--                            <form:errors path="motDePasse" cssClass="text-danger"/>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="card-footer">--%>
<%--                    <button type="submit" class="btn btn-success float-end">Me connecter</button>--%>
<%--                    <a href="/" class="btn btn-link float-end">Retour à l'acceuil</a>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        </form:form>--%>
<%--    </div>--%>
</section>
</body>
</html>