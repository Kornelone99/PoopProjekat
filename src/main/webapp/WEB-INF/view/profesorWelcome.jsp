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
          <a href="">${mypredmet.imeProfesora}</a>
        </h1>
        <div id="meni">
          <ul>
            <li><a href="" id="aktivan">MOJI PREDMETI</a></li>
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
        <hr />
        
        <table class="table table-striped table-bordered">
          <thead>
            <tr>
              <th>Naziv Predmeta</th>
              <th>Smer</th>
              <th>Godina</th>
              <th>PRIJAVE</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach var="predmet" items="${predmeti}">
              <tr>
                
                <td>${predmet.nazivPredmeta}</td>
                <td>${predmet.smer}</td>
                <td>${predmet.godina}</td>

                <td>
                <form method="POST" action="/profesor/izabran-predmet">
                  <input type="hidden" value="${predmet.id}" name="id" />
                  <input
                    type="hidden"
                    value="${predmet.nazivPredmeta}"
                    name="nazivPredmeta"
                  />
                  <input type="hidden" value="${predmet.smer}" name="smer" />
                  <input
                    type="hidden"
                    value="${predmet.godina}"
                    name="godina"
                  />
                  <input
                    type="hidden"
                    value="${predmet.imeProfesora}"
                    name="imeProfesora"
                  />
                  <input type="hidden" value="${predmet.jmbg}" name="jmbg" />

                  <button
                    type="submit"
                    class="btn btn-primary"
                    style="background-color: #3190cb; color:white;"
                  >
                    PREGLEDAJ
                  </button>
                  </form>
                </td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>
    </div>
  </body>
</html>
