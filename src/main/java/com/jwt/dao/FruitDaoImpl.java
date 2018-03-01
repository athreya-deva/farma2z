package com.jwt.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jwt.model.Fruits;
/**
 * 
 * @author Mugaesh Varma A IFET College Of Engineering and Technology Tamilnadu.
 * 
 */


@Repository

public class FruitDaoImpl implements FruitDao {
	
	@Autowired
	private SessionFactory sessionFactory;


	public List<Fruits> getAllFruits() {
		
		return sessionFactory.getCurrentSession().createQuery("from Fruits")
				.list();
	}


}
