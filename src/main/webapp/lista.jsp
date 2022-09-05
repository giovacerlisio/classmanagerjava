<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Visualizza</title>
    <link rel="icon" type="image/x-icon" href="logo.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
     <nav class="navbar navbar-expand-lg bg-light ">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="Home.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="inserimento.jsp">Inserimento</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="Visualizzazione">Visualizza</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<table class="table">
  <thead>
  <tr>
	<th>Nome</th>
	<th>Cognome</th>
	<th>Eta</th>
	<th>Elimina</th>
	<th>Modifica</th>
	<th>Inserisci Voti</th>
	<th>Visualizza Voti</th>
 </tr>
  </thead>
  <tbody>
  <c:forEach items="${lista}" var="lista">
    <tr>
    <td>${lista.nome}</td>
    <td>${lista.cognome}</td>
    <td>${lista.eta}</td>
    <td><a href="Cancellazione?id=${lista.id}" class="link-danger">Elimina</a></td>
    <td><a href="Modifica?id=${lista.id}&nome=${lista.nome}&cognome=${lista.cognome}&eta=${lista.eta}" class="link-warning">Modifica</a></td>
    <td><a href="InserimentoVoti?id=${lista.id}" class="link-success">Inserisci Voti</a></td>
    <td><a href="VisualizzaVoti?id=${lista.id}" class="link-success">Visualizza Voti</a></td>
    </tr>
    </c:forEach>
  </tbody>
</table>
</body>
</html>