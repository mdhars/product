package com.company.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.service.ManageServices;
import com.company.service.beans.Customer;
import com.company.service.beans.Item;

@Controller
@RequestMapping("manage")
public class ManageController {

	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private ManageServices manageService;
	

	@RequestMapping(value="newcust",method=RequestMethod.GET)
	public String newCustomer(){
		logger.debug("hello {}","world");
		return "newcust";
	}
	
	@RequestMapping(value="newcust",method=RequestMethod.POST)
	public String saveCustomer(Customer customer,ModelMap map){
		map.addAttribute("successMsg","Customer Record created/updated:"+customer.getCompanyName());
		map.addAttribute("errorMsg","Something wrong happened during create/update:"+customer.getCompanyName());
		return "newcust";
	}
	@RequestMapping(value="newitem")
	public String newItem(){
		return "newitem";
	}
	
	@RequestMapping(value="saveitem",method=RequestMethod.POST)
	public String saveItem(String companyId,Item item){
		return "newitem";
	}
	
	
	@RequestMapping(value="findCustomer",method=RequestMethod.GET)
	public @ResponseBody List<Customer> getCustomers(@RequestParam String query){
		return manageService.findCustomer(query) ;
	}
	
	@RequestMapping("getInfo")
	public @ResponseBody Customer getCustomerInfo(@RequestParam String custid){
		return manageService.getCustomerInfo(custid);
	}
	
	@RequestMapping("getItems")
	public @ResponseBody List<Item> getItems(@RequestParam String custid){
		return manageService.getItems(custid);
	}
	
	@RequestMapping("saveItem")
	public @ResponseBody String saveItems(@RequestParam String custid){
		return "";
	}
}
