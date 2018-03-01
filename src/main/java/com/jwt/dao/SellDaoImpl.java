package com.jwt.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jwt.model.Sell;

/**
 * 
 * @author Mugaesh Varma A IFET College Of Engineering and Technology Tamilnadu.
 * 
 */


@Repository

public class SellDaoImpl implements SellDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveSellData(Sell sell) {
		sessionFactory.getCurrentSession().saveOrUpdate(sell);
		
	}

	@Override
	public List<Sell> getAllSellData() {
		return sessionFactory.getCurrentSession().createQuery("from Sell")
				.list();
	}

}
