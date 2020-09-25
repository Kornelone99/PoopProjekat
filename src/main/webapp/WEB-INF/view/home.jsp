<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Studentska služba</title>
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200&display=swap" rel="stylesheet">
<style><%@include file="/WEB-INF/css/style.css"%></style>
<style><%@include file="/WEB-INF/css/izaberi.css"%></style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css" integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">
<link rel="SHORTCUT ICON" href="https://studentskasluzba.com/wp-content/uploads/2015/06/logonovi2.png"/>
</head>
<body style="overflow:hidden;">

<div class="container-fluid">
      <div class="row" style="height:100vh;">
      <div class="col-6" style="background-image:url('https://www.netokracija.rs/wp-content/uploads/sites/4/2017/03/vucic-675x400.png'); background-size:cover;background-position:center; border-right:2px solid green; height:100%;" ></div>
      <div class="col-6" style="position: absolute; top: 30%; left: 50%; width: 100%;">
            <h2 style="font-family: 'Oswald', sans-serif;text-align:center; position:relative; padding-bottom:30px; ">Dobrodošli u e-prijavu</h2>
            
            <div id="izaberi">
            <div id="student">
			<a href="/">STUDENT</a></div>
            <div id="profesor">
			<a href="/profesor">PROFESOR</a></div>
			<div id="admin">
			<a href="/welcome">ADMIN</a></div>
			</div>
      </div>
      </div>
    </div>

</body>
</html>