package com.daddy.entity;

import java.util.Date;

public class Project {
    int id;
    String title;
    String theme;
    String author;
    String introduction;
    int heat;
    String state;
    String city;
    Date time;
    String img;

    public Project() {
    }

    public Project(String title, String theme, String author, String introduction, int heat, String state, String city, Date time, String img) {
        this.title = title;
        this.theme = theme;
        this.author = author;
        this.introduction = introduction;
        this.heat = heat;
        this.state = state;
        this.city = city;
        this.time = time;
        this.img = img;
    }

    public Project(int id, String title, String theme, String author, String introduction, int heat, String state, String city, Date time, String img) {
        this.id = id;
        this.title = title;
        this.theme = theme;
        this.author = author;
        this.introduction = introduction;
        this.heat = heat;
        this.state = state;
        this.city = city;
        this.time = time;
        this.img = img;
    }

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public int getHeat() {
        return heat;
    }

    public void setHeat(int heat) {
        this.heat = heat;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    @Override
    public String toString() {
        return "Project{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", author='" + author + '\'' +
                ", introduction='" + introduction + '\'' +
                ", heat='" + heat + '\'' +
                ", state='" + state + '\'' +
                ", city='" + city + '\'' +
                ", time='" + time + '\'' +
                ", img='" + img + '\'' +
                '}';
    }
}

