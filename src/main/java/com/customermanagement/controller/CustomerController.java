package com.customermanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.customermanagement.models.Customers;
import com.customermanagement.services.CustomerServices;

@Controller
@RequestMapping("/")
public class CustomerController {
	
	@Autowired
	private CustomerServices customerServices;
//	
//	@RequestMapping("/")
//	public String showHomePage() {
//		return "HomePage" ;
//	}
//	
	@RequestMapping("/")
	public String showRecords(Model theModel) {
	    List<Customers> listOfCustomers = customerServices.showAll();
		theModel.addAttribute("Customers",listOfCustomers);
		return "HomePage" ;
	}
	
	@RequestMapping("/showForm")
	public String showForm() {
		return "RegistrationForm" ;
	}
	
	@RequestMapping("/addRecord")
	public String addRecord(String id, String firstName, String lastName, String emailId) {
	    Customers customers = new Customers(firstName,lastName,emailId);
	    customerServices.insertRecord(customers);
		return "redirect:/" ;
	}
	
	@RequestMapping("/updateRecord")
	public String updateRecord(@RequestParam("id") String id, Model theModel) {
		Customers customers = customerServices.searchByid(id);
		theModel.addAttribute("Customers", customers);
		return "RegistrationForm" ;
	}
	
	@RequestMapping("/saveRecord")
	public String saveRecord(@RequestParam("id") String id,
			                 @RequestParam("firstName") String firstName,
			                 @RequestParam("lastName") String lastName,
			                 @RequestParam("emailId") String emailId) {
		Customers customers = customerServices.searchByid(id);
        customers.setFirstName(firstName);
        customers.setLastName(lastName);
        customers.setEmailId(emailId);
        customerServices.insertRecord(customers);
		return "HomePage" ;
	}
	
	@RequestMapping("/deleteRecord")
	public String deleteRecord(@RequestParam("id") String id, Model theModel) {
		
		customerServices.deleteRecord(id);
		return "redirect:/" ;
	}
	
	@RequestMapping("/searchForm")
	public String searchForm(Model theModel) {
		List<Customers> listOfCustomers = customerServices.showAll();
		theModel.addAttribute("Customers",listOfCustomers);
		return "SearchForm" ;
	}
	
	@RequestMapping("/searchRecord")
	public String searchRecord(@RequestParam("id") String id,
                               @RequestParam("firstName") String firstName,
                               @RequestParam("lastName") String lastName,
                               @RequestParam("emailId") String emailId
                               ,Model theModel) {
		if(id.trim().isEmpty() && firstName.trim().isEmpty() && lastName.trim().isEmpty() && emailId.trim().isEmpty()) {
			return "HomePage";
		}
		else {
			List<Customers> listOfCustomers = customerServices.searchByall(id, firstName, lastName, emailId);
		    
		theModel.addAttribute("Customers",listOfCustomers);
		
		return "SearchForm" ;
	}
	
}
	@RequestMapping("/showInstructions")
	public String showInstructions() {
		return "HowToUse" ;
	}
	
}
