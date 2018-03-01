package com.jwt.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jwt.model.Vegetables;


/**
 * 
 * @author Mugaesh Varma A IFET College Of Engineering and Technology Tamilnadu.
 * 
 */


@Repository
public class VegetablesDaoImpl implements VegetablesDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Vegetables> getAllVegetables() {
		return sessionFactory.getCurrentSession().createQuery("from Vegetables")
				.list();
	}


}
