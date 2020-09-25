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
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css" integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">
<style><%@include file="/WEB-INF/css/home.css"%></style>
<style><%@include file="/WEB-INF/css/meni.css"%></style>
<style><%@include file="/WEB-INF/css/style.css"%></style>
<link rel="SHORTCUT ICON" href="https://studentskasluzba.com/wp-content/uploads/2015/06/logonovi2.png"/>
</head>
<body style="background-color:#ebebeb;">
	<%--<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="welcome">Studentska Sluzba</a>
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
	</nav>--%>

	
	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">
			<div id="glavni1">
            
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
                        <li><a href="show-profesors">PROFESORI</a></li>
                        <li><a href="logout">IZLOGUJ SE</a></li>
                    </ul>
                </div>
                
            </div>
            <br>
            <br><br>
            <br><br>
            <br><br>
            
            
            
            
            
            
            <div id="slika">
                <img src="https://imi.pmf.kg.ac.rs/kongres/assets/img/pmf.png" alt=""/>

            </div>
  
            
            
            <div id="dobrodosli">
            <p id="dobrodoslit">Dobrodošli u Studentsku Službu <br>
                <a href="https://imi.pmf.kg.ac.rs/oglasna-tabla">instituta za Informatiku I Matematiku</a></p>
            </div>
               
        </div> 
		</c:when>
		
		<c:when test="${mode=='MODE_CREATE_STUDENT'}">
			<div id="glavni">
                      <div id="heder">
                <h1 id="ss">
                   
                    <a href="welcome">STUDENTSKA SLUŽBA</a>
                </h1>
                <div id="meni">
                    <ul>
                        
                        <li><a href="create-student" id="aktivan">DODAJ STUDENTA</a></li>
                        <li><a href="show-students">STUDENTI </a></li>
                        <li><a href="create-predmet">DODAJ PREDMET</a></li>
                        <li><a href="show-subjects">PREDMETI</a></li>
                        <li><a href="create-profesor">DODAJ PROFESORA</a></li>
                        <li><a href="show-profesors">PROFESORI</a></li>
                        <li><a href="logout">IZLOGUJ SE</a></li>
                    </ul>
                </div>
                
            </div>
          
            <br>
            <div id="forma" class="container" style="background-color:lightgray; padding-top:10px;
            border:3px solid #3190cb;margin-bottom:20px;
         padding-bottom:30px;">
                <form  class="form-horizontal" method="POST" action="save-student" >
      
                    <input type="hidden" name="id" value="${student.id }" />
  <div class="form-group">
              <label for="ime" class="col-sm-2 control-label">IME</label>
              <div class="col-sm-10">
                <input type="text" name="ime" value="${student.ime }" id="ime"
                placeholder="ime"
                class="form-control"
                oninvalid="this.setCustomValidity('OBAVEZNO POLJE')"  oninput="setCustomValidity('')" required="" />
              </div>
  </div>

   <div class="form-group">
              <label for="prezime" class="col-sm-2 control-label">PREZIME</label>
              <div class="col-sm-10">
                <input type="text" name="prezime" value="${student.prezime }" id="prezime"
                placeholder="prezime"
                class="form-control"
                oninvalid="this.setCustomValidity('OBAVEZNO POLJE')"  oninput="setCustomValidity('')" required="" />
              </div>
   </div>
   
   
  <div class="form-group">
              <label for="email" class="col-sm-2 control-label">EMAIL</label>
              <div class="col-sm-10">
                <input type="text" name="email" value="${student.email }" id="email"
                   placeholder="email"
                   class="form-control"
                   oninvalid="this.setCustomValidity('OBAVEZNO POLJE')"  oninput="setCustomValidity('')" required="" />
              </div>
   </div>
   
   
  <div class="form-group">
              <label for="jmbg" class="col-sm-2 control-label">JMBG</label>
              <div class="col-sm-10">
                <input type="text" name="jmbg" value="${student.jmbg }" id="jmbg"
              placeholder="jmbg"
              class="form-control"
               oninvalid="this.setCustomValidity('OBAVEZNO POLJE')"  oninput="setCustomValidity('')" required="" />
              </div>
    </div>
    
    
  <div class="form-group">
              <label for="lozinka" class="col-sm-2 control-label">LOZINKA</label>
              <div class="col-sm-10">
                <input type="password" name="password" value="${student.password }" id="lozinka"
                 placeholder="lozinka"
                 class="form-control"
                 oninvalid="this.setCustomValidity('OBAVEZNO POLJE')"  oninput="setCustomValidity('')" required="" />
              </div>
    </div>
    
    
  <div class="form-group">
              <label for="indeks" class="col-sm-2 control-label">INDEKS</label>
              <div class="col-sm-10">
                <input type="text" name="indeks" value="${student.indeks }" id="indeks"
                placeholder="indeks"
                class="form-control"
                oninvalid="this.setCustomValidity('OBAVEZNO POLJE')"  oninput="setCustomValidity('')" required="" />
              </div>
 </div>
 
 <div class="form-group">
              <label for="godina" class="col-sm-2 control-label">GODINA</label>
              <div class="col-sm-10">
                <input type="text"  name="godina" value="${student.godina }" id="godina"
                 placeholder="godina"
                 class="form-control"
                 oninvalid="this.setCustomValidity('OBAVEZNO POLJE')"  oninput="setCustomValidity('')" required="" />
              </div>
 </div>
 
       <div class="form-group">
             <div class="col-sm-offset-2 col-sm-10">
              <input type="submit" value="DODAJ STUDENTA" id="dugme"
                  class="btn btn-primary"
                  style="margin:10px; background-color:#3190cb;"
                       >
              </div>
      </div>
