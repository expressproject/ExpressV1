package com.exp.v1.Expressweatherweb.Controllers;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.exp.v1.Expressweatherapi.entity.Address;
import com.exp.v1.Expressweatherapi.entity.InteractionChannel;
import com.exp.v1.Expressweatherapi.entity.Users;
import com.exp.v1.Expressweatherimpl.service.UsersUtil;
import com.fasterxml.jackson.databind.ser.std.CalendarSerializer;

@RestController
@RequestMapping("/users")
public class UserController {
	
	@Autowired
	private UsersUtil usersUtil;
	
	@GetMapping("/getUsers")
	public Set<Users> getAllUsers()
	{
		//calling service method
		
		Set<Users> users = usersUtil.getUsers();
		
		return users;
	}
	@GetMapping("/saveUsers")
	public Users saveUsersInfo()
	{
		InteractionChannel interactionChannel = new InteractionChannel();
		interactionChannel.setEmail("archi@archi.com");
		interactionChannel.setPhoneNumber(123456);
		//interactionChannel.setUserInteractionChannelId(2005);
		interactionChannel.setWebsite("www.maggi.com");
		
		//ArrayList<InteractionChannel> iclist = new ArrayList<InteractionChannel>();
		//iclist.add(interactionChannel);
		
		
		Address address = new Address();
		//address.setAddressId(105);
		address.setAddressLine1("8th block,Nayapalli");
		address.setAddressLine2("Jaydev Vihar");
		address.setCity("B");
		address.setState("Odisha");
		address.setCountry("India");
		//ArrayList<Address> add_list = new ArrayList<Address>();
		//add_list.add(address);
		
		
		
		Users user = new Users();
		//user.setId(127);
		user.setFirstName("Maggi");
		user.setLastName("Sahoo");
		user.setUserName("archi");
		user.setPassword("maggi123");
		user.setIsDeleted("n");
		user.setEffectiveDate(Calendar.getInstance().getTime());
		user.setExpiryDate(null);
		//user.setInteractionChannels(iclist);
		//user.setAddress(add_list);
		user.getInteractionChannels().add(interactionChannel);
		user.getAddress().add(address);
		
		
		address.setUsers(user);
		interactionChannel.setUsers(user);
		
		Users savedUser = usersUtil.save(user);
		
		
		return savedUser;
	}

}
