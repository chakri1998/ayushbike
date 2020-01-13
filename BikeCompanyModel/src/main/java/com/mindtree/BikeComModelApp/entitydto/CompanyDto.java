package com.mindtree.BikeComModelApp.entitydto;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.mindtree.BikeComModelApp.entity.Model;

public class CompanyDto {
	private int companyId;
	private String companyName;
	@JsonIgnoreProperties("modelCompany")
	private Set<ModelDto> companyModel;
	public int getCompanyId() {
		return companyId;
	}
	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public Set<ModelDto> getCompanyModel() {
		return companyModel;
	}
	public void setCompanyModel(Set<ModelDto> companyModel) {
		this.companyModel = companyModel;
	}
	
}
