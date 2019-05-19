package com.exp.v1.Expressweatherimpl.dbutil;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;


import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exp.v1.Expressweatherapi.entity.Users;
import com.exp.v1.Expressweatherimpl.dao.UsersDAO;

@Repository
public class UsersDBUtil implements UsersDAO {

	private EntityManager entityManager;
	
	@Autowired
	public UsersDBUtil(EntityManager entityManager) {
		
		this.entityManager = entityManager;
	}
	
	@Override
	public Set<Users> getUsers() {
		
		//write db logic
		Session session = entityManager.unwrap(Session.class);
		Query<Users> resultSet =  session.createQuery("from Users",Users.class);
		List<Users> users = resultSet.getResultList();
		HashSet<Users> allUsers = new HashSet<Users>(users);
		return allUsers;
	}

	@Override
	public Users saveUser(Users user) {
		
		Session session = entityManager.unwrap(Session.class);
		session.saveOrUpdate(user);
		
		return user;
	}

}
