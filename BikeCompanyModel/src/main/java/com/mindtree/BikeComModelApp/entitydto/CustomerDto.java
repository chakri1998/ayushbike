package com.mindtree.BikeComModelApp.entitydto;

import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.mindtree.BikeComModelApp.entity.Model;

public class CustomerDto {
	private int customerId;
	private String customerName;
	private String customerhobbies;
	private String customerGender;
	private long customerPhoneNumber;
	private String customerPassword;
	private Date customerOrderDate;
	private Date customerDeliveryDate;
	private int customerQuantitiesPurchased;
	private int numberOfDays;
	private double totalPrice;
@JsonIgnoreProperties("modelCustomers")
	private ModelDto customerModel;
public int getCustomerId() {
	return customerId;
}
public void setCustomerId(int customerId) {
	this.customerId = customerId;
}
public String getCustomerName() {
	return customerName;
}
public void setCustomerName(String customerName) {
	this.customerName = customerName;
}
public String getCustomerhobbies() {
	return customerhobbies;
}
public void setCustomerhobbies(String customerhobbies) {
	this.customerhobbies = customerhobbies;
}
public String getCustomerGender() {
	return customerGender;
}
public void setCustomerGender(String customerGender) {
	this.customerGender = customerGender;
}
public long getCustomerPhoneNumber() {
	return customerPhoneNumber;
}
public void setCustomerPhoneNumber(long customerPhoneNumber) {
	this.customerPhoneNumber = customerPhoneNumber;
}
public String getCustomerPassword() {
	return customerPassword;
}
public void setCustomerPassword(String customerPassword) {
	this.customerPassword = customerPassword;
}
public Date getCustomerOrderDate() {
	return customerOrderDate;
}
public void setCustomerOrderDate(Date customerOrderDate) {
	this.customerOrderDate = customerOrderDate;
}
public Date getCustomerDeliveryDate() {
	return customerDeliveryDate;
}
public void setCustomerDeliveryDate(Date customerDeliveryDate) {
	this.customerDeliveryDate = customerDeliveryDate;
}
public int getCustomerQuantitiesPurchased() {
	return customerQuantitiesPurchased;
}
public void setCustomerQuantitiesPurchased(int customerQuantitiesPurchased) {
	this.customerQuantitiesPurchased = customerQuantitiesPurchased;
}
public int getNumberOfDays() {
	return numberOfDays;
}
public void setNumberOfDays(int numberOfDays) {
	this.numberOfDays = numberOfDays;
}
public double getTotalPrice() {
	return totalPrice;
}
public void setTotalPrice(double totalPrice) {
	this.totalPrice = totalPrice;
}
public ModelDto getCustomerModel() {
	return customerModel;
}
public void setCustomerModel(ModelDto customerModel) {
	this.customerModel = customerModel;
}

}
