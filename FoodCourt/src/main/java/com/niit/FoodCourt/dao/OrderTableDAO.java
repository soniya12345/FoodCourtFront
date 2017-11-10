package com.niit.FoodCourt.dao;

import java.util.List;

import com.niit.FoodCourt.model.OrderTable;

public interface OrderTableDAO {
	
	public boolean save(OrderTable orderTable);
	public List<OrderTable> list(String userId);

}
