package com.apdo3939.dslearn.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.apdo3939.dslearn.entities.User;
import com.apdo3939.dslearn.repositories.UserRepository;
import com.apdo3939.dslearn.services.exceptions.ForbiddenException;
import com.apdo3939.dslearn.services.exceptions.UnauthorizedException;

@Service
public class AuthService {

	@Autowired
	private UserRepository userRepository;

	@Transactional(readOnly = true)
	public User authenticated() {

		try {
			String username = SecurityContextHolder.getContext().getAuthentication().getName();
			return userRepository.findByEmail(username);
		} catch (Exception e) {

			throw new UnauthorizedException(e.getMessage() + " :Unauthorized");
		}

	}

	public void validateSelfOrAdmin(Long userId) {

		User user = authenticated();
		if (!user.getId().equals(userId) && !user.hasRole("ROLE_ADMIN")) {
			throw new ForbiddenException("Access denied");
		}

	}

}
