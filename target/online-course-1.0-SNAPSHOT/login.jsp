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
        <form action="login" method="POST">
            <h5 class="d-flex justify-content-center">Login</h5>
            <hr>
            <br>
            <div class="mb-3">
                <input style="font-size: 13px" type="text" name="username" value="bob" class="form-control" placeholder="username" >
            </div>

            <div class="mb-3">
                <input style="font-size: 13px" type="password" name="password" value="123" class="form-control" placeholder="password" >
            </div>
            <center>
                <div class="d-grid gap-2 d-md-block">
                    <button type="submit"  value="login" class="btn"  style="background: #F5F5F5;font-size: 11px; padding: 15px 32px 15px 32px;" type="button">SIGN IN</button>
                </div>
            </center>
        </form>
        <center>
                <a class="btn" href="registration.jsp" style="background: transparent; font-size: 15px"  type="submit"  >Create New Account</a>
        </center>
    </div>
</div>
</div>
</div>
</body>
</html>
