/**
 * 
 */
package com.exp.v1.Expressweatherimpl.dao;

import java.util.Set;

import org.springframework.stereotype.Component;

import com.exp.v1.Expressweatherapi.entity.Users;

/**
 * @author abhilashpanigrahi
 *
 */

@Component
public interface UsersDAO {
	
	public Set<Users> getUsers();
	public Users saveUser(Users user);

}
