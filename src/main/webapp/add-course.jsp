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
<body><%@ include file = "header.jsp" %>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="row mb-5 d-flex justify-content-center" style="font-family: Montserrat">

    <div class="col-3 rounded p-4"  style="width: 300px;" >
        <form action="insert" method="POST">
            <h5 class="d-flex justify-content-center">New Course</h5>
            <hr>
            <br>
            <div class="mb-3">
                <input style="font-size: 13px" type="text" name="title" value="bob" class="form-control" placeholder="title" >
            </div>
            <div class="mb-3">
                <input style="font-size: 13px" type="text" name="description" class="form-control" placeholder="description" >
            </div>
            <div class="mb-3">
                <input style="font-size: 13px" type="text" name="duration"  class="form-control" placeholder="duration" >
            </div>
            <div class="mb-3">
                <input style="font-size: 13px" type="text" name="level"  class="form-control" placeholder="level" >
            </div>
            <div class="mb-3">
                <input style="font-size: 13px" type="text" name="img_src"  class="form-control" placeholder="img_src" >
            </div>
            <div class="mb-3">
                <input style="font-size: 13px" type="text" name="short_info"  class="form-control" placeholder="short_info" >
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
