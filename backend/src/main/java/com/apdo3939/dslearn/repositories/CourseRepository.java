package com.apdo3939.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.apdo3939.dslearn.entities.Course;

public interface CourseRepository extends JpaRepository<Course, Long> {

}
