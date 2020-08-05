<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form class="form-horizontal" method="POST" action="save-predmet">
					<input type="hidden" name="id" value="${predmet.id }" />
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
							<input type="text" class="form-control" name="godina"
								value="${predmet.godina }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Ime Profesora </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="imeProfesora"
								value="${predmet.imeProfesora }" />
						</div>
					</div>
					
					<button type="submit">Register</button>
				</form>
</body>
</html>