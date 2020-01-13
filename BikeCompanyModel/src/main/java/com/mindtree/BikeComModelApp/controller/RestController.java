package com.mindtree.BikeComModelApp.controller;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mindtree.BikeComModelApp.entity.Customer;
import com.mindtree.BikeComModelApp.entitydto.CustomerDto;
import com.mindtree.BikeComModelApp.entitydto.ModelDto;
import com.mindtree.BikeComModelApp.service.BikeService;

@org.springframework.web.bind.annotation.RestController
@RequestMapping("/rest")

public class RestController {
	@Autowired
	private BikeService bikeService;


double modelprice;
	@GetMapping("/loadmodel/{id}")
	public Set<ModelDto> update1(@PathVariable("id") int id) {
		

		Set<ModelDto> result = bikeService.getAllModelForCompany(id);
		return result;
	}
	@GetMapping("/loadprice/{id}")
	public double update2(@PathVariable("id") int id) {
		

		double result = bikeService.getThePriceOfModel(id);
		System.out.println(result);
		modelprice=result;
		return result;
	}
	
	@GetMapping("/loadcustomer/{id}")
	public Set<CustomerDto> update4(@PathVariable("id") int id) {
		System.out.println(id);

		Set<CustomerDto> result = bikeService.getTheCustomerofModel(id);
		
		return result;
	}
	
	@GetMapping("/loadtotalprice/{customerQuantitiesPurchased}")
	public double update3(@PathVariable("customerQuantitiesPurchased") int customerQuantitiesPurchased) {
		System.out.println(customerQuantitiesPurchased);

		double totalprice = bikeService.getTheTotalPrice(customerQuantitiesPurchased,modelprice);
		
		return totalprice;
	}
}
