package com.mindtree.BikeComModelApp.controller;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mindtree.BikeComModelApp.entity.Customer;
import com.mindtree.BikeComModelApp.exception.ServiceException;
import com.mindtree.BikeComModelApp.service.BikeService;

@Controller
public class BikeController {
	String userEmail1;
	
@Autowired
BikeService bikeService;

//@RequestMapping("/")
//public String login() {
//    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//    System.out.println(auth.getPrincipal());
//    return "index";
//}
//
@RequestMapping("/callback")
public String callback() {
    System.out.println("redirecting to home page");
    return "options";
}



@RequestMapping("/")
public String index11() {
	return "home";
}
@RequestMapping("/login")
public String index1() {
	return "login";
}
@RequestMapping("/GotoOption")
public String index2(@RequestParam("userEmail")String userEmail,@RequestParam("userpassword") String userpassword ) throws ServiceException
{
	
	boolean b=bikeService.getLoginValidateded(userEmail,userpassword);
	if(!b)
	{
		return "error";
	}
	else {
		userEmail1=userEmail;
	return "options";
	}
}
@RequestMapping("/buyavehicle")
public String index14(Model model) {
	model.addAttribute("companyList",bikeService.getAllCompanies() );
	return "buyavehicle";
}
@RequestMapping("/buyavehiclelink")
public String index3(@RequestParam("customerCompany")String customerCompany,@RequestParam("customerModelvalue")int customerModel,
		@RequestParam("totalprice")double totalPrice,@RequestParam("customerQuantitiesPurchased")int customerQuantitiesPurchased,
		@RequestParam("customerOrderDate")Date customerOrderDate,@RequestParam("customerDeliveryDate")Date customerDeliveryDate,Model
		model) {
	System.out.println(userEmail1);
	bikeService.buyAVehicleCredentials(customerModel,totalPrice,customerQuantitiesPurchased,customerOrderDate,customerDeliveryDate,userEmail1);
	return "options";
}

@RequestMapping("/addcustomer")
public String index4(Customer customer) {
	if(customer.getCustomerName()==null)
	{
		return "addcustomer";
	}
	bikeService.addACustomer(customer);
	return "addcustomer";
}
@RequestMapping("/customerdata")
public String index5(Model model) {
	model.addAttribute("customerList", bikeService.getAllTheCustomers());
	return "customerdata";
}
@RequestMapping("/modeldata")
public String index7(Model model) {
	model.addAttribute("companyList",bikeService.getAllCompanies() );
	return "modeldata";
}
@RequestMapping("/getCustomerDetailsbyid")
public String index6(@RequestParam("cusid") int cusid,Model model) {
	
	Customer customer=bikeService.getACustomer(cusid);
	model.addAttribute("modelid", customer.getCustomerModel().getModelId());
	model.addAttribute("modelname", customer.getCustomerModel().getModelName());
	model.addAttribute("companyname", customer.getCustomerModel().getModelCompany().getCompanyName());
	model.addAttribute("modelprice", customer.getCustomerModel().getModelPrice());
	model.addAttribute("quantitypurchase", customer.getCustomerQuantitiesPurchased());
	model.addAttribute("numofdays", customer.getNumberOfDays());
	return "customerdata";
}
@RequestMapping("/getCustomerDetailsforModel")
public String index8(@RequestParam("modelid") int modelid,Model model) {
	model.addAttribute("companyList",bikeService.getAllCompanies() );
	model.addAttribute("customerListModel", bikeService.getAllCustomerModel(modelid));
	return "modeldata";
}
@RequestMapping("/getAllCompanyRevenueGenerated")
public String index9(@RequestParam("comid") int comid,Model model) {
	
	model.addAttribute("revenue", bikeService.getAllCompanyRevenueGenerated(comid));
	model.addAttribute("companyList",bikeService.getAllCompanies());
	return "surveydata";
}
@RequestMapping("/surveydata")
public String index10(Model model) {
	
	model.addAttribute("companyList",bikeService.getAllCompanies());
	return "surveydata";
}
}
