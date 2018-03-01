package com.jwt.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jwt.dao.NutsDao;
import com.jwt.model.Nuts;


/**
 * 
 * @author Mugaesh Varma A IFET College Of Engineering and Technology Tamilnadu.
 * 
 */


@Service
@Transactional
public class NutsServiceImpl implements NutsService {

	@Autowired
	NutsDao nutsDao;
	
	@Override
	public List<Nuts> getAllNuts() {
		// TODO Auto-generated method stub
		return nutsDao.getAllNuts();
	}

}
