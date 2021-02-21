package com.apdo3939.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.apdo3939.dslearn.entities.Lesson;

public interface LessonRepository extends JpaRepository<Lesson, Long> {
	
}

