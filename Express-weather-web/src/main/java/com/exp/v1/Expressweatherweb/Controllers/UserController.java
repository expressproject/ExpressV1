package com.exp.v1.Expressweatherweb.Controllers;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.exp.v1.Expressweatherapi.dtos.Users;
import com.exp.v1.Expressweatherimpl.service.UsersUtil;

@Controller("users")
public class UserController {
	
	@Autowired
	private UsersUtil usersUtil;
	
	@GetMapping("getUsers")
	public Set<Users> getAllUsers()
	{
		//calling service method
		
		Set<Users> users = usersUtil.getUsers();
		
		return users;
	}

}
