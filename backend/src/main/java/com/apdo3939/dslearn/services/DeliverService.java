package com.apdo3939.dslearn.services;

import java.util.LinkedHashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.apdo3939.dslearn.dto.DeliverRevisionDTO;
import com.apdo3939.dslearn.entities.Deliver;
import com.apdo3939.dslearn.observers.DeliverRevisionObserver;
import com.apdo3939.dslearn.repositories.DeliverRepository;

@Service
public class DeliverService {
	
	@Autowired
	private DeliverRepository deliverRepository;
	
	@Autowired
	private Set<DeliverRevisionObserver> deliverRevisionObservers 
	= new LinkedHashSet<>() ;
	
	@Transactional
	public void saveRevision(Long id, DeliverRevisionDTO dto) {
		Deliver deliver = deliverRepository.getOne(id);
		deliver.setStatus(dto.getStatus());
		deliver.setFeedback(dto.getFeedback());
		deliver.setCorrectCount(dto.getCorrectCount());
		deliverRepository.save(deliver);
		
		for(DeliverRevisionObserver observer: deliverRevisionObservers) {
			observer.onSaveRevision(deliver);
		}
	}
	
	public void subscribeDeliverRevisionObserver(DeliverRevisionObserver observer) {
		deliverRevisionObservers.add(observer);
	}

}
