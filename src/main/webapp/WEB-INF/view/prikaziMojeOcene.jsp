<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>Studentska služba</title>
<style><%@include file="/WEB-INF/css/style.css"%></style>
<style><%@include file="/WEB-INF/css/meni.css"%></style>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="SHORTCUT ICON" href="https://studentskasluzba.com/wp-content/uploads/2015/06/logonovi2.png"/>
</head>
<body  style="background-color:#ebebeb;">
 ${student.email}
<div id="heder">
                
             <c:choose>
				<c:when test="${mode=='MODE_PRIJAVE'}">
				<h1 id="ss">
                   
                    <a href="/">STUDENTSKA SLUŽBA</a>
                </h1>
                <div id="meni">
                    <ul>
                    
                       <li><a href="/student/prijavi-ispite">PREDMETI</a></li>
			           <li><a href="/student/show-ocene" id="aktivan">MOJE PRIJAVE</a></li>
			           <li><a href="/student/show-prosek">MOJE OCENE</a></li>
                        <li><a href="/logout">IZLOGUJ SE</a></li>
                       
                    </ul>
                </div>
                
            </div>
             <h3  style="color: #3190cb; text-align:center;"><br>
					SVE MOJE PRIJAVE
				</c:when>
             </c:choose>
             
             <c:choose>
				<c:when test="${mode=='MODE_PROSEK'}">
				<h1 id="ss">
                   
                    <a href="/">STUDENTSKA SLUŽBA</a>
                </h1>
                <div id="meni">
                    <ul>
                    
                       <li><a href="/student/prijavi-ispite">PREDMETI</a></li>
			           <li><a href="/student/show-ocene">MOJE PRIJAVE</a></li>
			           <li><a href="/student/show-prosek" id="aktivan">MOJE OCENE</a></li>
                        <li><a href="/logout">IZLOGUJ SE</a></li>
                       
                    </ul>
                </div>
                
            </div>
             <h3  style="color: #3190cb; text-align:center;"><br>
					SVE MOJE OCENE<br>PROSEK: <span style="color:#b46d01;">${prosek}</span>
				</c:when>
             </c:choose>
	         </h3>
          
     <div class="container">
     <hr>
		<table class="table table-striped table-bordered" style="text-align:center">
			<thead>
				<tr>
					<th>NAZIV PREDMETA</th>
				
					<th>STATUS/OCENA</th>
					
				</tr>
			</thead>
			<tbody>
       
		<c:forEach var="studentOcena" items="${studentiOcene}">
		<tr>
			<td> ${studentOcena.predmet}</td> 
		    <td><c:if test="${studentOcena.ocena == 1}">
			    Ispit je prijavljen
			</c:if>
			<c:if test="${studentOcena.ocena != 1}">
			    ${studentOcena.ocena}
			</c:if>
			</td>
			</tr>
		</c:forEach>
		</tbody>
		</table>
		</div>
</body>
</html>