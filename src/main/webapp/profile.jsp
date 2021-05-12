<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
    <title>Home</title>
    <style>
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
<body><%@ include file = "header.jsp" %>

<img style="margin-top: 100px" width="150" height="150" src="https://static.thenounproject.com/png/69566-200.png" class="rounded mx-auto d-block">
<div class="row mb-5 d-flex justify-content-center" style="margin-top: 30px">
    <jsp:useBean id="user" class="com.example.online_course.User" scope="session"/>
    <jsp:setProperty name="user" property="*"/>
    <div class="col-sm-3">
        <ul class="list-group">
            <li class="list-group-item text-muted" contenteditable="false">Profile</li>
            <li class="list-group-item text-left"><span class="pull-left"><strong class="">Name: </strong></span> <jsp:getProperty name="user" property="fullname"/></li>
            <li class="list-group-item text-left"><span class="pull-left"><strong class="">Email: </strong></span> <jsp:getProperty name="user" property="email"/></li>
            <li class="list-group-item text-left"><span class="pull-left"><strong class="">Telephone Number: </strong></span><jsp:getProperty name="user" property="phone_number"/></li>
            <li class="list-group-item text-left"><span class="pull-left"><strong class="">Course Name: </strong></span>${course.title}</li>
        </ul>
        <a href="ShowUserFormServlet?id=${user.id}" class=" btn" style="background: #F5F5F5;">EDIT</a>
    </div>
</div>

</body>
</html>

