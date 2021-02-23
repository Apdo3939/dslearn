package com.apdo3939.dslearn.dto;

import java.io.Serializable;
import java.time.Instant;

import com.apdo3939.dslearn.entities.Notification;

public class NotificationDTO implements Serializable {

	private static final long serialVersionUID = 1L;

	private Long id;
	private Long userId;
	private String text;
	private Instant moment;
	private Boolean read;
	private String route;

	public NotificationDTO() {

	}

	public NotificationDTO(Long id, Long userId, String text, Instant moment, Boolean read, String route) {
		super();
		this.id = id;
		this.userId = userId;
		this.text = text;
		this.moment = moment;
		this.read = read;
		this.route = route;
	}

	public NotificationDTO(Notification entity) {
		super();
		id = entity.getId();
		userId = entity.getUser().getId();
		text = entity.getText();
		moment = entity.getMoment();
		read = entity.getRead();
		route = entity.getRoute();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public Instant getMoment() {
		return moment;
	}

	public void setMoment(Instant moment) {
		this.moment = moment;
	}

	public Boolean getRead() {
		return read;
	}

	public void setRead(Boolean read) {
		this.read = read;
	}

	public String getRoute() {
		return route;
	}

	public void setRoute(String route) {
		this.route = route;
	}

}
