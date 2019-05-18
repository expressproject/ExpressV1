package com.exp.v1.Expressweatherimpl.serviceimpl;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;

import com.exp.v1.Expressweatherapi.dtos.Users;
import com.exp.v1.Expressweatherimpl.dao.UsersDAO;
import com.exp.v1.Expressweatherimpl.service.UsersUtil;

public class UsersUtilImpl implements UsersUtil{

	@Autowired
	private UsersDAO usersDAO; 
	
	@Override
	public Set<Users> getUsers() {
		
		Set<Users> users =  usersDAO.getUsers();
		
		//logic : don't display the inactivated users
		
		return users;
	}

}
