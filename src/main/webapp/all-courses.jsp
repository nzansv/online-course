
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <style>
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body><%@ include file = "header.jsp" %>
</div>
<br>
<br>
<center><h3 style="font-family: Montserrat">All Courses List</h3></center>

<div class="row row-cols-3" style="font-family: Montserrat">

<c:forEach var="course" items="${courseList}">
    <div class="col">
        <div class="card">
            <img class="card-img-top" src="<c:out value="${course.img_src}" />">
            <div class="card-body">
                <h5 class="card-title"><c:out value="${course.title}" /></h5>
                <p class="card-text"><c:out value="${course.short_info}" /></p>
                <a href="CourseDetailsServlet?id=${course.id}" class=" btn" style="background: #F5F5F5;">Read more</a>
            </div>
        </div>
    </div>
</c:forEach>
    <br>
</div>

</body>
</html>

