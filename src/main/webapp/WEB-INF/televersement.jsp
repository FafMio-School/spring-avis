<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
        <div class="row justify-content-center">
            <div class="col-6">
                <form action="televersement?ID=${jeu.id}" method="post" enctype="multipart/form-data">
                    <div class="card mt-5">
                        <div class="card-header">Changer l'image</div>
                        <div class="card-body">
                            <div class="d-flex flex-row gap-2">
                                <div class="input-group">
                                    <input class="form-control" type="file" name="FICHIER" id="FICHIER" accept="image/png, image/jpeg" required/>
                                    <button class="btn btn-success" type="submit">Téléverser</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
</body>
</html>