package com.jwt.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jwt.model.Nuts;


/**
 * 
 * @author Mugaesh Varma A IFET College Of Engineering and Technology Tamilnadu.
 * 
 */


@Repository
public class NutsDaoImpl implements NutsDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Nuts> getAllNuts() {
		return sessionFactory.getCurrentSession().createQuery("from Nuts")
				.list();
	}

}
