///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
// */
//package com.blog.entities;
//
//import java.security.Timestamp;
//
///**
// *
// * @author Admin
// */
//public class Post {
//
//  
//    private int pid;
//    private String pTitle;
//    private String pContent;
//    private String pCode;
//    private Timestamp pDate;
//    private int catId;
//  
//    private int userId;
//
//    public int getPostUser() {
//        return postUser;
//    }
//
//    public void setPostUser(int postUser) {
//        this.postUser = postUser;
//    }
//    private int postUser;
//    
//      public Post(int pid, String pTitle, String pContent, String pCode, Timestamp pDate, int catId, int postUser) {
//        this.pid = pid;
//        this.pTitle = pTitle;
//        this.pContent = pContent;
//        this.pCode = pCode;
//        this.pDate = pDate;
//        this.catId = catId;
//      this.postUser = postUser;
//    }
//
//    public Post(String pTitle, String pContent, String pProgram, Object object, int cid, int uid) {
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
//    }
//
//    public int getUserId() {
//        return userId;
//    }
//
//    public void setUserId(int userId) {
//        this.userId = userId;
//    }
//   
//
//    public Post() {
//    }
//
//    public Post(int pid, String pTitle, String pContent, String pCode, Timestamp pDate, int catId) {
//        this.pid = pid;
//        this.pTitle = pTitle;
//        this.pContent = pContent;
//        this.pCode = pCode;
//        this.pDate = pDate;
//        this.catId = catId;
//    }
//
//    public Post(String pTitle, String pContent, String pCode, Timestamp pDate, int catId) {
//        this.pTitle = pTitle;
//        this.pContent = pContent;
//        this.pCode = pCode;
//        this.pDate = pDate;
//        this.catId = catId;
//    }
//    
//    
//
//    public int getPid() {
//        return pid;
//    }
//
//    public void setPid(int pid) {
//        this.pid = pid;
//    }
//
//    public String getpTitle() {
//        return pTitle;
//    }
//
//    public void setpTitle(String pTitle) {
//        this.pTitle = pTitle;
//    }
//
//    public String getpContent() {
//        return pContent;
//    }
//
//    public void setpContent(String pContent) {
//        this.pContent = pContent;
//    }
//
//    public String getpCode() {
//        return pCode;
//    }
//
//    public void setpCode(String pCode) {
//        this.pCode = pCode;
//    }
//
//    public Timestamp getpDate() {
//        return pDate;
//    }
//
//    public void setpDate(Timestamp pDate) {
//        this.pDate = pDate;
//    }
//
//    public int getCatId() {
//        return catId;
//    }
//
//    public void setCatId(int catId) {
//        this.catId = catId;
//    }
//
//   
//    
//    
//    
//}




package com.blog.entities;

import java.sql.Timestamp; // Use java.sql.Timestamp for database-related timestamps

/**
 * Represents a post entity with various attributes.
 */
public class Post {

    private int pid;             // Post ID
    private String pTitle;       // Post Title
    private String pContent;     // Post Content
    private String pCode;        // Post Code (if applicable)
    private Timestamp pDate;     // Post Date
    private int catId;           // Category ID
    private int userId;          // User ID

    // Default constructor
    public Post() {}

    // Constructor with all fields
    public Post(int pid, String pTitle, String pContent, String pCode, Timestamp pDate, int catId, int userId) {
        this.pid = pid;
        this.pTitle = pTitle;
        this.pContent = pContent;
        this.pCode = pCode;
        this.pDate = pDate;
        this.catId = catId;
        this.userId = userId;
    }

    // Constructor without post ID (typically used for insert operations)
    public Post(String pTitle, String pContent, String pCode, Timestamp pDate, int catId, int userId) {
        this.pTitle = pTitle;
        this.pContent = pContent;
        this.pCode = pCode;
        this.pDate = pDate;
        this.catId = catId;
        this.userId = userId;
    }

    // Getters and setters
    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getpTitle() {
        return pTitle;
    }

    public void setpTitle(String pTitle) {
        this.pTitle = pTitle;
    }

    public String getpContent() {
        return pContent;
    }

    public void setpContent(String pContent) {
        this.pContent = pContent;
    }

    public String getpCode() {
        return pCode;
    }

    public void setpCode(String pCode) {
        this.pCode = pCode;
    }

    public Timestamp getpDate() {
        return pDate;
    }

    public void setpDate(Timestamp pDate) {
        this.pDate = pDate;
    }

    public int getCatId() {
        return catId;
    }

    public void setCatId(int catId) {
        this.catId = catId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}

