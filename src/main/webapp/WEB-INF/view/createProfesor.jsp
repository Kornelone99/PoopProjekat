<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Studentska služba</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css" integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">
<link rel="SHORTCUT ICON" href="https://studentskasluzba.com/wp-content/uploads/2015/06/logonovi2.png"/>
<style><%@include file="/WEB-INF/css/style.css"%></style>
<style><%@include file="/WEB-INF/css/meni.css"%></style>
</head>
<body style="background-color:#ebebeb;">
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
                        <li><a href="create-profesor" id="aktivan">DODAJ PROFESORA</a></li>
                        <li><a href="show-profesors">PROFESORI</a></li>
                        <li><a href="logout">IZLOGUJ SE</a></li>
                    </ul>
                </div>
                
            </div>
            
            
				<div class="container" style="background-color:lightgray; padding-top:10px;
				border:3px solid #3190cb;
         padding-bottom:30px;">
       
      <form class="form-horizontal" method="POST" action="save-profesor">
        <input type="hidden" name="id" value="${profesor.id }" />
            <div class="form-group">
              <label for="inputEmail3" class="col-sm-2 control-label">IME</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="inputEmail3" placeholder="ime" name="ime"
								value="${profesor.ime }" 
								oninvalid="this.setCustomValidity('OBAVEZNO POLJE')"  oninput="setCustomValidity('')" required="" />
              </div>
            </div>
        <div class="form-group">
          <label for="inputPassword3" class="col-sm-2 control-label">PREZIME</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="inputPassword3" placeholder="prezime" name="prezime"
								value="${profesor.prezime }"
								oninvalid="this.setCustomValidity('OBAVEZNO POLJE')"  oninput="setCustomValidity('')" required=""  />
          </div>
        </div>
        <div id="pola" class="form-group">
          <label for="inputPassword3" class="col-sm-2 control-label">EMAIL</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="inputPassword3" placeholder="email" name="jmg"
								value="${profesor.jmg }"
								oninvalid="this.setCustomValidity('OBAVEZNO POLJE')"  oninput="setCustomValidity('')" required=""  />
          </div>
        </div>
        <div class="form-group">
          <label for="inputPassword3" class="col-sm-2 control-label">DATUM ROĐENJA</label>
          <div class="col-sm-10">

            

            <input type="text" class="form-control" id="inputPassword3" placeholder="datum rođenja" name="godine"
								value="${profesor.godine}" 
								oninvalid="this.setCustomValidity('OBAVEZNO POLJE')"  oninput="setCustomValidity('')" required="" />

          </div>
        </div>
        <div class="form-group">
          <label for="inputPassword3" class="col-sm-2 control-label">INSTITUT</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="inputPassword3" placeholder="institut" name="institut"
								value="${profesor.institut}" 
								oninvalid="this.setCustomValidity('OBAVEZNO POLJE')"  oninput="setCustomValidity('')" required="" />
          </div>
        </div>
        <div class="form-group">
          <label for="inputPassword3" class="col-sm-2 control-label">LOZINKA</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" id="inputPassword3" placeholder="lozinka" name="password"
								value="${profesor.password}" 
								oninvalid="this.setCustomValidity('OBAVEZNO POLJE')"  oninput="setCustomValidity('')" required="" />
          </div>
        </div>
      <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
          <button type="submit" class="btn btn-primary" style="margin:10px; background-color:#3190cb;">DODAJ PROFESORA</button>
        </div>
      </div>
    </form>
  </div>
				
</body>
</html>