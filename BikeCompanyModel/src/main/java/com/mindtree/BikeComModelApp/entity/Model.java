package com.mindtree.BikeComModelApp.entity;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Model {
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
private int modelId;
private String modelName;
private double modelPrice;
@OneToMany(cascade = CascadeType.ALL,mappedBy = "customerModel")
private Set<Customer> modelCustomers;
@ManyToOne(cascade = CascadeType.PERSIST)
private Company modelCompany;
public int getModelId() {
	return modelId;
}
public void setModelId(int modelId) {
	this.modelId = modelId;
}
public String getModelName() {
	return modelName;
}
public void setModelName(String modelName) {
	this.modelName = modelName;
}
public Set<Customer> getModelCustomers() {
	return modelCustomers;
}
public void setModelCustomers(Set<Customer> modelCustomers) {
	this.modelCustomers = modelCustomers;
}
public Company getModelCompany() {
	return modelCompany;
}
public void setModelCompany(Company modelCompany) {
	this.modelCompany = modelCompany;
}
public double getModelPrice() {
	return modelPrice;
}
public void setModelPrice(double modelPrice) {
	this.modelPrice = modelPrice;
}

}
