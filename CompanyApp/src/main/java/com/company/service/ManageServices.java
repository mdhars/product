package com.company.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Service;

import com.company.service.beans.Customer;
import com.company.service.beans.Item;

@Service
public class ManageServices {

	public List<Customer> getAllCustomers(){
		List<Customer> customers = new ArrayList<Customer>();
		Customer c = new Customer();
			c.setCompanyName("Dural");
			c.setAddress("Perungudi");
			c.setPhone1("999999999");
			c.setEmail("someone@dural.com");
			customers.add(c);
			
			c = new Customer();
			c.setCompanyName("Vaas");
			c.setAddress("Thoraipakkam");
			c.setPhone1("88888888");
			c.setEmail("somebody@vaas.com");
			customers.add(c);
			
			return customers;
	}
	
	public List<Customer> findCustomer(String startsWith){
		List<Customer> allCustomers =getAllCustomers();
		
		Iterator<Customer> i = allCustomers.iterator();
		
		while(i.hasNext()){
			Customer cust = i.next();
			if(!cust.getCompanyName().contains(startsWith))
				i.remove();
		}
		
		return allCustomers;
	}
	public Customer getCustomerInfo(String custName){
		Customer c = new Customer();
		c.setCompanyName("Dural");
		c.setAddress("Perungudi");
		c.setPhone1("999999999");
		c.setPhone2("88888888");
		c.setContactName("Mr. Dural");
		c.setEmail("someone@dural.com");
		return c;
	}
	
	public List<Item> getItems(String custId){
		List<Item> items = new ArrayList<Item>();
		Item item = new Item();
		item.setDimension("11x12x13");
		item.setGsm("120");
		item.setPly("5");
		item.setPrice("16");
		item.setItemId("111");
		items.add(item);
		
		Item item2 = new Item();
		item2.setDimension("21x22x23");
		item2.setGsm("100");
		item2.setPly("7");
		item2.setPrice("45");
		item2.setItemId("222");
		items.add(item2);
		
		return items;
	}
	
}
