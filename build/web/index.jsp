

<%@page import="com.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Techno Lab</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">  
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>


        <%@include file="normal_navbar.jsp" %> 

        <div class="container-fluid p-0 m-0">
            <div class="jumbotron primary-background text-white">
                <div class="container">
                    <h3 class="display-3"> Welcome Folks</h3>
                    <h3>Techno Lab</h3>
                    <p>Welcome to technical blog , world of technology</p>
                    <button class="btn btn-outline-light btn-lg">Click her to Start</button>
                    <a href="Login.jsp" class="btn btn-outline-light btn-lg">Click her to Login</a>
                </div>
            </div>
        </div>

        <div class="container">

            <div class="row">
                <div class="col-md-4">
                    <div class="card" style="">

                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Java is an object-oriented language that runs on any device with the Java Virtual Machine (JVM), offering portability and cross-platform compatibility. It’s commonly used for web applications, enterprise software, and Android development.</p>
                            <a href="#" class="btn primary-background text-white">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" style="">

                        <div class="card-body">
                            <h5 class="card-title">Python Programming</h5>
                            <p class="card-text">Python is a high-level, interpreted programming language known for its readability and ease of use, making it ideal for beginners and experts alike. It supports multiple programming paradigms and is widely used in web development, data analysis, and artificial intelligence.</p>
                            <a href="#" class="btn primary-background text-white">Read More</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card" style="">

                        <div class="card-body">
                            <h5 class="card-title">HyperText Markup Language</h5>
                            <p class="card-text">HyperText Markup Language is the standard language used to create and design web pages by structuring content with elements like headings, paragraphs, and links. It defines the layout and appearance of web content in a browser.</p>
                            <a href="#" class="btn primary-background text-white">Read More</a>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-md-4">
                    <div class="card" style="">

                        <div class="card-body">
                            <h5 class="card-title">Cascading Style Sheets</h5>
                            <p class="card-text">Cascading Style Sheets is used to style and layout HTML documents by specifying design elements such as colors, fonts, and spacing. It separates content from design, allowing for more flexible and maintainable web page presentation.</p>
                            <a href="#" class="btn primary-background text-white">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" style="">

                        <div class="card-body">
                            <h5 class="card-title">JavaScript Programming</h5>
                            <p class="card-text"> JavaScript is a versatile, high-level scripting language that enables dynamic, interactive features on websites, such as animations and form validation. It runs in the browser, allowing real-time updates and enhancing user experiences without needing to reload the page.</p>
                            <a href="#" class="btn primary-background text-white">Read More</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card" style="">

                        <div class="card-body">
                            <h5 class="card-title">R Programming</h5>
                            <p class="card-text">R is a programming language and environment specifically designed for statistical computing and data analysis. It excels in data manipulation, statistical modeling, and visualization, making it popular among data scientists and researchers.</p>
                            <a href="#" class="btn primary-background text-white">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div




        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>  
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <!--<script src="js/myjs.js" type="text/javascript"></script>-->

    </body>
</html>
