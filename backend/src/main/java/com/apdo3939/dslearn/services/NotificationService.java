package com.apdo3939.dslearn.services;

import java.time.Instant;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.apdo3939.dslearn.dto.NotificationDTO;
import com.apdo3939.dslearn.entities.Deliver;
import com.apdo3939.dslearn.entities.Notification;
import com.apdo3939.dslearn.entities.User;
import com.apdo3939.dslearn.observers.DeliverRevisionObserver;
import com.apdo3939.dslearn.repositories.NotificationRepository;

@Service
public class NotificationService implements DeliverRevisionObserver {

	@Autowired
	private NotificationRepository notificationRepository;

	@Autowired
	private AuthService authService;
	
	@Autowired
	private DeliverService deliveryService;
	
	@PostConstruct
	private void initialize() {
		deliveryService.subscribeDeliverRevisionObserver(this);
	}

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

	@Transactional
	public void saveDeliverNotification(Deliver deliver) {
		
		Long sectionId = deliver.getLesson().getSection().getId();
		Long resourceId = deliver.getLesson().getSection().getResource().getId();
		Long offerId = deliver.getLesson().getSection().getResource().getOffer().getId();
		
		String route = "/offers/" + offerId + "/resources/" + resourceId + "/sections/" + sectionId;
		String text = deliver.getFeedback();
		Instant moment = Instant.now();
		User user = deliver.getEnrollment().getStudent();
		Notification notification = new Notification(null, text, moment, false, route ,user);
		
		notificationRepository.save(notification);
	}

	@Override
	public void onSaveRevision(Deliver deliver) {
		saveDeliverNotification(deliver);
	}
}
