<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <title>Liste des jeux</title>

    <jsp:include page="components/header.jsp"/>
</head>
<body>
<jsp:include page="components/portfolio/bar.jsp"/>
<jsp:include page="components/navbar.jsp">
    <jsp:param name="link" value="jeu"/>
</jsp:include>

<section class="mt-4" id="games-list">
    <div class="container">

        <div class="card">
            <div class="card-header">Ajouter un jeu</div>
            <div class="card-body">
                <form:form action="jeu" method="post" modelAttribute="jeu">
                <form:hidden path="id" value="${id}"/>
                <div class="row">
                        <%-- Nom du jeu --%>
                    <div class="col-4 mb-4">
                        <div class="form-group">
                            <form:label path="nom">Nom du jeu</form:label>
                            <form:input path="nom" cssClass="form-control" cssErrorClass="form-control is-invalid"/>
                            <form:errors path="nom" cssClass="text-danger"/>
                        </div>
                    </div>

                        <%-- Date de sortie --%>
                    <div class="col-4 mb-4">
                        <div class="form-group">
                            <form:label path="dateSortie">Date de sortie</form:label>
                            <form:input path="dateSortie" type="date" cssClass="form-control"
                                        cssErrorClass="form-control is-invalid"/>
                            <form:errors path="dateSortie" cssClass="text-danger"/>
                        </div>
                    </div>

                        <%-- Modèle énonomique --%>
                    <div class="col-4 mb-4">
                        <div class="form-group">
                            <form:label path="modeleEconomique">Modèle economique</form:label>
                            <form:select path="modeleEconomique" cssClass="form-select"
                                         cssErrorClass="form-select is-invalid">
                                <form:option value="">- - -</form:option>
                                <form:options items="${modeleEconomiques}" itemValue="id" itemLabel="nom"/>
                            </form:select>
                            <form:errors path="modeleEconomique" cssClass="text-danger"/>
                        </div>
                    </div>

                        <%-- Editeur --%>
                    <div class="col-4 mb-4">
                        <div class="form-group">
                            <form:label path="editeur">Éditeur</form:label>
                            <form:select path="editeur" cssClass="form-select " cssErrorClass="form-select is-invalid" >
                                <form:option value="">- - -</form:option>
                                <form:options items="${editeurs}" itemValue="id" itemLabel="nom"/>
                            </form:select>
                            <form:errors path="editeur" cssClass="text-danger"/>
                        </div>
                    </div>

                        <%-- Classification --%>
                    <div class="col-4 mb-4">
                        <div class="form-group">
                            <form:label path="classification">Classification</form:label>
                            <form:select path="classification" cssClass="form-select "
                                         cssErrorClass="form-select is-invalid">
                                <form:option value="">- - -</form:option>
                                <form:options items="${classifications}" itemValue="id" itemLabel="nom"/>
                            </form:select>
                            <form:errors path="classification" cssClass="text-danger"/>
                        </div>
                    </div>

                        <%-- Genre --%>
                    <div class="col-4 mb-4">
                        <div class="form-group">
                            <form:label path="genre">Genre</form:label>
                            <form:select path="genre" cssClass="form-select " cssErrorClass="form-select is-invalid">
                                <form:option value="">- - -</form:option>
                                <form:options items="${genres}" itemValue="id" itemLabel="nom"/>
                            </form:select>
                            <form:errors path="genre" cssClass="text-danger"/>
                        </div>
                    </div>

                        <%-- Plateformes --%>
                    <div class="col-6 mb-4">
                        <div class="form-group">
                            <form:label path="plateformes">Plateformes</form:label>
                            <form:select path="plateformes" multiple="multiple" cssClass="form-control" cssErrorClass="form-control is-invalid" cssStyle="height: 102px">
                                <form:options items="${plateformes}" itemValue="id" itemLabel="nom" />
                            </form:select>
                            <form:errors path="plateformes" cssClass="text-danger"/>
                        </div>
                    </div>

                        <%-- Description --%>
                    <div class="col-6 mb-4">
                        <div class="form-group">
                            <form:label path="description">Description</form:label>
                            <form:textarea path="description" cssClass="form-control" cssErrorClass="form-control is-invalid" rows="4" cols="30"/>
                            <form:errors path="description" cssClass="text-danger"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <button type="submit" class="btn btn-success float-end">Enregistrer</button>
                <a href="/" class="btn btn-link float-end">Retour à l'acceuil</a>
            </div>
            </form:form>
        </div>



        <br>
    </div>
</section>
</body>
</html>