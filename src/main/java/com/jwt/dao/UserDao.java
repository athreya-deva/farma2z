package com.jwt.dao;

import com.jwt.model.User;


/**
 * 
 * @author Mugaesh Varma A IFET College Of Engineering and Technology Tamilnadu.
 * 
 */


public interface UserDao {

	void saveUserDetails(User user);

	User getVerifiedUser(String userName, String password);

}
