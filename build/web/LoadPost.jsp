<%@page import="java.util.List"%>
<%@page import="com.blog.entities.Post"%>
<%@page import="com.blog.dao.PostDao"%>
<%@page import="com.blog.helper.ConnectionProvider"%>
<div class="row">
<%
    
PostDao d = new PostDao(ConnectionProvider.getConnection());
int cid = Integer.parseInt(request.getParameter("cid"));
List<Post> posts = null;
if(cid==0)
{
 posts = d.getAllPost();
}else{
 posts = d.getAllPostByCatId(cid);
}
for(Post p:posts)
{

%>

<div class="col-md-6 mt-2">
    
    <div class="card ">
        <div class="card-body">
            <B><%= p.getpTitle() %></B>
            <p><%= p.getpContent() %></p>
            <pre><%= p.getpCode() %></pre>
        
    </div>
            <div class="card-footer text-center">
                <a href="showBlog.jsp?post_id=<%= p.getUserId() %>" class="btn primary-background text-white btn-sm">Read More</a> 
                <a href="#" class="btn primary-background text-white btn-sm"><i class="fa fa-thumbs-o-up"></i><span>12</span></a> 
                <a href="#" class="btn primary-background text-white btn-sm"><i class="fa fa-commenting-o"></i><span>10</span></a> 
            </div>
</div>
<%
    }
%>
