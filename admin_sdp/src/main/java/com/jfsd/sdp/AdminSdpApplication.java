package com.jfsd.sdp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.jfsd.sdp"})
public class AdminSdpApplication {

	public static void main(String[] args) {
		SpringApplication.run(AdminSdpApplication.class, args);
		System.out.println("Hello Admin Service !!!..");
		
	}

}
