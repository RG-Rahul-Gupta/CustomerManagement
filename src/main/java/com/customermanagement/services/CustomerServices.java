package com.customermanagement.services;

import java.util.List;

import com.customermanagement.models.Customers;


public interface CustomerServices {

	public void insertRecord(Customers customers);

	public void deleteRecord(String id);
	
	public Customers searchByid(String id);
	
	public List<Customers> searchByall(String id, String firstName, String lastName, String emailId); 
	
	public List<Customers> showAll();
	
	public void updateRecord(String id);

}
