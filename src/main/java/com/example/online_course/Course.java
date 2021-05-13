package com.example.online_course;

import java.util.List;

public class Course {
    private Integer id;
    private String title;
    private String description;
    private String short_info;
    private String duration;
    private String level;
    private String img_src;
    private List<Course> courseList;

    public Course(String title, String description, String short_info,String img_src, String duration, String level) {
        this.title = title;
        this.description = description;
        this.short_info = short_info;
        this.img_src = img_src;
        this.duration = duration;
        this.level = level;
    }
    public Course(Integer id, String title, String description, String short_info,String img_src, String duration, String level) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.short_info = short_info;
        this.img_src = img_src;
        this.duration = duration;
        this.level = level;
    }
    public Course() {
    }

    public Course(Integer id) {
        this.id = id;
    }

    public String getShort_info() {
        return short_info;
    }

    public void setShort_info(String short_info) {
        this.short_info = short_info;
    }

    public List<Course> getCourseList() {
        return courseList;
    }

    public void setCourseList(List<Course> courseList) {
        this.courseList = courseList;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getImg_src() {
        return img_src;
    }

    public void setImg_src(String img_src) {
        this.img_src = img_src;
    }
}
