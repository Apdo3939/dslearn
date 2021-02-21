package com.apdo3939.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.apdo3939.dslearn.entities.User;

public interface UserRepository extends JpaRepository<User, Long> {

}
