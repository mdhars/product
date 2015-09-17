package com.company.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("order")
public class OrdersController {

	@RequestMapping("open")
	public String openOrders(){
		return "openorder";
	}
	
	@RequestMapping("new")
	public String newOrders(){
		return "neworder";
	}
	
	@RequestMapping("search")
	public String searchOrders(){
		return "searchorder";
	}
}
