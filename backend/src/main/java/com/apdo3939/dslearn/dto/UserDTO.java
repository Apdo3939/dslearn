package com.apdo3939.dslearn.dto;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

import com.apdo3939.dslearn.entities.User;

public class UserDTO implements Serializable {

	// Attributes
	private static final long serialVersionUID = 1L;
	private Long id;

	@NotBlank(message = "Campo obrigatório!")
	private String name;

	@Email(message = "Por favor inderir um e-mail válido")
	private String email;

	private Set<RoleDTO> roles = new HashSet<>();

	// Constructors
	public UserDTO() {

	}

	public UserDTO(Long id, String name, String email) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
	}

	public UserDTO(User entity) {
		super();
		this.id = entity.getId();
		this.name = entity.getName();
		this.email = entity.getEmail();
		entity.getRoles().forEach(role -> this.roles.add(new RoleDTO(role)));
	}

	// Getters and Setters
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Set<RoleDTO> getRoles() {
		return roles;
	}

}
