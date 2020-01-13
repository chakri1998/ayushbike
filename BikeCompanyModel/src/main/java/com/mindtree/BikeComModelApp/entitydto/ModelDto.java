package com.mindtree.BikeComModelApp.entitydto;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.mindtree.BikeComModelApp.entity.Company;
import com.mindtree.BikeComModelApp.entity.Customer;

public class ModelDto {
	private int modelId;
	private String modelName;
	@JsonIgnoreProperties("customerModel")
	private Set<CustomerDto> modelCustomers;
	@JsonIgnoreProperties("companyModel")
	private CompanyDto modelCompany;
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
	public Set<CustomerDto> getModelCustomers() {
		return modelCustomers;
	}
	public void setModelCustomers(Set<CustomerDto> modelCustomers) {
		this.modelCustomers = modelCustomers;
	}
	public CompanyDto getModelCompany() {
		return modelCompany;
	}
	public void setModelCompany(CompanyDto modelCompany) {
		this.modelCompany = modelCompany;
	}
	
}
