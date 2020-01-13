package com.mindtree.BikeComModelApp.entity;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Company {
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
private int companyId;
private String companyName;
@OneToMany(cascade = CascadeType.ALL,mappedBy = "modelCompany")
private Set<Model> companyModel;
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
public Set<Model> getCompanyModel() {
	return companyModel;
}
public void setCompanyModel(Set<Model> companyModel) {
	this.companyModel = companyModel;
}

}
