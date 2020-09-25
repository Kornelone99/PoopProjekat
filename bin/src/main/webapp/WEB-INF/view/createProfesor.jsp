<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form class="form-horizontal" method="POST" action="save-profesor">
					<input type="hidden" name="id" value="${profesor.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Ime Profesora</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="ime"
								value="${profesor.ime }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Prezime Profesora</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="prezime"
								value="${profesor.prezime }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">JMBG</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="jmg"
								value="${profesor.jmg }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Institut</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="institut"
								value="${profesor.institut}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="password"
								value="${profesor.password}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Godine</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="godine"
								value="${profesor.godine}" />
						</div>
					</div>
					
					<button type="submit">Register</button>
				</form>
</body>
</html>