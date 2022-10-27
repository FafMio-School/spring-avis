<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container">
		<spring:eval expression="@environment.getProperty('application.name')" var="appName" />
		<a class="navbar-brand" href="#">${appName}</a>

		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarColor02">
			<ul class="navbar-nav me-auto">
				<li class="nav-item">
					<a class="nav-link <c:if test="${param.link == '/' }">active</c:if>" href="/">Accueil</a>
				</li>
				<li class="nav-item">
					<a class="nav-link <c:if test="${param.link == 'jeu' }">active</c:if>" href="/jeu">Ajouter un jeux</a>
				</li>
				<li class="nav-item">
					<a class="nav-link <c:if test="${param.link == 'editeurs' }">active</c:if>" href="/editeurs">Éditeurs</a>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle text-danger" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Administration</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="/h2-console">Console H2</a>
						<a class="dropdown-item" href="/swagger-ui/index.html">Swagger UI</a>
					</div>
				</li>
			</ul>
			<div class="dropdown">
				<a class="nav-link dropdown-toggle text-white" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Mon compte</a>
				<div class="dropdown-menu">
					<c:choose>
						<c:when test="${sessionScope.utilisateur eq null }">
							<a class="dropdown-item" href="/connexion">Connexion</a>
							<a class="dropdown-item" href="/inscription">Inscription</a>
						</c:when>
						<c:when test="${sessionScope.utilisateur ne null }">
							<a class="dropdown-item" href="/">Liste des jeux</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item text-danger" href="/deconnexion">Deconnexion</a>
						</c:when>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
</nav>
