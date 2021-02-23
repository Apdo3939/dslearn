package com.apdo3939.dslearn.resources;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.apdo3939.dslearn.dto.NotificationDTO;
import com.apdo3939.dslearn.services.NotificationService;



@RestController
@RequestMapping(value = "/notifications")
public class NotificationResource {
	
	@Autowired
	private NotificationService service;
	
	@GetMapping
	public ResponseEntity<Page<NotificationDTO>> findAllPaged(
			@RequestParam(value = "unreadonly", defaultValue = "false") Boolean unreadOnly,
			@RequestParam(value = "page", defaultValue = "0") Integer page,
			@RequestParam(value = "size", defaultValue = "8") Integer size
			){
		PageRequest pageRequest = PageRequest.of(page, size);
		
		Page<NotificationDTO> list = service.notificationsForCurrentUser(pageRequest, unreadOnly);
		return ResponseEntity.ok().body(list);
		
	}

}
