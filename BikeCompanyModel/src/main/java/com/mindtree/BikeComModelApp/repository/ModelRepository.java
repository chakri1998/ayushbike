package com.mindtree.BikeComModelApp.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.BikeComModelApp.entity.Customer;
import com.mindtree.BikeComModelApp.entity.Model;
@Repository
public interface ModelRepository extends JpaRepository<Model, Integer>{
	 Optional<Model> findBymodelName(String modelName); 
}
