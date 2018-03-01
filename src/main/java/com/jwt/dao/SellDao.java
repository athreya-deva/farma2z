package com.jwt.dao;

import java.util.List;

import com.jwt.model.Sell;


/**
 * 
 * @author Mugaesh Varma A IFET College Of Engineering and Technology Tamilnadu.
 * 
 */


public interface SellDao {

	void saveSellData(Sell sell);

	List<Sell> getAllSellData();

}
