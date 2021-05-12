<nav class="navbar navbar-expand-lg navbar-light" style="font-family: Montserrat">
    <a class="navbar-brand" href="#">.dev</a>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <%@ page buffer="16kb" %>
    <%
        String userName = null;
        Cookie[] cookies = request.getCookies();
        if(cookies !=null){
            for(Cookie cookie : cookies){
                if(cookie.getName().equals("username")) userName = cookie.getValue();
            }
        }
    %>
    <%!String username;%>
    <%username = userName;%>
    <div class="collapse navbar-collapse" >
        <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">Hello,<% out.print( username); %> <span class="sr-only">(current)</span> </a>
            </li>
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
