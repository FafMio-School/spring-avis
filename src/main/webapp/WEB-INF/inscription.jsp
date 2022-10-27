<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="fr">
<head>
	<title>Inscription</title>

	<jsp:include page="components/header.jsp"/>
</head>
<body>
<jsp:include page="components/portfolio/bar.jsp"/>
<section class="container" id="connexion">
	<div class="row justify-content-center">
		<div class="col-8">
			<form:form action="inscription" method="post" modelAttribute="joueur">
				<div class="card mt-5">
					<div class="card-header">Inscription</div>
					<div class="card-body">
						<div class="row">
							<div class="col-md-6 col-12 mb-4">
								<form:label path="pseudo">Pseudo</form:label>
								<form:input path="pseudo" cssClass="form-control" cssErrorClass="form-control is-invalid" />
								<form:errors path="pseudo" cssClass="text-danger" />
							</div>
							<div class="col-md-6 col-12 mb-4">
								<form:label path="email">Email</form:label>
								<form:input path="email" cssClass="form-control" cssErrorClass="form-control is-invalid" />
								<form:errors path="email" cssClass="text-danger" />
							</div>
							<div class="col-md-6 col-12 mb-4">
								<form:label path="motDePasse">Mot de passe</form:label>
								<form:password path="motDePasse" cssClass="form-control" cssErrorClass="form-control is-invalid" />
								<form:errors path="motDePasse" cssClass="text-danger" />
							</div>
							<div class="col-md-6 col-12 mb-4">
								<form:label path="dateDeNaissance">Date de naissance</form:label>
								<form:input type="date" path="dateDeNaissance" cssClass="form-control" cssErrorClass="form-control is-invalid" />
								<form:errors path="dateDeNaissance" cssClass="text-danger" />
							</div>
						</div>
					</div>
					<div class="card-footer">
						<button type="submit" class="btn btn-success float-end mx-1">S'inscrire</button>
						<a href="/connexion" class="btn btn-outline-primary float-end mx-1">J'ai déjà un compte</a>
						<a href="/" class="btn btn-link">Retour à l'accueil</a>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>