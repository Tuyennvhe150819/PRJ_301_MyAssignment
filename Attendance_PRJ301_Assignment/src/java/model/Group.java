/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author TGDD
 */
public class Group {
    private int id;
    private String name;
    private Course course;
    private Instructor instructor;

    public Group() {
    }

    public Group(int id, String name, Course course) {
        this.id = id;
        this.name = name;
        this.course = course;
    }

    public Group(int id, String name, Course course, Instructor instructor) {
        this.id = id;
        this.name = name;
        this.course = course;
        this.instructor = instructor;
    } 
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public Instructor getInstructor() {
        return instructor;
    }

    public void setInstructor(Instructor instructor) {
        this.instructor = instructor;
    }
    
    
    
}