
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
<body>
<nav class="navbar navbar-expand-lg navbar-light" style="font-family: Montserrat">
    <a class="navbar-brand" href="#">.dev</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" >
        <ul class="navbar-nav ml-auto">
            <form action="lastList" method="post">
                <input class="btn" style="background: white"  type="submit" value="Home" >
            </form>
            <li class="nav-item active">
                <a class="nav-link" href="profile.jsp">Profile <span class="sr-only"></span> </a>
            </li>
            <li class="nav-item">
                <form action="LogoutServlet" method="post">
                    <input class="btn" style="background: white"  type="submit" value="Sign Out" >
                </form>
            </li>
        </ul>
    </div>

</nav>
</div>
<br>
<br>
<center><h3 style="font-family: Montserrat">All Courses List</h3></center>

<div class="row mb-5 d-flex justify-content-center" style="font-family: Montserrat">

    <div class="card-group " style="font-family: Montserrat">
<c:forEach var="course" items="${courseList}">
        <div class="card">
            <img class="card-img-top" src="<c:out value="${course.img_src}" />">
            <div class="card-body">
                <h5 class="card-title"><c:out value="${course.title}" /></h5>
                <p class="card-text"><c:out value="${course.short_info}" /></p>
                <a href="CourseDetailsServlet?id=${course.id}" class=" btn" style="background: #F5F5F5;">Read more</a>
            </div>
        </div>
</c:forEach>
    </div>
    <br>

</div>

</body>
</html>

