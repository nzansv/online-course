<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
<br>
<center>
    <h4 style="font-family: Montserrat">${course.title}</h4>
    <img src="${course.img_src}" width="500px" height="250px" alt="Card image cap">
    <br>
    <hr>
</center>

<div class="container">
    <div class="row">
        <div class="col-9">
            <h5 style="font-family: Montserrat"><strong>Description</strong></h5>
            <p>${course.description}</p>
            <p><strong>Duration: </strong> ${course.duration}</p>
            <p><strong>Level: </strong> ${course.level}</p>
            <a href="AssignCourseServlet?course_id=${course.id}&user_id=${user.id}" class=" btn" style="background: #F5F5F5;">Assign</a>
        </div>
    </div>
</div>



</body>
</html>

