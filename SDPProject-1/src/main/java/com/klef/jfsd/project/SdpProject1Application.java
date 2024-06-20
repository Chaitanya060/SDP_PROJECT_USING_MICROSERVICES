package com.klef.jfsd.project;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "com.klef.jfsd.project")
public class SdpProject1Application {

	public static void main(String[] args) {
		SpringApplication.run(SdpProject1Application.class, args);
		System.out.println("SDP3");
	}

}
