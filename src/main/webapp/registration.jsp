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
</nav>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="row mb-5 d-flex justify-content-center" style="font-family: Montserrat">

    <div class="col-3 rounded p-4"  style="width: 300px;" >
        <form action="insertUser" method="POST">
            <h5 class="d-flex justify-content-center">Registration</h5>
            <hr>
            <br>
            <div class="mb-3">
                <input style="font-size: 13px" type="text" name="fullname" value="bob" class="form-control" placeholder="fullname" >
            </div>
            <div class="mb-3">
                <input style="font-size: 13px" type="text" name="username" class="form-control" placeholder="username" >
            </div>
            <div class="mb-3">
                <input style="font-size: 13px" type="password" name="password"  class="form-control" placeholder="password" >
            </div>
            <div class="mb-3">
                <input style="font-size: 13px" type="text" name="email"  class="form-control" placeholder="email" >
            </div>
            <div class="mb-3">
                <input style="font-size: 13px" type="text" name="phone_number"  class="form-control" placeholder="phone_number" >
            </div>
            <center>
                <div class="d-grid gap-2 d-md-block">
                    <button type="submit"  value="insertUser" class="btn"  style="background: #F5F5F5;font-size: 11px; padding: 15px 32px 15px 32px;" type="button">Create</button>
                </div>
            </center>
        </form>
    </div>
</div>
</div>
</div>
</body>
</html>
