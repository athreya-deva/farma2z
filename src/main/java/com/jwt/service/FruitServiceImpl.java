package com.jwt.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jwt.dao.FruitDao;
import com.jwt.model.Fruits;


/**
 * 
 * @author Mugaesh Varma A IFET College Of Engineering and Technology Tamilnadu.
 * 
 */


@Service
@Transactional
public class FruitServiceImpl implements FruitsService{

	@Autowired
	FruitDao fruitsDao;
	
	
	@Override
	public List<Fruits> getAllFruits() {
		// TODO Auto-generated method stub
		return fruitsDao.getAllFruits();
	}

}
