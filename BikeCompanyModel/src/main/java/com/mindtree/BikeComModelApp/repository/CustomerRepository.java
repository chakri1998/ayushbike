package com.mindtree.BikeComModelApp.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.BikeComModelApp.entity.Customer;
@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer> {
	
	 Optional<Customer> findBycustomerEmail(String email);
	 Optional<Customer> findBycustomerPassword(String password); 
}
