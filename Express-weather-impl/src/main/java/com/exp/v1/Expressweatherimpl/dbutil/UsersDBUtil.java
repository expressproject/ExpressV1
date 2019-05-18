package com.exp.v1.Expressweatherimpl.dbutil;

import java.util.Set;

import org.springframework.stereotype.Component;

import com.exp.v1.Expressweatherapi.dtos.Users;
import com.exp.v1.Expressweatherimpl.dao.UsersDAO;

@Component
public class UsersDBUtil implements UsersDAO {

	@Override
	public Set<Users> getUsers() {
		
		//write db logic
		
		
		return null;
	}

}
