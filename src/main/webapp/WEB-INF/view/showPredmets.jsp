<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>Studentska Sluzba</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
	<c:choose>
	<c:when test="${mode=='ALL_SUBJECTS'}">
		<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<th>Id</th>
					<th>Naziv Predmeta</th>
					<th>Smer</th>
					<th>Godina</th>
					<th>Ime Profesora</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="predmet" items="${subjects}">
					<tr>
						<td>${predmet.id}</td>
						<td>${predmet.nazivPredmeta}</td>
						<td>${predmet.smer}</td>
						<td>${predmet.godina}</td>
						<td>${predmet.imeProfesora}</td>



						<td><a href="/delete-subject?id=${predmet.id }">Obrisi</a></td>
						<td><a href="/edit-subject?id=${predmet.id }">Edit</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:when>
	</c:choose>
</body>
</html>