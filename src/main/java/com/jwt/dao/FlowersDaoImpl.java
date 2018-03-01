package com.jwt.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jwt.model.Flowers;


/**
 * 
 * @author Mugaesh Varma A IFET College Of Engineering and Technology Tamilnadu.
 * 
 */


@Repository
public class FlowersDaoImpl implements FlowersDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Flowers> getAllFlowers() {
		
		return sessionFactory.getCurrentSession().createQuery("from Flowers")
				.list();
	}

}
