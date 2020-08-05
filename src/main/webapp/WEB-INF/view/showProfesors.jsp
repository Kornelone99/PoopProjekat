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
	<c:when test="${mode=='ALL_PROFESORS'}">
		<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<th>Id</th>
					<th>Ime</th>
					<th>Prezime</th>
					<th>JMBG</th>
					<th>Institut</th>
					<th>Godina</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="profesor" items="${profesors}">
					<tr>
						<td>${profesor.id}</td>
						<td>${profesor.ime}</td>
						<td>${profesor.prezime}</td>
						<td>${profesor.jmg}</td>
						<td>${profesor.institut}</td>
						<td>${profesor.godine}</td>



						<td><a href="/delete-profesor?id=${profesor.id }">Obrisi</a></td>
						<td><a href="/edit-profesor?id=${profesor.id }">Edit</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:when>
	</c:choose>
</body>
</html>