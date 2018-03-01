package com.jwt.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jwt.dao.UserDao;
import com.jwt.model.User;


/**
 * 
 * @author Mugaesh Varma A IFET College Of Engineering and Technology Tamilnadu.
 * 
 */

@Service
@Transactional
public class UserServiceImpl implements UserService  {

	@Autowired
	UserDao userDao;
	
	public void saveUserDetails(User user) {
		
		userDao.saveUserDetails(user);
		
		
	}

	@Override
	@Transactional
	public User getVerifiedUser(String userName, String password) {

		return userDao.getVerifiedUser(userName,password);
	}

}
