package com.mindtree.BikeComModelApp.service.serviceimpl;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Period;
import java.time.ZoneId;
import java.util.GregorianCalendar;
import java.util.Set;
import java.util.stream.Collectors;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.BikeComModelApp.entity.Company;
import com.mindtree.BikeComModelApp.entity.Customer;
import com.mindtree.BikeComModelApp.entity.Model;
import com.mindtree.BikeComModelApp.entitydto.CustomerDto;
import com.mindtree.BikeComModelApp.entitydto.ModelDto;
import com.mindtree.BikeComModelApp.exception.ServiceException;
import com.mindtree.BikeComModelApp.repository.CompanyRepository;
import com.mindtree.BikeComModelApp.repository.CustomerRepository;
import com.mindtree.BikeComModelApp.repository.ModelRepository;
import com.mindtree.BikeComModelApp.service.BikeService;
@Service
public class BikeServiceImpl implements BikeService {
ModelMapper modelMapper=new ModelMapper();
	@Autowired CustomerRepository customerRepository;
	@Autowired CompanyRepository companyRepository;
	@Autowired ModelRepository modelRepository;
	@Override
	public boolean getLoginValidateded(String userEmail, String userpassword) throws ServiceException {
		if(!customerRepository.findBycustomerEmail(userEmail).isPresent())
		{
			throw new ServiceException("no such user email exist");
		}
		if(!customerRepository.findBycustomerPassword(userpassword).isPresent())
		{
			throw new ServiceException("no such user password exist");
		}
		return true;
	}
	@Override
	public Set<ModelDto> getAllModelForCompany(int id) {
		return companyRepository.findById(id).get().getCompanyModel().stream().map(entity->convertentityToDto(entity))
				.collect(Collectors.toSet());
	}
	@Override
	public Set<Company> getAllCompanies() {
		return companyRepository.findAll().stream().collect(Collectors.toSet());
	}
	@Override
	public void buyAVehicleCredentials(int customerModel, double totalPrice, int customerQuantitiesPurchased,
			Date customerOrderDate, Date customerDeliveryDate,String email) {
		System.out.println("  email"+email);
	Customer customer=customerRepository.findBycustomerEmail(email).get();
		
	
   int daysdiff=0;
   long diff=customerDeliveryDate.getTime()-customerOrderDate.getTime();
   long diffdays=diff/(24*60*60*1000)+1;
   daysdiff=(int)diffdays;
   
		
		customer.setCustomerModel(modelRepository.findById(customerModel).get());
		customer.setTotalPrice(totalPrice);
		customer.setCustomerDeliveryDate(customerDeliveryDate);
		customer.setCustomerOrderDate(customerOrderDate);
		customer.setCustomerQuantitiesPurchased(customerQuantitiesPurchased);
		
		customer.setNumberOfDays(daysdiff);
		customerRepository.saveAndFlush(customer);
		
	}
	
	@Override
	public void addACustomer(Customer customer) {
		customerRepository.save(customer);
	}
	@Override
	public double getThePriceOfModel(int id) {
		return modelRepository.findById(id).get().getModelPrice();
	}
	@Override
	public double getTheTotalPrice(int customerQuantitiesPurchased, double modelprice) {
		
		return customerQuantitiesPurchased*modelprice;
	}
	public ModelDto convertentityToDto(Model model)
	{
		return modelMapper.map(model, ModelDto.class);
	}
	public CustomerDto convertentityToDto(Customer customer)
	{
		return modelMapper.map(customer, CustomerDto.class);
	}
	@Override
	public Set<Customer> getAllTheCustomers() {
		return customerRepository.findAll().stream().collect(Collectors.toSet());
	}
	@Override
	public Customer getACustomer(int cusid) {
		return customerRepository.findById(cusid).get();
	}
	@Override
	public Set<CustomerDto> getTheCustomerofModel(int id) {
		return 	modelRepository.findById(id).get().getModelCustomers().stream().map(entity->convertentityToDto(entity))
		.collect(Collectors.toSet());
		
	}
	@Override
	public Set<Customer> getAllCustomerModel(int modelid) {
		return modelRepository.findById(modelid).get().getModelCustomers();
	}
	@Override
	public double getAllCompanyRevenueGenerated(int comid) {
		
		/*
		 * companyRepository.findById(comid).get().getCompanyModel().stream().forEach(
		 * model->{ double totalprice=0; model.getModelCustomers().forEach(cus->{
		 * totalprices+=cus.getTotalPrice(); }); } );
		 */
		double totalprice = 0;
		for(Model model:companyRepository.findById(comid).get().getCompanyModel())
		{
			for(Customer customer:model.getModelCustomers())
			{
				totalprice+=customer.getTotalPrice();
			}
		}
		
		return totalprice;
	}
}
