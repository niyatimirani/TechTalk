
package com.blog.dao;

import com.blog.entities.User;
import java.sql.*;
public class UserDao {
    
    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }
    
    //method to insert to databse
    
    public boolean saveUser(User user)
    {
        boolean f=false;
        
        try{
          
            String query="insert into user(email,password , address , phone , city) values(? , ? , ? , ? ,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1 , user.getEmail());
            pstmt.setString(2 , user.getPassword());
            pstmt.setString(3 , user.getAddress());
            pstmt.setLong(4 , user.getPhone());
            pstmt.setString(5 , user.getCity());
            
            pstmt.executeUpdate();
            f=true;
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
            
    public User getuserByEmailAndPassword(String email , String password){
        User user=null;
        try{
          
            String query = "Select * from user where email =? and password=?";
            PreparedStatement pstmt = con.prepareStatement(query);
             pstmt.setString(1 , email);
             pstmt.setString(2 , password);
             
             ResultSet set = pstmt.executeQuery();
             if(set.next())
             {
                 user = new User();
                 String emails = set.getString("email");
                 user.setEmail(emails);
             }
             
             
            
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return user;
    }
}
