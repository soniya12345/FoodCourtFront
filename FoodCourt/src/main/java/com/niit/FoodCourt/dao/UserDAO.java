package com.niit.FoodCourt.dao;

import java.util.List;

import com.niit.FoodCourt.model.User;



public interface UserDAO {
	
	
	// create/register  - save
	
	public  boolean save(User user);
	
	// update the user details  - update
	public boolean update(User user);
	
	
	public boolean validate(String id, String password);
	
	// get all users   - list
	
	public List<User> list();
	
	
	//get user details based on userID
	
	public User get(String id);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
