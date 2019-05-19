package com.exp.v1.Expressweatherimpl.service;

import java.util.Set;

import org.springframework.stereotype.Component;

import com.exp.v1.Expressweatherapi.entity.Users;

@Component
public interface UsersUtil {

	public Set<Users> getUsers();
	public Users save(Users user);
}
