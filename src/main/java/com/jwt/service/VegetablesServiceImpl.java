package com.jwt.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jwt.dao.VegetablesDao;
import com.jwt.model.Vegetables;


/**
 * 
 * @author Mugaesh Varma A IFET College Of Engineering and Technology Tamilnadu.
 * 
 */


@Service
@Transactional
public class VegetablesServiceImpl implements VegetablesService{
	
	@Autowired
	VegetablesDao vegetablesDao;

	@Override
	public List<Vegetables> getAllVegetables() {
		// TODO Auto-generated method stub
		return vegetablesDao.getAllVegetables();
	} 

}
