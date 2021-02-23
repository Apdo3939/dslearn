package com.apdo3939.dslearn.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.apdo3939.dslearn.dto.NotificationDTO;
import com.apdo3939.dslearn.entities.Notification;
import com.apdo3939.dslearn.entities.User;
import com.apdo3939.dslearn.repositories.NotificationRepository;

@Service
public class NotificationService {

	@Autowired
	private NotificationRepository notificationRepository;

	@Autowired
	private AuthService authService;

	public Page<NotificationDTO> notificationsForCurrentUser(Pageable pageable, boolean unreadOnly) {
		User user = authService.authenticated();
		Page<Notification> page = notificationRepository.find(user, unreadOnly, pageable);
		return page.map(x -> new NotificationDTO(x));
	}

	@Transactional(readOnly = true)
	public Page<NotificationDTO> findAllPaged(PageRequest pageRequest) {
		Page<Notification> list = notificationRepository.findAll(pageRequest);
		return list.map(x -> new NotificationDTO(x));
	}

}
