<%-- 
    Document   : Login
    Created on : 30-Jul-2024, 8:20:21 pm
    Author     : Admin
--%>

<%@page import="com.blog.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">  
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <%@include file="normal_navbar.jsp" %> 
        <main class="d-flex align-items-center" primary-background style="height : 70vh">
            <div class="container">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-header primary-background text-white text-center">
                            
                            
                            <p><h1>Login here</h1></p>
                        </div>
                        
                      <% 
                          
                          Message msg=(Message) session.getAttribute("msg");
                          if(msg!=null)
                          {
                          

                      %>
                        <div class="alert alert-primary" role="alert">
                        
                            <%= msg.getContent() %>
                       </div>
                      <% 
                          session.removeAttribute("msg");
                          }%>
                        <div class="card-body">
                            <form action="Login" method="post">
                                  <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                  </div>
                                  <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                  </div>
                                  <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                  </div>
                                <br>
                                <div class="container text-center">
                                  <button type="submit" class="btn primary-background align-center">Submit</button>
                                </div>
                            </form>
                        </div>
                </div>
            </div>
        </main>
        
    </body>
</html>