</form> 
                
                
            </div>
            
            
            
            </div>
		</c:when>
		
		<c:when test="${mode=='ALL_STUDENTS'}">
		      <div id="heder">
                <h1 id="ss">
                   
                    <a href="welcome">STUDENTSKA SLUŽBA</a>
                </h1>
                <div id="meni" >
                    <ul>
                       
                        <li><a href="create-student">DODAJ STUDENTA</a></li>
                        <li><a href="show-students" id="aktivan">STUDENTI </a></li>
                        <li><a href="create-predmet">DODAJ PREDMET</a></li>
                        <li><a href="show-subjects">PREDMETI</a></li>
                        <li><a href="create-profesor">DODAJ PROFESORA</a></li>
                        <li><a href="show-profesors">PROFESORI</a></li>
                        <li><a href="logout">IZLOGUJ SE</a></li>
                     </ul>
                </div>
                
            </div>
		
		<div class="container text-center" id="tasksDiv">
			<h3 style="color: #3190cb;">SVI STUDENTI</h3>
			
			<div class="table-responsive">
			<hr>
				<table class="table table-striped table-bordered" style="border:3px solid #3190cb;">
					<thead>
						<tr>
							<th>Id</th>
							<th>Ime</th>
							<th>Prezime</th>
							<th>Email</th>
							<th>Jmbg</th>
							<th>Lozinka</th>
							<th>Indeks</th>
							<th>Godina</th>
							<th>Obriši</th>
							<th>Izmeni</th>
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
								
								<td><a href="/delete-student?id=${student.id }"><button class="btn"><i class="fa fa-trash"></i></button></a></td>
								<td><a href="/edit-student?id=${student.id }"><button class="btn"><i class="fa fa-edit"></i></button></a></td>
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
                   
                    <a href="welcome">STUDENTSKA SLUŽBA</a>
                </h1>
                <div id="meni">
                    <ul>

                        <li><a href="create-student">DODAJ STUDENTA</a></li>
                        <li><a href="show-students" id="aktivan">STUDENTI </a></li>
                        <li><a href="create-predmet">DODAJ PREDMET</a></li>
                        <li><a href="show-subjects">PREDMETI</a></li>
                        <li><a href="create-profesor">DODAJ PROFESORA</a></li>
                        <li><a href="show-profesors">PROFESORI</a></li>
                        <li><a href="logout">IZLOGUJ SE</a></li>
