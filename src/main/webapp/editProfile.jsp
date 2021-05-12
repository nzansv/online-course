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
<body><%@ include file = "header.jsp" %>

<img style="margin-top: 100px" width="150" height="150" src="https://static.thenounproject.com/png/69566-200.png" class="rounded mx-auto d-block">
<div class="row mb-5 d-flex justify-content-center" style="margin-top: 30px">

    <div class="col-3 rounded p-4"  style="width: 300px;" >
        <form action="ProfileServlet" method="post">
            <input type="hidden" name="id" value="<c:out value='${user.id}' />">
            <div class="mb-3">
                <input style="font-size: 18px" value="<c:out value='${user.fullname}' />" type="text" name="fullname"  class="form-control" placeholder="name" >
            </div>
            <div class="mb-3">
                <input style="font-size: 18px" value="<c:out value='${user.email}' />" type="text" name="email"  class="form-control" placeholder="email" >
            </div>
            <div class="mb-3">
                <input style="font-size: 18px" type="text" name="phone_number" value="<c:out value='${user.phone_number}' />"  class="form-control" placeholder="telephone number" >
            </div>

            <div class="mb-3">
                <input style="font-size: 18px" type="password" name="password"  value="<c:out value='${user.password}' />" class="form-control" placeholder="password" >
            </div>
            <center>
                <div class="d-grid gap-2 d-md-block">
                    <button type="submit"  value="Save" class="btn"  style="background: #F5F5F5;font-size: 11px; padding: 15px 32px 15px 32px;" >SAVE</button>
                </div>
            </center>
    </form>
    </div>

</div>

</body>
</html>

