package com.mindtree.BikeComModelApp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.BikeComModelApp.entity.Company;
@Repository
public interface CompanyRepository extends JpaRepository<Company, Integer> {

}
