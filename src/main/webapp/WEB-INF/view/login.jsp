<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Studentska služba</title>
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200&display=swap" rel="stylesheet">
<style><%@include file="/WEB-INF/css/style.css"%></style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css" integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">
<link rel="SHORTCUT ICON" href="https://studentskasluzba.com/wp-content/uploads/2015/06/logonovi2.png"/>
</head>
<body style="overflow:hidden;">

<div class="container-fluid">
      <div class="row" style="height:100vh;">
      <div class="col-6" style="background-image:url('https://www.netokracija.rs/wp-content/uploads/sites/4/2017/03/vucic-675x400.png'); background-size:cover;background-position:center; border-right:2px solid green; height:100%;" ></div>
      <div class="col-6" style="position: absolute; top: 30%; left: 65%; width: 100%;">
            <h2 style="font-family: 'Oswald', sans-serif; position:relative; margin-left:19px; padding-bottom:30px;"><a href="/home">Dobrodošli u e-prijavu</a></h2>
            <form class="form-horizontal" style="width:50%; " method="POST" action="login">
                <div class="form-group" style="color:black;">
                  <label for="inputEmail3" class="col-sm-2 control-label" style="color:black;">Email</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="username" name="username" placeholder="email">
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label" style="color:black;">Lozinka</label>
                  <div class="col-sm-10">
                    <input type="password" class="form-control" id="password" name="password" placeholder="lozinka">
                  </div>
                </div>
                <div class="form-group" style="text-align:center">
                  <div class="col-sm-offset-2 col-sm-10">
                    <button type="sumbit" class="btn btn-primary">Prijava</button>
                  </div>
                </div>
            </form>
      </div>
      </div>
    </div>

</body>
</html>