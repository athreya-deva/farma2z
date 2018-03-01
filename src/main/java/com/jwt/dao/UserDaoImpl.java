package com.jwt.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jwt.model.User;


/**
 * 
 * @author Mugaesh Varma A IFET College Of Engineering and Technology Tamilnadu.
 * 
 */


@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void saveUserDetails(User user) {
		sessionFactory.getCurrentSession().saveOrUpdate(user);
		
	}

	@Override
	public User getVerifiedUser(String userName, String password) {
	
		return (User) sessionFactory.getCurrentSession().createQuery("from User where userName='"+userName+"' and password='"+password+"'").uniqueResult();
	}

}
