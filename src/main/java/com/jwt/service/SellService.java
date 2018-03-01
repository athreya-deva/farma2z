package com.jwt.service;

import java.util.List;

import com.jwt.model.Sell;


/**
 * 
 * @author Mugaesh Varma A IFET College Of Engineering and Technology Tamilnadu.
 * 
 */


public interface SellService {

	void saveSellData(Sell sell);

	List<Sell> getAllSellData();

}
