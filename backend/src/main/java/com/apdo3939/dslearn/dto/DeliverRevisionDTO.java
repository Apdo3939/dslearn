package com.apdo3939.dslearn.dto;

import com.apdo3939.dslearn.entities.enums.DeliverStatus;

public class DeliverRevisionDTO {

	private DeliverStatus status;
	private String feedback;
	private Integer correctCount;

	public DeliverRevisionDTO() {

	}

	public DeliverRevisionDTO(DeliverStatus status, String feedback, Integer correctCount) {
		super();
		this.status = status;
		this.feedback = feedback;
		this.correctCount = correctCount;
	}

	public DeliverStatus getStatus() {
		return status;
	}

	public void setStatus(DeliverStatus status) {
		this.status = status;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public Integer getCorrectCount() {
		return correctCount;
	}

	public void setCorrectCount(Integer correctCount) {
		this.correctCount = correctCount;
	}

}
