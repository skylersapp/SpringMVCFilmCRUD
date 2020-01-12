<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Search Results</title>
</head>
<body>


  <c:choose>
    <c:when test="${! empty films}">
    
    
    
      <ul>
        <c:forEach var="film" items="${films}">
        <li>
      <a href="search.jsp?film${film}">${film.title }</a>
        </li>
    </c:forEach>

      </ul>
      
        <form action="editFilm.do" method="GET">
    <input type="hidden" name="film" value= "${film.id }" /> 
    <input type="submit" value="Edit Film Data" />
  </form>
  
  <form action="deleteFilm.do" method="POST">
    <input type="hidden" name="film" value= "${film.id }" /> 
    <input type="submit" value="Delete Film ONLY works on user-added films" />
  </form>
      
      <!-- <a href= "editFilm.do">Edit Film </a> -->
    </c:when>
    <c:otherwise>
      <p>No films found</p>
    </c:otherwise>
  </c:choose>







</body>
</html>