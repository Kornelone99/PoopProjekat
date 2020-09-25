<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>Studentska služba</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="SHORTCUT ICON" href="https://studentskasluzba.com/wp-content/uploads/2015/06/logonovi2.png"/>
<style><%@include file="/WEB-INF/css/style.css"%></style>
<style><%@include file="/WEB-INF/css/meni.css"%></style>
</head>
<body  style="background-color:#ebebeb;">
	<c:choose>
	<c:when test="${mode=='ALL_SUBJECTS'}">
	<div id="heder">
                <h1 id="ss">
                   
                    <a href="welcome">STUDENTSKA SLUŽBA</a>
                </h1>
                <div id="meni">
                    <ul>
                    
                        <li><a href="create-student">DODAJ STUDENTA</a></li>
                        <li><a href="show-students">STUDENTI </a></li>
                        <li><a href="create-predmet">DODAJ PREDMET</a></li>
                        <li><a href="show-subjects" id="aktivan">PREDMETI</a></li>
                        <li><a href="create-profesor">DODAJ PROFESORA</a></li>
                        <li><a href="show-profesors">PROFESORI</a></li>
                        <li><a href="logout">IZLOGUJ SE</a></li>
                    </ul>
                </div>
                
            </div>
             <h3  style="color: #3190cb; text-align:center;">SVI PREDMETI</h3>
			
	<div class="container">
     <hr>
		<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<th>Id</th>
					<th>Naziv Predmeta</th>
					<th>Smer</th>
					<th>Godina</th>
					<th>Ime Profesora</th>
					<th>Obriši</th>
            		<th>Izmeni</th>
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



						<td><a href="/delete-subject?id=${predmet.id }"><button class="btn"><i class="fa fa-trash"></i></button></a></td>
						<td><a href="/edit-subject?id=${predmet.id }"><button class="btn"><i class="fa fa-edit"></i></button></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
	</c:when>
	</c:choose>
</body>
</html>