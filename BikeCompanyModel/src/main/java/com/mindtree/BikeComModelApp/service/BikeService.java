package com.mindtree.BikeComModelApp.service;

import java.sql.Date;
import java.util.Set;

import com.mindtree.BikeComModelApp.entity.Company;
import com.mindtree.BikeComModelApp.entity.Customer;
import com.mindtree.BikeComModelApp.entitydto.CustomerDto;
import com.mindtree.BikeComModelApp.entitydto.ModelDto;
import com.mindtree.BikeComModelApp.exception.ServiceException;

public interface BikeService {

	boolean getLoginValidateded(String userEmail, String userpassword) throws ServiceException;

	Set<ModelDto> getAllModelForCompany(int id);

	Set<Company> getAllCompanies();

	void buyAVehicleCredentials(int customerModel, double totalPrice, int customerQuantitiesPurchased,
			Date customerOrderDate, Date customerDeliveryDate, String userEmail1);

	void addACustomer(Customer customer);

	double getThePriceOfModel(int id);

	double getTheTotalPrice(int customerQuantitiesPurchased, double modelprice);

	Set<Customer> getAllTheCustomers();

	Customer getACustomer(int cusid);

	Set<CustomerDto> getTheCustomerofModel(int id);

	Set<Customer> getAllCustomerModel(int modelid);

	double getAllCompanyRevenueGenerated(int comid);

}
