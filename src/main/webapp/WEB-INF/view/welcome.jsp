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
<style><%@include file="/WEB-INF/css/createStudent.css"%></style>
<style><%@include file="/WEB-INF/css/allStudents.css"%></style>
<link rel="SHORTCUT ICON" href="https://studentskasluzba.com/wp-content/uploads/2015/06/logonovi2.png"/>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">Studentska Sluzba</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link" href="/login">Login
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="/create-student">Create Student <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="/create-predmet">Create Predmet <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="/show-students">All Students <span class="sr-only">(current)</span>
				</a></li>
		</div>
	</nav>

	
	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">
			<div class="container py-3" id="homediv">
				<div class="jumbotron text-center">
					<h1>Dobrodosli U IMI Studensku Sluzbu</h1>
					<h3>SAasklsakl eqopEDEDEwdjke</h3>
				</div>
			</div>
		</c:when>
		
		<c:when test="${mode=='MODE_CREATE_STUDENT'}">
			<div id="glavni">
          <div id="heder">
                <h1 id="ss">
                   
                    <a href="index.html">STUDENTSKA SLUŽBA</a>
                </h1>
                <div id="meni">
                    <ul>
  <li><a href="#about">STUDENTI</a></li>
  <li><a href="kreirajstudenta.html" id="active">KREIRAJ STUDENTA</a></li>
  <li><a href="#news">ULOGUJ SE</a></li>
</ul>
                </div></div>
            <br>
            <div id="forma">
                <form  method="POST" action="save-student" >
                    <input type="hidden" name="id" value="${student.id }" />
  <label for="ime">IME</label><br>
  <input type="text" name="ime" value="${student.ime }" id="ime" /><br><br>
  <label for="prezime">PREZIME</label><br>
  <input type="text" name="prezime" value="${student.prezime }" id="prezime" /><br><br>
  
  <label for="email">EMAIL</label><br>
  <input type="text" name="email" value="${student.email }" id="email" /><br><br>
  
  <label for="jmbg">JMBG</label><br>
  <input type="text" name="jmbg" value="${student.jmbg }" id="jmbg" /><br><br>
  
   <label for="lozinka">LOZINKA</label><br>
  <input type="password" name="password" value="${student.password }" id="lozinka"/><br><br>
  
  <label for="indeks">INDEKS</label><br>
  <input type="text" name="indeks" value="${student.indeks }" id="indeks" /><br><br>
  
  <label for="godina">GODINA</label><br>
  <input type="text"  name="godina" value="${student.godina }" id="godina"/><br><br>
  
  <input type="submit" value="KREIRAJ" id="dugme">
</form> 
                
                
            </div>
            
            
            
            </div>
		</c:when>
		
		<c:when test="${mode=='ALL_STUDENTS'}">
		<div class="container text-center" id="tasksDiv">
			<h3>Svi Studenti</h3>
			<hr>
			<div class="table-responsive">
				<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<th>Id</th>
							<th>Ime</th>
							<th>Prezime</th>
							<th>Email</th>
							<th>Jmbg</th>
							<th>Password</th>
							<th>Indeks</th>
							<th>Godina</th>
							<th>Obrisi</th>
							<th>Edit</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="student" items="${students }">
							<tr>
								<td>${student.id}</td>
								<td>${student.ime}</td>
								<td>${student.prezime}</td>
								<td>${student.email}</td>
								<td>${student.jmbg}</td>
								<td>${student.password}</td>
								<td>${student.indeks}</td>
								<td>${student.godina}</td>
								
								<td><a href="/delete-student?id=${student.id }">Obrisi</a></td>
								<td><a href="/edit-student?id=${student.id }">Edit</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		</c:when>
		
		<c:when test="${mode=='MODE_UPDATE' }">
			<div id="glavni">
          <div id="heder">
                <h1 id="ss">
                   
                    <a href="index.html">STUDENTSKA SLUŽBA</a>
                </h1>
                <div id="meni">
                    <ul>
  <li><a href="#about">STUDENTI</a></li>
  <li><a href="kreirajstudenta.html" id="active">KREIRAJ STUDENTA</a></li>
  <li><a href="#news">ULOGUJ SE</a></li>
</ul>
                </div></div>
            <br>
            <div id="forma">
                <form   method="POST" action="save-student">
                    <input type="hidden" name="id" value="${student.id }" />
  <label for="ime">IME</label><br>
  <input type="text" name="ime" value="${student.ime }" id="ime" /><br><br>
  <label for="prezime">PREZIME</label><br>
  <input type="text" name="prezime" value="${student.prezime }" id="prezime" /><br><br>
  
  <label for="email">EMAIL</label><br>
  <input type="text" name="email" value="${student.email }" id="email" /><br><br>
  
  <label for="jmbg">JMBG</label><br>
  <input type="text" name="jmbg" value="${student.jmbg }" id="jmbg" /><br><br>
  
   <label for="lozinka">LOZINKA</label><br>
  <input type="password" name="password" value="${student.password }" id="lozinka"/><br><br>
  
  <label for="indeks">INDEKS</label><br>
  <input type="text" name="indeks" value="${student.indeks }" id="indeks" /><br><br>
  
  <label for="godina">GODINA</label><br>
  <input type="text"  name="godina" value="${student.godina }" id="godina"/><br><br>
  
  <input type="submit" value="IZMENI" id="dugme">
</form> 
                
                
            </div>
            
            
            
            </div>
		</c:when>
		<c:when test="${mode=='MODE_CREATE_PREDMET' }">
			<div class="container text-center">
				<h3>New Registration</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-predmet">
					<input type="hidden" name="id" value="${prdmet.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Naziv Predmeta</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="nazivPredmeta"
								value="${predmet.nazivPredmeta }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Smer</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="smer"
								value="${predmet.smer }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Godina</label>
						<div class="col-md-7">
							<input type="number" class="form-control" name="godina"
								value="${predmet.godina }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Ime Profesora</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="imeProfesora"
								value="${predmet.imeProfesora}" />
						</div>
					</div>
					
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Register" />
					</div>
				</form>
			</div>
		</c:when>
		
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
						<td>${predmet.id}ddslkskl</td>
						<td>${predmet.nazivPredmeta}</td>
						<td>${predmet.smer}</td>
						<td>${predmet.godina}</td>
						<td>${predmet.imeProfesora}</td>



						<td><a href="/delete-student?id=${predmet.id }">Obrisi</a></td>
						<td><a href="/edit-student?id=${predmet.id }">Edit</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:when>
	</c:choose>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
		integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
		crossorigin="anonymous"></script>
</body>
</html>
