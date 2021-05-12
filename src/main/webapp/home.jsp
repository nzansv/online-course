<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.lang.String" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <style>
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>

<%@ include file = "header.jsp" %>


</div>
<br>
<br>


<div class="card-group" style="font-family: Montserrat">

    <%-- getting all Courses --%>
<c:forEach var="course" items="${courseList}">

    <div class="card">
        <img class="card-img-top" src="<c:out value="${course.img_src}" />" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title"><c:out value="${course.title}" /></h5>
            <p class="card-text"><c:out value="${course.short_info}" /></p>
            <input type="hidden" name="id" value="><c:out value="${course.id}" />">
            <a href="CourseDetailsServlet?id=${course.id}" class=" btn" style="background: #F5F5F5;">Read more</a>
        </div>
    </div>
</c:forEach>

</div>
<br>
<center>
    <form action="list" method="post">
    <button type="submit"  value="list" class="btn"  style="background: #F5F5F5;font-size: 15px; padding: 15px 32px 15px 32px;" type="button">View All Courses</button>
        </form>
</center>
<%@ include file = "footer.jsp" %>
</body>
</html>

