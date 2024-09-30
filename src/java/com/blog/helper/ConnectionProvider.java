
package com.blog.helper;

import java.sql.*;
public class ConnectionProvider {
    private static Connection con;
    public static Connection getConnection()
    {
        try{
            //driver class loader
            if(con==null)
            {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog" , "root" , "root");
            
            }
            
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return con;
    }
    
}
