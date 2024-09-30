

<%@page import="java.util.ArrayList"%>
<%@page import="com.blog.entities.Category"%>
<%@page import="com.blog.helper.ConnectionProvider"%>
<%@page import="com.blog.dao.PostDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">  
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
    </head>
    <body>



        <nav class="navbar navbar-expand-lg navbar-dark primary-background">
            <a class="navbar-brand" href="#"><span class="fa fa-rupee"></span> TechBlog</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" data-toggle="modal" data-target="#exampleModalCenter">Post</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="#" data-toggle = "modal" data-target="#profile">Logout</a>

                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Categories
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#">Disabled</a>
                    </li>
                </ul>
                <ul class="navbar-nav mr-right">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Logout <span class="sr-only">(current)</span></a>
                    </li>

                </ul>


            </div>
        </nav>

        <!-- Button trigger modal -->


        <!-- Modal -->
        <div class="modal fade" id="profile" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header primary-background text-white">
                        <h5 class="modal-title" id="exampleModalLabel">TechSoft</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>

        <main>
            <div class="container">
                <div class="row mt-4">
                    <div class="col-md-4">
                        <div class="list-group">
                            <a href="#" class="list-group-item list-group-item-action active primary-background">
                                All Post 
                            </a>
                            <%
                                PostDao d = new PostDao(ConnectionProvider.getConnection());
                                ArrayList<Category> listd = d.getCategories();
                                for (Category cc : listd) {
                            %>

                            <a href="#" onclick="getPosts(<%= cc.getCid() %>) "class="list-group-item list-group-item-action"><%= cc.getName()%></a>
                            <%
                                }
                            %>


                        </div>
                    </div>

                    <div class="col-md-8" id="post-container">
                        <div class="conatiner text-center" id="loader">
                            <i class="fa fa-refresh fa-4x fa-spin"></i>
                            <h3 class="mt-2">Loading...</h3>
                        </div>
                        <!--<div class="conatiner-fluid" id="post-container">-->

                    </div>
                </div>
            </div>
        </div>
    </main>
    <!--add post-->

    <!-- Modal -->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Post Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="add-post-form" action="AddPostServlet" method="post">
                        <div class="form-group">
                            <select class="form-control" name="cid">

                                <!--start-->

                                <option selected="disabled">----SELECT CATEGORY----</option>
                                <%
                                    try {
                                        PostDao post = new PostDao(ConnectionProvider.getConnection());
                                        ArrayList<Category> list = post.getCategories();
                                        if (list != null) {
                                            for (Category c : list) {
                                %>
                                <option value="<%= c.getCid()%>"><%=c.getName()%></option>
                                <%
                                    }
                                } else {
                                %>
                                <option >No categories available</option>
                                <%
                                        }
                                    } catch (Exception e) {
                                        e.printStackTrace(); // Log the exception for debugging
                                        out.println("An error occurred: " + e.getMessage()); // Display error message
                                    }
                                %>
                            </select>




                            <!--end krdiya-->

                        </div>
                        <br>
                        <div class="form-group"> 
                            <label for="post-title">Post Title</label>
                            <input type="text" name="postTitle" id="post-title" placeholder="Enter post title" class="form-control" required/>
                        </div>
                        <div class="form-group"> 
                            <label for="post-user">User Id</label>
                            <input type="number" name="postUser" id="post-user" placeholder="Enter user id" class="form-control" required/>
                        </div>
                        <div class="form-group"> 
                            <label for="post-content">Content</label>
                            <textarea id="post-content" name="postContent" class="form-control" style="height: 250px" placeholder="Enter your content" required></textarea>
                        </div>
                        <div class="form-group"> 
                            <label for="program">Program</label>
                            <textarea id="program" name="postProgram" class="form-control" style="height: 50px" placeholder="Enter your program"></textarea>

                            <!--</form>-->

                        </div>
                        <div class="modal-footer">
                        </div>
                        <button type="submit" class="btn btn-primary">Post</button>
                </div>
                </form>

            </div>
        </div>
    </div>

    <!--end post-->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>  
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>-->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <!--new post js-->

    <!--        <script>
                $(document).ready(function () {
                    $("#add-post-form").on("submit", function (event) {
                        event.preventDefault(); // Prevent the default form submission
                        console.log("Submitted");
                        let form = new FormData(this); // Create a FormData object from the form
    
                        $.ajax({
                            url: "AddPostServlet", // URL to which the request is sent
                            type: "POST", // HTTP method
                            data: form, // Form data
                            contentType: false, // Prevent jQuery from setting contentType
                            processData: false, // Prevent jQuery from processing the data
                            success: function (data, textStatus, jqXHR) {
                                // Handle successful response
                                console.log("Success:", data);
                                if (data.trim() === 'done')
                                {
                                    Swal.fire({
                                        title: "Good job!",
                                        text: "You clicked the button!",
                                        icon: "success"
                                    });
                                } else {
                                    Swal.fire({
                                        title: "Something went wrong!",
                                        text: "You clicked the button!",
                                        icon: "success"
                                    });
                                }
                            },
                            error: function (jqXHR, textStatus, errorThrown) {
                                // Handle errors
                                console.error("Error:", textStatus, errorThrown);
                            }
                        });
                    });
                });
            </script>
    -->


    <script>
        $(document).ready(function () {
            $("#add-post-form").on("submit", function (event) {
                event.preventDefault(); // Prevent the default form submission
                console.log("Submitted");
                let form = new FormData(this); // Create a FormData object from the form

                $.ajax({
                    url: "AddPostServlet", // URL to which the request is sent
                    type: "POST", // HTTP method
                    data: form, // Form data
                    contentType: false, // Prevent jQuery from setting contentType
                    processData: false, // Prevent jQuery from processing the data
                    success: function (data, textStatus, jqXHR) {
                        // Handle successful response
                        console.log("Success:", data);
                        if (data.trim() === 'done') {
                            Swal.fire({
                                title: "Good job!",
                                text: "You clicked the button!",
                                icon: "success"
                            });
                        } else {
                            Swal.fire({
                                title: "Something went wrong!",
                                text: "You clicked the button!",
                                icon: "error" // Changed to "error" for clarity
                            });
                        }
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        // Handle errors
                        console.error("Error:", textStatus, errorThrown);
                    }
                });
            });
        });
    </script>
    <script>
        function getPosts(catId) {
            $.ajax({
                url: "LoadPost.jsp",
                data: {cid: catId},
                success: function (data, textStatus, jqXHR) {
                    console.log(data);
                    $("#loader").hide(); // Assuming you have a loader element to hide
                    $('#post-container').html(data); // Update the post-container with new content
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.error("Error fetching data: ", textStatus, errorThrown);
                }
            });
        }

        $(document).ready(function () {
            getPosts(0); // Fetch posts for category ID 0 when the document is ready
        });
    </script>


</body>
</html>
