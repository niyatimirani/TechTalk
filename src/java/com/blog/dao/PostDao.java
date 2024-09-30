///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
// */
//package com.blog.dao;
//
//import com.blog.entities.Category;
//import java.sql.*;
//import java.util.ArrayList;
//public class PostDao {
//    
//    Connection con;
//
//    public PostDao(Connection con) {
//        this.con = con;
//    }
//    
//    public ArrayList<Category> getCategories() throws SQLException{
//        ArrayList<Category> list = null;
//        String q = "select * from categories";
//        Statement stmt = con.createStatement();
//        ResultSet set = stmt.executeQuery(q);
//        while(set.next())
//        {
//            int cid=set.getInt("cid");
//            String name = set.getString("name");
//            String des = set.getString("description");
//            Category c = new Category(cid , name , des);
//            list.add(c);
//            
//        }
//        
//        return list;
//    }
//}




package com.blog.dao;

import com.blog.entities.Category;
import com.blog.entities.Post;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PostDao {
    
    private Connection con;

    public PostDao(Connection con) {
        this.con = con;
    }
    
    public ArrayList<Category> getCategories() throws SQLException {
        ArrayList<Category> list = new ArrayList<>(); // Initialize the ArrayList
        String query = "SELECT * FROM categories";
        
        // Use try-with-resources to ensure Statement and ResultSet are closed
        try (Statement stmt = con.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {
             
            while (rs.next()) {
                int cid = rs.getInt("cid");
                String name = rs.getString("name");
                String description = rs.getString("description");
                Category c = new Category(cid, name, description);
                list.add(c);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Log the exception
            throw e; // Re-throw the exception to be handled by the caller
        }
        
        return list;
    }
     
public boolean savePost(Post p) {
    boolean isSuccess = false;
   String q = "INSERT INTO post (pTitle, pContent, pCode, pDate, catId, userId) VALUES (?, ?, ?, ?, ?, ?)";

try (PreparedStatement pt = con.prepareStatement(q)) {
    // Set the parameters for the query
    pt.setString(1, p.getpTitle());         // pTitle
    pt.setString(2, p.getpContent());       // pContent
    pt.setString(3, p.getpCode());          // pCode
    pt.setTimestamp(4, p.getpDate());       // pDate (assuming pDate is a Timestamp)
    pt.setInt(5, p.getCatId());             // catId
    pt.setInt(6, p.getUserId());            // userId

    // Execute the update and check if it was successful
    int rowsAffected = pt.executeUpdate();
    if (rowsAffected > 0) {
        isSuccess = true;
    } else {
        isSuccess = false;
    }
} catch (SQLException e) {
    e.printStackTrace(); // Handle and log the exception
}
    return isSuccess;
}

public List<Post> getAllPost()
{
    List<Post> lists = new ArrayList<>();
    try{
        PreparedStatement p = con.prepareStatement("select * from post");
        ResultSet set = p.executeQuery();
        while(set.next())
        {
            int pid=set.getInt("pid");
            String pTitle=set.getString("pTitle");
            String pContent=set.getString("pContent");
            String pCode=set.getString("pCode");
            Timestamp pDate = set.getTimestamp("pDate");
            int catId = set.getInt("catId");
            int userId = set.getInt("userId");
            Post pt =new Post (pid, pTitle, pContent, pCode, pDate,  catId, userId);
            lists.add(pt);

        }
    }
    catch(SQLException e)
    {
        System.out.println(e);
    }
    return lists;
}
public List<Post> getAllPostByCatId(int catId)
{
   List<Post> lists = new ArrayList<>();
    try{
        PreparedStatement p = con.prepareStatement("select * from post where catId=?");
        p.setInt(1 , catId);
        ResultSet set = p.executeQuery();
        while(set.next())
        {
            int pid=set.getInt("pid");
            String pTitle=set.getString("pTitle");
            String pContent=set.getString("pContent");
            String pCode=set.getString("pCode");
            Timestamp pDate = set.getTimestamp("pDate");
//            int catId = set.getInt("catId");
            int userId = set.getInt("userId");
            Post pt =new Post (pid, pTitle, pContent, pCode, pDate,  catId, userId);
            lists.add(pt);

        }
    }
    catch(SQLException e)
    {
        System.out.println(e);
    }
    return lists;
}

public Post getPostNyPostId(int postId)
{
    Post post = null;
    String q = "select * from post where userId=?";
    try{
        PreparedStatement p = this.con.prepareStatement(q);
        p.setInt(1 , postId);
        ResultSet set = p.executeQuery();
        if(set.next())
        {
            int pid=set.getInt("pid");
            String pTitle=set.getString("pTitle");
            String pContent=set.getString("pContent");
            String pCode=set.getString("pCode");
            Timestamp pDate = set.getTimestamp("pDate");
            int catId = set.getInt("catId");
            int userId = set.getInt("userId");
            post =new Post (pid, pTitle, pContent, pCode, pDate,  catId, userId);
        }
    }catch(SQLException e)
    {
        e.printStackTrace();
    }
    
    return post;
}
}