package com.mindtree.BikeComModelApp.controller;

import org.springframework.boot.autoconfigure.security.oauth2.client.EnableOAuth2Sso;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
 
@Configuration
@EnableOAuth2Sso
@EnableWebSecurity
public class BikeApplicationSecurity extends WebSecurityConfigurerAdapter {
    
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable()
             .antMatcher("/**")
	      .authorizeRequests()
       .antMatchers("/", "/callback","/login","/GotoOption","/buyavehicle","/buyavehiclelink","/addcustomer","/customerdata","/modeldata","/getCustomerDetailsbyid","/getCustomerDetailsforModel","/getAllCompanyRevenueGenerated","/surveydata","/rest/loadmodel/*","/rest/loadprice/*","/rest/loadcustomer/*","/rest/loadtotalprice/*")
	        .permitAll()
	     .anyRequest()
      .authenticated();
    }
}

