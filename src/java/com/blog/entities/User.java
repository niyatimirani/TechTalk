/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.blog.entities;

/**
 *
 * @author Admin
 */
public class User {
    
     private String email;
    private String password;
    private String address;
    private long phone;
    private String city;
    

    public User(String email, String password, String address, String city, String city1) {
        this.email = email;
        this.password = password;
        this.address = address;
        this.phone = phone;
        this.city = city;
    }

    public User() {
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getAddress() {
        return address;
    }

    public long getPhone() {
        return phone;
    }

    public String getCity() {
        return city;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPhone(long phone) {
        this.phone = phone;
    }

    public void setCity(String city) {
        this.city = city;
    }
    
    
  
}
