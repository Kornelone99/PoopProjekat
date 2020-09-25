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
<div id="heder">
                <h1 id="ss">
                   
                    <a href="/">STUDENTSKA SLUŽBA</a>
                </h1>
                <div id="meni">
                    <ul>
                    
                        <li><a href="/student/prijavi-ispite" id="aktivan">PREDMETI</a></li>
			<li><a href="/student/show-ocene">MOJE PRIJAVE</a></li>
			 <li><a href="/student/show-prosek">MOJE OCENE</a></li>
                        <li><a href="/logout">IZLOGUJ SE</a></li>
                       
                    </ul>
                </div>
                
            </div>
             <h3  style="color: #3190cb; text-align:center;">PRIJAVA ISPITA<br>
		Student: ${student.ime} ${student.prezime}</h3>
<c:choose>
	<c:when test="${mode=='PRIJAVLJENO'}">
	<br>
	<hr>
	<br>
	<div class="container" style="border:4px solid #62C664;padding:0;">
		<h1 id="prijavljen_ispit"style="margin:0" >prijavljen je ispit: <span style="color:#62C664;">${student.predmet}</span></h1></div>
	</c:when>
	
	<c:when test="${mode=='NIJE_PRIJAVLJENO'}">
	<br>
	<hr>
	<br>
	<table class="table table-striped table-bordered" style="text-align:center">
	<div class="container" style="border:4px solid #b46d01;padding:0;">
		<h1 id="prijavljen_ispit" style="margin:0" >Nije moguce prijaviti ispit: <span style="color:#b46d01;">${student.predmet}</span></h1></div>
	</c:when>
	
	<c:when test="${mode=='PRIJAVI_ISPIT'}">
		
		<div class="container">
     <hr>
		<table class="table table-striped table-bordered" style="text-align:center">
			<thead>
				<tr>
					<th>NAZIV PREDMETA</th>
				
					<th>IME PROFESORA</th>
					<th>GODINA</th>
						<th>PRIJAVI ISPIT</th>
				</tr>
			</thead>
			<tbody>



                <c:forEach var="predmet" items="${predmeti}">
                <tr>
			<form method="POST" action="save-student-ocena">
				
				<input type="hidden" name="ime" value="${student.ime }" />
				<input type="hidden" name="prezime" value="${student.prezime}" />
				<input type="hidden" name="email" value="${student.email }" />
				<input type="hidden" name="ocena" value="1" />
				<input type="hidden" name="predmet" value="${predmet.nazivPredmeta }" />
				
				<td>${predmet.nazivPredmeta}</td>
						<td>${predmet.imeProfesora}</td>
						<td>${predmet.godina}</td>
						
				<td><button type="submit"class="btn btn-primary" style="background-color:#3190cb;">PRIJAVI</button></td>
			</form>
			
		</c:forEach>
		</tr>
               </tbody>
		</table>
		</div>
	</c:when>
</c:choose>
</body>
</html>