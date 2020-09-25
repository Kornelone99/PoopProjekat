<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Studentska služba</title>
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
      integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css"
      integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX"
      crossorigin="anonymous"
    />

    <style>
      <%@include file="/WEB-INF/css/meni.css"%>
    </style>
    <style>
      <%@include file="/WEB-INF/css/style.css"%>
    </style>
    <link rel="SHORTCUT ICON" href="https://studentskasluzba.com/wp-content/uploads/2015/06/logonovi2.png"/>
  </head>
  <body style="background-color: #ebebeb;">
  
    <div id="glavni1">
      <div id="heder">
        <h1 id="ss">
          <a href="">${myPredmet.imeProfesora}</a>
        </h1>
        <div id="meni">
          <ul>
            <li><a href="/profesor" id="aktivan">MOJI PREDMETI</a></li>
            S
            <li><a href="/logout">IZLOGUJ SE</a></li>
          </ul>
        </div>
        <br />
        <br /><br />
        <br /><br />
        <br /><br />
      </div>
      
      <div class="container">
       <table class="table table-striped table-bordered">
          <thead>
            <tr>
              <th>IME</th>
              <th>PREZIME</th>
             <th>OCENA</th>
              <th>OCENI</th>
            </tr>
          </thead>
          <tbody>
       <c:forEach items="${prijavljeniIspiti}" var="prijavljenIspit">
       <tr>
   		<form method="POST" action="save-student-ocena">

				<input type="hidden" name="id" value="${prijavljenIspit.id}" />
				<input type="hidden" name="ime" value="${prijavljenIspit.ime }" />
				<input type="hidden" name="prezime" value="${prijavljenIspit.prezime}" />
				<input type="hidden" name="email" value="${prijavljenIspit.email }" />
				<input type="hidden" name="predmet" value="${prijavljenIspit.predmet }" />
				

				<td>${prijavljenIspit.ime }</td>
				<td>${prijavljenIspit.prezime}</td>
<td><input type="number" name="ocena" value=${prijavljenIspit.ocena} /></td>
				<td><button type="submit""
				 class="btn btn-primary"
				 onClick="clickHandler(this);"
                    style="background-color: #3190cb; color:white;"
				>POTVRDI</button></td>
			</form>
			</tr>
</c:forEach>
       
       
       
      </div>
    </div>
    
    <div class="alertDiv">
    	Upsana ocena
    </div>
    
    <script>
    	console.log("Hello from js");
    	function clickHandler(dugme) {
    		alert("Upisana ocena");
    	}
    	
    	
    	

    	
    </script>
  </body>
</html>
