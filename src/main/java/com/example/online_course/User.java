package com.example.online_course;

public class User {
    private Integer id;
    private String fullname;
    private String username;
    private String email;
    private String phone_number;
    private String password;
    private boolean isAdmin;
    private Integer course_id;

    public Integer getCourse_id() {
        return course_id;
    }

    public void setCourse_id(Integer course_id) {
        this.course_id = course_id;
    }

    public boolean isAdmin() {
        return isAdmin;
    }

    public void setAdmin(boolean admin) {
        isAdmin = admin;
    }

    public User(String fullname, String email, String phone_number, String password) {
        this.fullname = fullname;
        this.email = email;
        this.phone_number = phone_number;
        this.password = password;
    }

    public User(String fullname, String username, String email, String phone_number, String password) {
        this.fullname = fullname;
        this.username = username;
        this.email = email;
        this.phone_number = phone_number;
        this.password = password;
    }

    public User(Integer id, String fullname,String email, String phone_number, String password) {
        this.id = id;
        this.fullname = fullname;
        this.email = email;
        this.phone_number = phone_number;
        this.password = password;
    }

    public User() {
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }
}
