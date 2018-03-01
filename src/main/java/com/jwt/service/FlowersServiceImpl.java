package com.jwt.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jwt.dao.FlowersDao;
import com.jwt.model.Flowers;

/**
 * 
 * @author Mugaesh Varma A IFET College Of Engineering and Technology Tamilnadu.
 * 
 */

@Service
@Transactional
public class FlowersServiceImpl  implements FlowersService{
	
	@Autowired
	FlowersDao flowersDao;

	@Override
	public List<Flowers> getAllFlowers() {
		// TODO Auto-generated method stub
		return flowersDao.getAllFlowers();
	}

}
