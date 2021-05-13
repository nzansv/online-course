<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
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
            <li class="nav-item active">
                <a class="nav-link" href="adminList">Home <span class="sr-only">(current)</span> </a>
            </li>
            <li class="nav-item">
                <form action="LogoutServlet" method="post">
                    <input class="btn" style="background: white"  type="submit" value="Sign Out" >
                </form>
            </li>
        </ul>
    </div>
</nav>
<center>
    <h4>All available courses</h4>
</center>
<div class="container">
    <div class="row">
        <div class="col-9">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Title</th>
                    <th scope="col">Short_Information</th>
                    <th scope="col">Duration</th>
                    <th scope="col">Level</th>
                    <th scope="col">Actions</th>
                </tr>
                </thead>
                <tbody>
<c:forEach var="course" items="${courseList}">
                <tr>
                    <th scope="row"><c:out value="${course.id}" /></th>
                    <td><c:out value="${course.title}" /></td>
                    <td><c:out value="${course.short_info}" /></td>
                    <td><c:out value="${course.duration}" /></td>
                    <td><c:out value="${course.level}" /></td>
                    <td>

                        <a href="delete?id=<c:out value='${course.id}' />">Delete</a>
                    </td>

                </tr>
</c:forEach>
                </tbody>
            </table>

        </div>
        <div class="col">
            <form action="new" method="post">
                <button type="submit"  value="list" class="btn"  style="background: #F5F5F5;font-size: 15px; padding: 15px 32px 15px 32px;" type="button">Add New Course</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>