</ul>
                </div>
                
            </div>
          
          
          
            <br>
            <div id="forma">
             <div id="forma" class="container" style="background-color:lightgray; padding-top:10px;
             border:3px solid #3190cb;
         padding-bottom:30px;">
                <form  class="form-horizontal" method="POST" action="save-student" >
      
                    <input type="hidden" name="id" value="${student.id }" />


  <div class="form-group">
              <label for="ime" class="col-sm-2 control-label">IME</label>
              <div class="col-sm-10">
                <input type="text" name="ime" value="${student.ime }" id="ime"
                placeholder="ime"
                class="form-control"
                oninvalid="this.setCustomValidity('OBAVEZNO POLJE')"  oninput="setCustomValidity('')" required="" />
              </div>
  </div>

   <div class="form-group">
              <label for="prezime" class="col-sm-2 control-label">PREZIME</label>
              <div class="col-sm-10">
                <input type="text" name="prezime" value="${student.prezime }" id="prezime"
                placeholder="prezime"
                class="form-control"
                oninvalid="this.setCustomValidity('OBAVEZNO POLJE')"  oninput="setCustomValidity('')" required="" />
              </div>
   </div>
   
   
  <div class="form-group">
              <label for="email" class="col-sm-2 control-label">EMAIL</label>
              <div class="col-sm-10">
                <input type="text" name="email" value="${student.email }" id="email"
                   placeholder="email"
                   class="form-control"
                   oninvalid="this.setCustomValidity('OBAVEZNO POLJE')"  oninput="setCustomValidity('')" required="" />
              </div>
   </div>
   
   
  <div class="form-group">
              <label for="jmbg" class="col-sm-2 control-label">JMBG</label>
              <div class="col-sm-10">
                <input type="text" name="jmbg" value="${student.jmbg }" id="jmbg"
              placeholder="jmbg"
              class="form-control"
               oninvalid="this.setCustomValidity('OBAVEZNO POLJE')"  oninput="setCustomValidity('')" required="" />
              </div>
    </div>
    
    
  <div class="form-group">
              <label for="lozinka" class="col-sm-2 control-label">LOZINKA</label>
              <div class="col-sm-10">
                <input type="password" name="password" value="${student.password }" id="lozinka"
                 placeholder="lozinka"
                 class="form-control"
                 oninvalid="this.setCustomValidity('OBAVEZNO POLJE')"  oninput="setCustomValidity('')" required="" />
              </div>
    </div>
    
    
  <div class="form-group">
              <label for="indeks" class="col-sm-2 control-label">INDEKS</label>
              <div class="col-sm-10">
                <input type="text" name="indeks" value="${student.indeks }" id="indeks"
                placeholder="indeks"
                class="form-control"
                oninvalid="this.setCustomValidity('OBAVEZNO POLJE')"  oninput="setCustomValidity('')" required="" />
              </div>
 </div>
 
 <div class="form-group">
              <label for="godina" class="col-sm-2 control-label">GODINA</label>
              <div class="col-sm-10">
                <input type="text"  name="godina" value="${student.godina }" id="godina"
                 placeholder="godina"
                 class="form-control"
                 oninvalid="this.setCustomValidity('OBAVEZNO POLJE')"  oninput="setCustomValidity('')" required="" />
              </div>
 </div>
 
       <div class="form-group">
             <div class="col-sm-offset-2 col-sm-10">
              <input type="submit" value="IZMENI" id="dugme"
                  class="btn btn-primary"
                  style="margin:10px; background-color:#3190cb;"
                       >
              </div>
      </div>
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
