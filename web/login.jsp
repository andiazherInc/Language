<%-- 
    Document   : login.jsp
    Created on : 22/04/2017, 06:14:53 PM
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String name="";
    try{      
        if(session.getAttribute("isSession").equals("true")){
            response.sendRedirect("app.jsp");
        }
    }
    catch(NullPointerException s){ 
    }
    try{
        if(!request.getParameter("error").equals("null")){
            name =request.getParameter("error");
        }
    }catch(NullPointerException s){ 
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="pages/images/favicon.ico" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
	<meta name="viewport" content="width=device-width" />
        <link rel="stylesheet" href="pages/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="pages/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <script src="pages/js/jquery-3.2.1.js"></script>
        <script src="pages/js/jquery-ui.js"></script>
        <!--<script src="pages/js/jquery.mobile.custom.js"></script> -->
        <script src="pages/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        
        <title>Login | SCP | by andiazher Inc</title>
    </head>
    <body>
        <div class="">
            <nav class="navbar navbar-primary navbar-static-top" style="background: transparent; color: white; text-shadow: 2px 2px 1px black;">
                <h3 class="col-md-offset-1 col-sm-offset-2"> Sistema de Contabilidad</h3>
            </nav>
        </div>
        <div class="col-md-4 col-sm-6 col-md-offset-4 col-sm-offset-3">
            <div class="panel panel-primary">
                <div class="panel-heading">
                  <h1 class="panel-title text-center">Login</h1>
                </div>
                <div class="panel-body">
                    <p class="text-center text-danger" id="error"><%=name%></p>
                    <form action="loginApp#login=true&key=<%=session.getId()%>" id="loginForm" method="post">
                        <input type="hidden" value="login" name="param">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Username</label>
                            <input type="text" class="form-control" id="exampleInputEmail1"  name="user" placeholder="Username" required>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" name="pass" placeholder="Password" required>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-success btn-block" onclick="validate()">Access</button>
                        </div>
                    </form>
                </div>
              </div>
        </div>
        <div class="col-md-12 col-sm-12 text-center" style="text-shadow: 2px 2px 2px black; color: white;">
            <p class="" style="color: white;">by andiazher Inc</p>
        </div>
    </body>
    <style>
        body {
            width:100%;
            height:100%;
            background: url("pages/images/font3.jpg") no-repeat center center fixed;
            background-color: white;
            background-repeat: no-repeat;
            background-size: cover;
           -moz-background-size: cover;
           -webkit-background-size: cover;
           -o-background-size: cover;
        }
        .navbar{
            background: white;
        }

        
    </style>
</html>
