package com.apdo3939.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.apdo3939.dslearn.entities.Notification;

public interface NotificationRepository extends JpaRepository<Notification, Long> {

}
