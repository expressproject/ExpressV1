package com.exp.v1.commonController;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserProfileManagementRestController {
@RequestMapping(value="/")
	public String getUserProfile() {
	
		return "Ashish2";
		
	}
}
