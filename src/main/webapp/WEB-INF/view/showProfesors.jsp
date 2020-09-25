<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>Studentska služba</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css" integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">
<link rel="SHORTCUT ICON" href="https://studentskasluzba.com/wp-content/uploads/2015/06/logonovi2.png"/>
<style><%@include file="/WEB-INF/css/style.css"%></style>
<style><%@include file="/WEB-INF/css/meni.css"%></style>
</head>
<body  style="background-color:#ebebeb;">
	<c:choose>
	<c:when test="${mode=='ALL_PROFESORS'}">
	<div id="heder">
                <h1 id="ss">
                   
                    <a href="welcome">STUDENTSKA SLUŽBA</a>
                </h1>
                <div id="meni">
                    <ul>
                       
                        <li><a href="create-student">DODAJ STUDENTA</a></li>
                        <li><a href="show-students">STUDENTI </a></li>
                        <li><a href="create-predmet">DODAJ PREDMET</a></li>
                        <li><a href="show-subjects">PREDMETI</a></li>
                        <li><a href="create-profesor">DODAJ PROFESORA</a></li>
                        <li><a href="show-profesors" id="aktivan">PROFESORI</a></li>
                        <li><a href="logout">IZLOGUJ SE</a></li>
                    </ul>
                </div>
                
            </div>
	<div class="container">
     <h3  style="color: #3190cb; text-align:center;">SVI PROFESORI</h3>
			<hr>
		<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<th>Id</th>
					<th>Ime</th>
					<th>Prezime</th>
					<th>EMAIL</th>
					<th>Institut</th>
					<th>Godina</th>
					
					<th>Obriši</th>
					<th>Izmeni</th>
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


<td><a href="/delete-profesor?id=${profesor.id }"><button class="btn"><i class="fa fa-trash"></i></button></a></td>
						<td><a href="/edit-profesor?id=${profesor.id }"><button class="btn"><i class="fa fa-edit"></i></button></a></td>
						
				
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
	</c:when>
	</c:choose>
</body>
</html>