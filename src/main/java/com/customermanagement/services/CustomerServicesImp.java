package com.customermanagement.services;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.customermanagement.models.Customers;

@Repository
public class CustomerServicesImp implements CustomerServices {
	
	private Session session;
	private SessionFactory sessionFactory;

	@Autowired
	public CustomerServicesImp (SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
		try {
			session=sessionFactory.getCurrentSession();
		}
		catch(Exception e) {
			session=sessionFactory.openSession();
		}
	}
	
	@Transactional
	public void insertRecord(Customers customers) {
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(customers);
		tx.commit();
	}

	@Transactional
	public void deleteRecord(String id) {
		Transaction tx = session.beginTransaction();
		Customers customers = session.get(Customers.class, id);
		session.delete(customers);
		tx.commit();
	}

	@Transactional
	public Customers searchByid(String id) {
		Transaction tx = session.beginTransaction();
		Customers customers = new Customers();
		customers = session.get(Customers.class, id);
		tx.commit();
		return customers;
	}

	@Transactional
	public List<Customers> searchByall(String id, String firstName, String lastName, String emailId) {
		Transaction tx = session.beginTransaction();
		String query = "";
		if(id.length()!=0 && firstName.length()!=0 && lastName.length()!=0 && emailId.length()!=0) {
		query = "from Customers where id like '%"+id+"%'"
				+ "or firstName like '%"+firstName+"%'"
				+ "or lastName like '%"+lastName+"%'";
		}
		else if(id.length()!=0) {
		query = "from Customers where id like '%"+id+"%'";	
		}
		else if (firstName.length()!=0) {
	    query = "from Customers where firstName like '%"+firstName+"%'";
		} 
		else if (lastName.length()!=0) {
		query = "from Customers where lastName like '%"+lastName+"%'";
		} 
		else if (emailId.length()!=0) {
		query = "from Customers where emaidId like '%"+emailId+"%'";
		} 
		else {
		System.out.println("Can not search for the provided inputs or the records does not exist");
		}
		
		List<Customers> listOfCustomers = session.createQuery(query).list();
		
	    tx.commit();
	    
		return listOfCustomers;
	}

	@Transactional
	public List<Customers> showAll() {
		Transaction tx = session.beginTransaction();
		String query="from Customers";
		List<Customers> listOfCustomers = session.createQuery(query).list();
		tx.commit();
		return listOfCustomers;
	}

	@Transactional
	public void updateRecord(String id) {
		Transaction tx = session.beginTransaction();
		Customers customers = session.get(Customers.class, id);
		session.saveOrUpdate(customers);
		tx.commit();
	}

}
