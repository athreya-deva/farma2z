package com.jwt.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jwt.dao.SellDao;
import com.jwt.model.Sell;

/**
 * 
 * @author Mugaesh Varma A IFET College Of Engineering and Technology Tamilnadu.
 * 
 */

@Service
@Transactional

public class SellServiceImpl implements SellService{
	
	@Autowired
	SellDao sellDao;

	

	@Override
	public void saveSellData(com.jwt.model.Sell sell) {
		sellDao.saveSellData(sell);
	}



	@Override
	public List<Sell> getAllSellData() {
		// TODO Auto-generated method stub
		return sellDao.getAllSellData();
	}

}
